/*
*Muestra el rating de los restaurantes utilizando la formula indica
*y agrupandolos por su nombre
*/
SELECT Restaurante.Nombre,
((COUNT(CASE WHEN TipoVoto.Tipo LIKE 'Positivo' THEN TipoVoto.IdTipoVoto END))*1.0
-(COUNT(CASE WHEN TipoVoto.Tipo LIKE 'Negativo' THEN TipoVoto.IdTipoVoto END))*1.0)
/(COUNT(TipoVoto.IdTipoVoto)) AS Rating
FROM VotoRestaurante
INNER JOIN TipoVoto
	ON VotoRestaurante.IdTipoVoto = TipoVoto.IdTipoVoto
INNER JOIN Restaurante
	ON VotoRestaurante.IdRestaurante = Restaurante.IdRestaurante
GROUP BY Restaurante.Nombre;
