/*
*Toma al estudiante mas participativo por los votos realizados en los platillos
* y restaurantes y dando unicamente el resultado mas alto
*/
SELECT 		Nombre, Count(*) AS Votos
FROM 		  Estudiante
JOIN 		  VotoPlatillo
ON 			  Estudiante.IdEstudiante=VotoPlatillo.IdEstudiante
JOIN 		  VotoRestaurante
ON 			  Estudiante.IdEstudiante=VotoRestaurante.IdEstudiante
GROUP BY 	Nombre
ORDER BY 	Votos DESC
LIMIT 		1;
