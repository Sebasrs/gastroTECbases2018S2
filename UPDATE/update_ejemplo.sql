--Actualiza el campo Carrera del Estudiante Sebastian de Mecatronica a Computadores

UPDATE Estudiante
SET Carrera = 'Computadores'
WHERE Estudiante.Nombre LIKE ('Sebastian');