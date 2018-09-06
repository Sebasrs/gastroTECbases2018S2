SELECT Platillo.Nombre, COUNT(TipoVoto.Tipo) AS Likes
FROM VotoPlatillo
INNER JOIN Platillo
	ON VotoPlatillo.IdPlatillo = Platillo.IdPlatillo
INNER JOIN TipoVoto
	ON TipoVoto.IdTipoVoto = VotoPlatillo.IdTipoVoto
WHERE Tipo LIKE 'Positivo' AND VotoPlatillo.Fecha BETWEEN '20180905 00:00:00' AND '20180912 11:59:59'
GROUP BY Nombre
ORDER BY Likes DESC
LIMIT 1;