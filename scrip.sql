CREATE TABLE Empleados (id INT PRIMARY KEY, nombre VARCHAR(50));
INSERT INTO Empleados (id, nombre) VALUES (1, 'Administrador');

-- Creación de la base de datos y tabla
CREATE DATABASE IF NOT EXISTS empleados_db;
USE empleados_db;

CREATE TABLE IF NOT EXISTS Empleados (
    id INT PRIMARY KEY,
    nombre VARCHAR(50)
);
-- Carga de datos de ejemplo
INSERT INTO Empleados (id, nombre) VALUES (1, 'Administrador');
INSERT INTO Empleados (id, nombre) VALUES (2, 'Juan Pérez');
INSERT INTO Empleados (id, nombre) VALUES (3, 'María Gómez');

-- Verificación
SELECT * FROM Empleados;
