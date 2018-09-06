SELECT DISTINCT Estudiante.Nombre,
CASE
	WHEN Compra.IdCompra IS NULL THEN 'Nunca ha comprado'
	ELSE 'Ha comprado'
END AS EstatusCompra
FROM Estudiante
LEFT JOIN Compra
	ON Compra.IdEstudiante = Estudiante.IdEstudiante
	AND Compra.IdRestaurante = 1