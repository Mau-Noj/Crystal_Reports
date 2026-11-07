
CREATE DATABASE ReportesDB;
GO

USE ReportesDB;
GO

CREATE TABLE Ventas (
    IdVenta INT PRIMARY KEY IDENTITY(1,1),
    Producto VARCHAR(100),
    Cantidad INT,
    PrecioUnitario DECIMAL(10,2),
    Fecha DATE
);
GO

INSERT INTO Ventas
(Producto, Cantidad, PrecioUnitario, Fecha)
VALUES
('Teclado', 3, 125.00, '2026-11-01'),
('Mouse', 5, 75.00, '2026-11-02'),
('Monitor', 2, 1250.00, '2026-11-03'),
('Impresora', 1, 850.00, '2026-11-04'),
('Memoria USB', 8, 65.00, '2026-11-05');
GO

SELECT
    IdVenta,
    Producto,
    Cantidad,
    PrecioUnitario,
    Cantidad * PrecioUnitario AS Total,
    Fecha
FROM Ventas;
