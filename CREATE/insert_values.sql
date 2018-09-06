--Crea valores de prueba para mostrar el funcionamiento de las consultas

INSERT INTO Restaurante(Nombre, Ubicacion)
VALUES	('Cafe 7', 'San Jose'),
		('Pollo Sabroso', 'Cartago'),
		('Ave', 'Heredia'),
		('Nuestra Tierra', 'Guanacaste'),
		('Soda Tapia', 'Limon');
		
INSERT INTO Estudiante(Nombre, Carrera)
VALUES	("Jose","Computadores"),
		("Raul","Computadores"),
		("Luis","Computadores"),
		("Mario","Electronica"),
		("Andres","Electronica"),
		("Maria","Electronica"),
		("Angela","Mecatronica"),
		("Sebastian","Mecatronica"),
		("Hector","Mecatronica"),
		("Katherine","Diseño Industrial"),
		("Bryan","Diseño Industrial"),
		("Andrea","Diseño Industrial");
		
INSERT INTO Platillo(Nombre, Precio)
VALUES	("Gallo Pinto", 300),
		("Pollo al horno", 600),
		("Arroz con mariscos", 600),
		("Papas con chorizo", 500),
		("Pescado", 600),
		("Garbanzos", 400),
		("Cereal", 500),
		("Arroz Cantones", 600),
		("Pollo en Salsa", 800);

INSERT INTO TipoVoto(Tipo)
VALUES 	("Positivo"),
		("Negativo");
		
INSERT INTO Horario(Hora)
VALUES 	("Desayuno"),
		("Almuerzo"),
		("Cena");
		
INSERT INTO Menu(idHorario, idRestaurante)
VALUES	(1,1),
		(1,2),
		(2,3),
		(2,4),
		(3,5),
		(3,1);
		
INSERT INTO Compra(idPlatillo, idHorario, idEstudiante, idRestaurante)
VALUES 	(1,1,1,1),
		(2,2,2,1),
		(3,3,3,2),
		(4,1,4,3),
		(5,2,5,1),
		(6,3,6,1),
		(7,1,7,2),
		(8,2,8,4),
		(9,3,9,5),
		(1,1,10,5),
		(2,2,11,2),
		(3,3,12,3),
		(4,1,1,1),
		(5,2,2,4),
		(6,3,3,3);
		
INSERT INTO VotoRestaurante(idTipoVoto, idRestaurante, idEstudiante, Fecha)
VALUES	(1,1,1,'2018-06-18 10:34:09'),
		(1,1,1,'2018-06-18 07:34:09'),
		(2,2,2,'2018-06-18 10:34:09'),
		(1,3,3,'2018-06-18 10:34:09'),
		(2,4,4,'2018-01-18 10:34:09'),
		(1,5,5,'2018-01-18 10:34:09'),
		(2,1,6,'2018-01-18 10:34:09'),
		(1,2,7,'2018-05-18 11:30:09'),
		(2,3,8,'2018-05-18 10:23:13'),
		(1,4,9,'2018-05-18 12:15:55'),
		(2,5,10,'2015-06-18 10:34:09'),
		(1,1,11,'2015-06-18 10:34:09'),
		(2,2,12,'2015-06-18 10:34:09'),
		(1,3,1,'2018-09-05 03:10:40'),
		(2,4,2,'2018-09-05 04:20:50'),
		(2,4,2,'2018-09-05 05:37:50'),
		(1,5,3,'2018-09-05 05:30:10');
	
INSERT INTO VotoPlatillo(idPlatillo, idTipoVoto, idRestaurante, idEstudiante, Fecha)
VALUES	(1,1,1,1,'2018-06-18 10:34:09'),
		(1,1,1,1,'2018-06-18 10:34:09'),
		(2,2,2,2,'2018-06-18 10:34:09'),
		(3,1,3,3,'2018-06-18 10:34:09'),
		(3,1,3,3,'2018-06-18 10:34:09'),
		(3,1,3,3,'2018-06-18 10:34:09'),
		(3,1,3,3,'2018-06-18 10:34:09'),
		(4,2,4,4,'2018-01-18 10:34:09'),
		(5,1,5,5,'2018-01-18 10:34:09'),
		(6,2,1,6,'2018-01-18 10:34:09'),
		(7,1,2,7,'2018-05-18 11:30:09'),
		(4,1,1,7,'2018-10-03 00:00:00'),
		(4,1,1,7,'2018-10-02 00:00:00'),
		(4,1,1,7,'2018-10-01 00:00:00'),
		(7,1,1,7,'2018-12-02 00:00:00'),
		(7,1,1,7,'2018-12-02 00:00:00'),
		(7,1,1,7,'2018-12-02 00:00:00'),
		(7,1,1,7,'2018-12-02 00:00:00'),
		(7,1,1,7,'2018-12-02 00:00:00'),
		(7,1,1,7,'2018-12-02 00:00:00'),
		(7,1,1,7,'2018-12-02 00:00:00'),
		(4,1,1,7,'2018-09-26 00:00:00'),
		(8,2,3,8,'2018-05-18 10:23:13'),
		(9,1,4,9,'2018-05-18 12:15:55'),
		(1,2,5,10,'2018-05-18 01:27:30'),
		(1,2,5,10,'2018-05-18 12:15:55'),
		(2,1,1,11,'2015-06-18 10:34:09'),
		(3,2,2,12,'2015-06-18 10:34:09'),
		(4,1,3,1,'2018-09-05 03:10:40'),
		(5,2,4,2,'2018-09-05 04:20:50'),
		(6,1,5,3,'2018-09-05 05:30:10'),
		(7,2,1,4,'2018-09-10 10:30:10'),
		(8,1,2,5,'2018-09-10 04:30:10'),
		(5,1,2,5,'2018-09-10 07:30:10'),
		(5,1,2,8,'2018-09-10 10:30:10'),
		(5,1,2,8,'2018-09-10 08:45:15'),
		(9,2,3,6,'2018-09-10 08:30:10');
		
INSERT INTO MenuXPlatillo(idMenu, idPlatillo)
VALUES	(1,1),
		(1,2),
		(1,3),
		(2,4),
		(2,5),
		(2,6),
		(3,7),
		(3,8),
		(3,9),
		(4,1),
		(4,2),
		(4,3),
		(5,4),
		(5,5),
		(5,6),
		(6,7),
		(6,8),
		(6,9);