/*
* Muestra el horario mas frecuentado por medio del horario mas presentando en las compras
* de los estudiantes, agrupandolos por la Hora, ordenandolos y mostrando el resultado con mayor conteo
*/
SELECT 			Horario.Hora, COUNT(Estudiante.IdEstudiante) AS Clientes
FROM 				Compra
INNER JOIN 	Estudiante
ON 					Compra.IdEstudiante = Estudiante.IdEstudiante
INNER JOIN 	Horario
ON 					Compra.IdHorario = Horario.IdHorario
GROUP BY 		Horario.Hora
ORDER BY 		Clientes DESC
LIMIT 1;
