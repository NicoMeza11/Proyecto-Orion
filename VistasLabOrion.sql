USE orionDatabase;

-- Para cada equipo mostrar cuantos investigadores lo integran, quien es su lider, cuantas investigaciones tienen asociadas y su area cientifica

CREATE VIEW vista_resumen_equipos AS
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

-- Resume el rendimiento y estado completado de los modelos de IA en cada investigación.

CREATE VIEW vista_resumen_investigacion_modelos AS
SELECT I.titulo, M.arquitectura, E.desempeno_accuracy, E.estado
FROM Investigacion I
JOIN Experimento E ON E.codigo_investigacion = I.codigo_investigacion
JOIN Modelo_IA M ON M.id_modelo = E.id_modelo
WHERE E.estado = 'completado'
ORDER BY E.desempeno_accuracy DESC;

-- Muestra los convenios que están actualmente vigentes junto a su organización y el investigador responsable

CREATE VIEW vista_convenios_vigentes AS
SELECT 
    C.id_convenio,
    O.nombre_org AS organizacion,
    O.tipo AS tipo_organizacion,
    CONCAT(I.nombre, ' ', I.apellido) AS responsable_senior,
    D.nombre AS dataset_asociado,
    C.nivel_acceso,
    C.fecha_inicio,
    C.fecha_fin
FROM Convenio C
JOIN Organizacion O ON C.id_organizacion = O.id_organizacion
JOIN Senior S ON C.id_investigador = S.id_investigador
JOIN Investigador I ON S.id_investigador = I.id_investigador
JOIN Dataset D ON C.id_dataset = D.id_dataset
WHERE C.fecha_fin IS NULL OR C.fecha_fin >= CURDATE()
ORDER BY C.fecha_inicio DESC;