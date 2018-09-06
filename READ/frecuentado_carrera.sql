SELECT Estudiante.Carrera, COUNT(Estudiante.IdEstudiante) AS Estudiantes
FROM Compra
INNER JOIN Estudiante
	ON Compra.IdEstudiante = Estudiante.IdEstudiante
GROUP BY Estudiante.Carrera
ORDER BY Estudiantes DESC
LIMIT 1;