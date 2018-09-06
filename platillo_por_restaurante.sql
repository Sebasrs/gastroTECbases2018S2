SELECT	 Platillo.Nombre, COUNT(*) AS Votos
FROM 	 VotoPlatillo
JOIN 	 Platillo
ON 		 VotoPlatillo.IdPlatillo=Platillo.IdPlatillo
JOIN 	 Restaurante
ON 		 Restaurante.IdRestaurante=VotoPlatillo.IdRestaurante
JOIN 	 TipoVoto
ON 		 TipoVoto.IdTipoVoto=VotoPlatillo.IdTipoVoto
WHERE 	 Restaurante.Nombre="Ave" AND
		 NOT TipoVoto.Tipo="Negativo"  	
GROUP BY Platillo.Nombre
ORDER BY Votos DESC
LIMIT 	 1;




