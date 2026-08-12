USE orionDatabase;

-- Consultas basicas (Maximo 2)

-- Motrar el tipo, rango de longitud y estado del instrumento 
SELECT tipo, rango_longitud, estado
FROM Instrumento
ORDER BY rango_longitud DESC;

-- Mostrar los equipos de trabajo
SELECT nombre, area_cientifica, fecha_creacion 
FROM Equipo
ORDER BY fecha_creacion DESC;

-- Consultas intermedias 

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

