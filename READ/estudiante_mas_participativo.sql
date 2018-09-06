SELECT 		Nombre, Count(*) AS Votos
FROM 		Estudiante
JOIN 		VotoPlatillo
ON 			Estudiante.IdEstudiante=VotoPlatillo.IdEstudiante
JOIN 		VotoRestaurante
ON 			Estudiante.IdEstudiante=VotoRestaurante.IdEstudiante
GROUP BY 	Nombre
ORDER BY 	Votos DESC
LIMIT 		1;
