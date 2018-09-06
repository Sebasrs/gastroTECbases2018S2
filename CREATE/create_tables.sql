CREATE TABLE Restaurante
(
	IdRestaurante INTEGER PRIMARY KEY,
	Nombre        VARCHAR(50),
	Ubicacion     VARCHAR(50)
);

CREATE TABLE Horario
(
	IdHorario INTEGER PRIMARY KEY,
	Hora      VARCHAR(50)
);

CREATE TABLE Estudiante
(
	IdEstudiante INTEGER PRIMARY KEY,
	Nombre       VARCHAR(50),
	Carrera      VARCHAR(50)
);

CREATE TABLE Platillo
(
	IdPlatillo INTEGER PRIMARY KEY,
	Nombre     VARCHAR(50),
	Precio     INTEGER
);

CREATE TABLE Menu
(
	IdMenu                     INTEGER PRIMARY KEY,
	IdHorario                  INTEGER,
	IdRestaurante              INTEGER,
	FOREIGN KEY(IdHorario)     REFERENCES Horario(IdHorario),
	FOREIGN KEY(IdRestaurante) REFERENCES Restaurante(IdRestaurante)
);

CREATE TABLE TipoVoto
(
	IdTipoVoto INTEGER PRIMARY KEY,
	Tipo       VARCHAR(50)
);

CREATE TABLE MenuXPlatillo
(
	IdMenu                  INTEGER,
	IdPlatillo              INTEGER,
	FOREIGN KEY(IdMenu)     REFERENCES Menu(IdMenu),
	FOREIGN KEY(IdPlatillo) REFERENCES Platillo(IdPlatillo)
);

CREATE TABLE Compra
(
	IdCompra                  INTEGER PRIMARY KEY,
	IdPlatillo                INTEGER,
	IdHorario                 INTEGER,
	IdEstudiante              INTEGER,
	IdRestaurante			  INTEGER,
	FOREIGN KEY(IdPlatillo)   REFERENCES Platillo(IdPlatillo),
	FOREIGN KEY(IdHorario)    REFERENCES Horario(IdHorario),
	FOREIGN KEY(IdEstudiante) REFERENCES Estudiante(IdEstudiante),
	FOREIGN KEY(IdRestaurante) REFERENCES Restaurante(IdRestaurante)
);

CREATE TABLE VotoPlatillo
(
	IdVotoPlatillo             INTEGER PRIMARY KEY,
	IdPlatillo                 INTEGER,
	IdTipoVoto                 INTEGER,
	IdRestaurante              INTEGER,
	IdEstudiante               INTEGER,
	Fecha                      DATETIME,
	FOREIGN KEY(IdPlatillo)    REFERENCES Platillo(IdPlatillo),
	FOREIGN KEY(IdTipoVoto)    REFERENCES TipoVoto(IdTipoVoto),
	FOREIGN KEY(IdRestaurante) REFERENCES Restaurante(IdRestaurante),
	FOREIGN KEY(IdEstudiante)  REFERENCES Estudiante(IdEstudiante)
);

CREATE TABLE VotoRestaurante
(
	IdVotoRestaurante          INTEGER PRIMARY KEY,
	IdTipoVoto                 INTEGER,
	IdRestaurante              INTEGER,
	IdEstudiante               INTEGER,
	Fecha                      DATETIME,
	FOREIGN KEY(IdTipoVoto)    REFERENCES TipoVoto(IdTipoVoto),
	FOREIGN KEY(IdRestaurante) REFERENCES Restaurante(IdRestaurante),
	FOREIGN KEY(IdEstudiante)  REFERENCES Estudiante(IdEstudiante)
);