USE orionDatabase;

-- =================================================================================================
-- Consultas basicas (Maximo 2)
-- ==================================================================================================

-- Motrar el tipo, rango de longitud y estado del instrumento 
SELECT 
    tipo, 
    (longitud_max - longitud_min) AS rango_longitud, 
    estado
FROM Instrumento
ORDER BY rango_longitud DESC;

-- Mostrar los equipos de trabajo
SELECT nombre, area_cientifica, fecha_creacion 
FROM Equipo
ORDER BY fecha_creacion DESC;

-- ==================================================================================================
-- Consultas intermedias 
-- ==================================================================================================

-- Perfil de investigadores Senior que lideran equipos
SELECT I.nombre, I.apellido, E.nombre AS nombre_equipo, S.numero_publicaciones 
FROM Investigador I
JOIN Senior S ON I.id_investigador = S.id_investigador
JOIN Equipo E ON E.codigo = I.codigo
ORDER BY numero_publicaciones DESC;

-- 

SELECT DS.nombre AS Nombre_DataSet, COUNT(O.codigo_observacion) AS Cantidad_Observaciones, SUM(O.tamano_byte) AS Tamano_acumalado
FROM Dataset DS
JOIN Compone C ON C.id_dataset = DS.id_dataset
JOIN Observacion O ON O.codigo_observacion = C.codigo_observacion
GROUP BY DS.nombre, DS.id_dataset;

-- Obtener la cantidad de convenios firmados y la cantidad de organizaciones colaboradoras según su país de origen

SELECT O.pais, COUNT(C.id_convenio) AS convenios_firmados, COUNT(DISTINCT O.id_organizacion) AS cantidad_organizaciones
FROM Convenio C
JOIN Organizacion O ON O.id_organizacion = C.id_organizacion
GROUP BY O.pais;

-- Identificar las arquitecturas de modelos de IA que han presentado experimentos fallidos, detallando los hiperparámetros exactos

SELECT 
    M.arquitectura,
    Exp.id_experimento,
    Exp.fecha_hora_inicio,
    H.nombre_hiperparametro,
    H.valor
FROM Modelo_IA M
JOIN Experimento Exp ON M.id_modelo = Exp.id_modelo
JOIN Hiperparametros H ON Exp.id_experimento = H.id_experimento
WHERE Exp.estado = 'fallido'
ORDER BY M.arquitectura, Exp.fecha_hora_inicio DESC;

-- Obtener un reporte de los datasets que contienen observaciones clasificadas con calidad 'alta', calculando la cantidad de estas observaciones y el tamaño total que ocupan expresado en Gigabytes.

SELECT 
    D.nombre AS nombre_dataset, 
    COUNT(O.codigo_observacion) AS cantidad_obs_alta_calidad,
    ROUND(SUM(O.tamano_byte) / 1073741824, 2) AS tamano_total_gb
FROM Dataset D
JOIN Compone C ON D.id_dataset = C.id_dataset
JOIN Observacion O ON C.codigo_observacion = O.codigo_observacion
WHERE O.calidad = 'alta'
GROUP BY D.nombre, D.id_dataset
ORDER BY tamano_total_gb DESC;

-- Obtener el ranking de los investigadores con mayor tiempo total en experimentos completados junto a los experimentos realizados y su equipo.

SELECT 
    Inv.nombre, 
    Inv.apellido, 
    Eq.nombre AS nombre_equipo,
    COUNT(Exp.id_experimento) AS cantidad_experimentos_completados,
    SUM(TIMESTAMPDIFF(HOUR, Exp.fecha_hora_inicio, Exp.fecha_hora_fin)) AS horas_totales_ejecucion
FROM Investigador Inv
JOIN Equipo Eq ON Inv.codigo = Eq.codigo
JOIN Experimento Exp ON Inv.id_investigador = Exp.id_investigador
WHERE Exp.estado = 'completado'
GROUP BY Inv.id_investigador, Inv.nombre, Inv.apellido, Eq.nombre
ORDER BY horas_totales_ejecucion DESC;

-- Para cada equipo mostrar cuantos investigadores lo integran, quien es su lider, cuantas investigaciones tienen asociadas y su area cientifica

SELECT E.codigo AS numero_equipo,
	E.area_cientifica,
	COUNT(DISTINCT I.id_investigador) AS cantidad_integrantes, 
	CONCAT(ISenior.nombre, ' ', ISenior.apellido) AS lider,
	COUNT(DISTINCT Inv.codigo_investigacion) AS numero_investigaciones
FROM Equipo E
JOIN Investigador I ON E.codigo = I.codigo
LEFT JOIN SENIOR S ON S.codigo_equipo_liderado = E.codigo
LEFT JOIN Investigador ISenior ON S.id_investigador = ISenior.id_investigador
LEFT JOIN Investigacion Inv ON E.codigo = Inv.codigo
GROUP BY E.codigo, E.area_cientifica
ORDER BY E.codigo;

-- Obtener la precision maxima y promedio de los experimentos completados por cada modelo de IA y que hayan sido probados en mas de un experimento

SELECT M.id_modelo,
	M.arquitectura,
    M.tarea_objetivo,
    COUNT(E.id_experimento) AS total_experimentos,
    MAX(E.desempeno_accuracy) AS accuracy_maxima,
    ROUND(AVG(E.desempeno_accuracy),2) AS promedio_accuracy
FROM Modelo_ia M
JOIN Experimento E ON E.id_modelo = M.id_modelo
WHERE E.estado = 'completado'
GROUP BY M.id_modelo, M.arquitectura, M.tarea_objetivo
HAVING total_experimentos > 1
ORDER BY promedio_accuracy DESC;

-- ==================================================================================================
-- Consultas avanzadas
-- ==================================================================================================

-- Obtener los experimentos que lograron un rendimiento (accuracy) estrictamente superior al promedio global de todos los experimentos completados y su responsable

SELECT E.id_experimento,
	E.desempeno_accuracy AS accuracy,
    CONCAT(I.nombre, ' ', I.apellido) AS responsable
FROM Experimento E
JOIN Investigador I ON E.id_investigador = I.id_investigador
WHERE E.estado = 'completado'
AND E.desempeno_accuracy > (
	SELECT AVG(desempeno_accuracy)
	FROM Experimento E
    WHERE E.estado = 'completado'
    )
GROUP BY E.id_Experimento, E.desempeno_accuracy
ORDER BY accuracy DESC;



	
	



