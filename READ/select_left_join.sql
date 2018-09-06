/*
*Muestra los estudiantes que no han realizado y los que si han realizado
*compras en el restaurante con el id = 1
*/
SELECT DISTINCT Estudiante.Nombre,
CASE
	WHEN Compra.IdCompra IS NULL THEN 'Nunca ha comprado'
	ELSE 'Ha comprado'
END AS EstatusCompra
FROM Estudiante
LEFT JOIN Compra
	ON Compra.IdEstudiante = Estudiante.IdEstudiante
	AND Compra.IdRestaurante = 1
ORDER BY EstatusCompra;
