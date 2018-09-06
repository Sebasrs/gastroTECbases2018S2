/*
*Muestra el platillo favorito del dia, contando la cantidad de votos realizados
*ese dia, ordenandolos y mostrando el resultado con mayor conteo
*/
SELECT 	 	Platillo.Nombre, COUNT(*) AS Votos
FROM 	 		VotoPlatillo
JOIN 		 	Platillo
ON 		 		VotoPlatillo.IdPlatillo=Platillo.IdPlatillo
JOIN 	 		TipoVoto
ON 		 		TipoVoto.IdTipoVoto=VotoPlatillo.IdTipoVoto
WHERE 	 	TipoVoto.Tipo="Positivo" AND
		 			VotoPlatillo.Fecha BETWEEN "2018-06-18 00:00:00" AND "2018-06-18 23:59:59"
GROUP BY 	Platillo.Nombre
ORDER BY 	Votos DESC
LIMIT	 		1;
