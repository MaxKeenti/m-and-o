-- Crear la base de datos si no existe
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'TelasB')
BEGIN
    CREATE DATABASE TelasB;
END
GO
USE TelasB;
GO
CREATE TABLE Empleados (
    id_emp INT IDENTITY(1,1) PRIMARY KEY,
    nombre NVARCHAR(50) NOT NULL,
	contraseña NVARCHAR(15) NULL,
	rol NVARCHAR(15) NULL,
);
INSERT INTO Empleados VALUES
('Juan','a','Gerente');
CREATE TABLE Proveedores  (
    id_pro INT PRIMARY KEY IDENTITY(1,1),
    nombre NVARCHAR(50) NOT NULL,
    direccion NVARCHAR(100) NULL,
    telefono CHAR(10) NULL,
	 tipo NVARCHAR(50) NOT NULL,
);
CREATE TABLE Pedidos  (
    id_pedi INT PRIMARY KEY IDENTITY(1,1), 
	nombre NVARCHAR(50) NOT NULL,
    cantidad INT NOT NULL, -- Cantidad de productos solicitados
    fecha_pedido DATETIME NOT NULL DEFAULT GETDATE(),
    estado NVARCHAR(20) NOT NULL DEFAULT 'Pendiente', -- Estado del pedido (e.g., Pendiente, Procesado, Enviado, Cancelado)
    direccion_envio NVARCHAR(255) NULL, -- Dirección de envío del pedido
);
INSERT INTO Pedidos (nombre, cantidad, fecha_pedido, estado, direccion_envio)
VALUES 
('Juan Pérez', 3, '2024-12-05 14:30:00', 'Pendiente', 'Calle Reforma 123, Colonia Centro, CDMX'),
('María López', 1, '2024-12-06 10:15:00', 'Procesado', 'Av. Insurgentes 456, Colonia Roma, CDMX'),
('Carlos Martínez', 5, '2024-12-07 18:45:00', 'Enviado', 'Calle Hidalgo 78, Centro, Guadalajara, Jalisco'),
('Ana García', 2, '2024-12-07 12:00:00', 'Pendiente', 'Blvd. Miguel Alemán 89, Monterrey, Nuevo León'),
('Luis Hernández', 4, '2024-12-08 08:30:00', 'Completado', 'Av. Revolución 987, San Ángel, CDMX');


INSERT INTO Productos VALUES
('Tela algodon','5 Rollos');
CREATE TABLE Productos  (
    id_prod INT PRIMARY KEY IDENTITY(1,1),
	 nombre NVARCHAR(50) NOT NULL,
	cantidad NVARCHAR  (50) NOT NULL,
	 
);



INSERT INTO Productos (nombre, cantidad)
VALUES 
('Telas Algodón', '10'),
('Telas Seda', '15'),
('Telas Poliester', '8'),
('Telas Lino', '12'),
('Telas Denim', '5'),
('Telas Lycra', '20'),
('Telas Organza', '18'),
('Telas Satén', '25'),
('Telas Lana', '30'),
('Telas Terciopelo', '9'),
('Telas Gasa', '11'),
('Telas Fieltro', '14'),
('Telas Franela', '7'),
('Telas Microfibra', '6'),
('Telas Tafetán', '17'),
('Telas Tweed', '22'),
('Telas Jersey', '13'),
('Telas Jacquard', '19'),
('Telas Chambray', '16'),
('Telas Canvas', '21');

Select* From Empleados;
Select* From Pedidos;
Select* From Productos;

DROP TABLE IF EXISTS Pedidos;

