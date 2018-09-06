SELECT Platillo.Nombre, COUNT(TipoVoto.Tipo) AS Likes
FROM VotoPlatillo
INNER JOIN Platillo
	ON VotoPlatillo.IdPlatillo = Platillo.IdPlatillo
INNER JOIN TipoVoto
	ON TipoVoto.IdTipoVoto = VotoPlatillo.IdTipoVoto
WHERE Tipo LIKE 'Positivo'
GROUP BY Nombre
ORDER BY Likes DESC
LIMIT 1;