use orionDatabase;

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