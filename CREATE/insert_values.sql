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
VALUES	(1,1,1,'20180618 10:34:09 AM'),
		(2,2,2,'20180618 10:34:09 AM'),
		(1,3,3,'20180618 10:34:09 AM'),
		(2,4,4,'20180118 10:34:09 AM'),
		(1,5,5,'20180118 10:34:09 AM'),
		(2,1,6,'20180118 10:34:09 AM'),
		(1,2,7,'20180518 11:30:09 PM'),
		(2,3,8,'20180518 10:23:13 PM'),
		(1,4,9,'20180518 12:15:55 PM'),
		(2,5,10,'20150618 10:34:09 PM'),
		(1,1,11,'20150618 10:34:09 AM'),
		(2,2,12,'20150618 10:34:09 PM'),
		(1,3,1,'20180905 03:10:40 AM'),
		(2,4,2,'20180905 04:20:50 PM'),
		(1,5,3,'20180905 05:30:10 AM');
	
INSERT INTO VotoPlatillo(idPlatillo, idTipoVoto, idRestaurante, idEstudiante, Fecha)
VALUES	(1,1,1,1,'20180618 10:34:09 AM'),
		(2,2,2,2,'20180618 10:34:09 AM'),
		(3,1,3,3,'20180618 10:34:09 AM'),
		(4,2,4,4,'20180118 10:34:09 AM'),
		(5,1,5,5,'20180118 10:34:09 AM'),
		(6,2,1,6,'20180118 10:34:09 AM'),
		(7,1,2,7,'20180518 11:30:09 PM'),
		(8,2,3,8,'20180518 10:23:13 PM'),
		(9,1,4,9,'20180518 12:15:55 PM'),
		(1,2,5,10,'20180518 12:15:55 PM'),
		(2,1,1,11,'20150618 10:34:09 AM'),
		(3,2,2,12,'20150618 10:34:09 PM'),
		(4,1,3,1,'20180905 03:10:40 AM'),
		(5,2,4,2,'20180905 04:20:50 PM'),
		(6,1,5,3,'20180905 05:30:10 AM'),
		(7,2,1,4,'20180910 10:30:10 AM'),
		(8,1,2,5,'20180910 04:30:10 PM'),
		(5,1,2,5,'20180910 07:30:10 PM'),
		(5,1,2,8,'20180910 10:30:10 PM'),
		(9,2,3,6,'20180910 08:30:10 PM');
		
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