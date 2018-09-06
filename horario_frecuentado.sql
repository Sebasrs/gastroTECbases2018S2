SELECT Horario.Hora, COUNT(Estudiante.IdEstudiante) AS Clientes
FROM Compra
INNER JOIN Estudiante
	ON Compra.IdEstudiante = Estudiante.IdEstudiante
INNER JOIN Horario
	ON Compra.IdHorario = Horario.IdHorario
GROUP BY Horario.Hora
ORDER BY Clientes DESC
LIMIT 1;