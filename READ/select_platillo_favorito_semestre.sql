/*
*Muestra el platillo preferido agrupandolos por nombre y contando la cantidad de votos positivos
*dentro del rango de 6 meses en la fecha indicada
*/
SELECT Platillo.Nombre, COUNT(TipoVoto.Tipo) AS Likes
FROM VotoPlatillo
INNER JOIN Platillo
	ON VotoPlatillo.IdPlatillo = Platillo.IdPlatillo
INNER JOIN TipoVoto
	ON TipoVoto.IdTipoVoto = VotoPlatillo.IdTipoVoto
WHERE Tipo LIKE 'Positivo' AND VotoPlatillo.Fecha BETWEEN '2018-09-05 00:00:00' AND DATETIME('2018-09-05 00:00:00', '+6 month')
GROUP BY Nombre
ORDER BY Likes DESC
LIMIT 1;
