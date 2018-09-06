/*
*Toma la carrera que mas frecuenta el restaurante agrupando por carrera y contando
*los estudiantes, ordenandoslos y mostrando el primer resultado
*/
SELECT 			Estudiante.Carrera, COUNT(Estudiante.IdEstudiante) AS Estudiantes
FROM 				Compra
INNER JOIN 	Estudiante
ON 					Compra.IdEstudiante = Estudiante.IdEstudiante
GROUP BY 		Estudiante.Carrera
ORDER BY 		Estudiantes DESC
LIMIT 1;
