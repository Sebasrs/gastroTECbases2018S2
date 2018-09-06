SELECT 	 Platillo.Nombre, COUNT(*) AS Votos
FROM 	 VotoPlatillo
JOIN 	 Platillo
ON 		 VotoPlatillo.IdPlatillo=Platillo.IdPlatillo
JOIN 	 TipoVoto
ON 		 TipoVoto.IdTipoVoto=VotoPlatillo.IdTipoVoto
WHERE 	 TipoVoto.Tipo="Positivo" AND 
		 VotoPlatillo.Fecha BETWEEN "20180618 00:00:00 AM" AND "20180618 11:59:59 PM" 
GROUP BY Platillo.Nombre
ORDER BY Votos ASC
LIMIT	 1;
