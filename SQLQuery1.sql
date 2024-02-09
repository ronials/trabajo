CREATE DATABASE Educativa
Use Educativa
CREATE TABLE Estudiantes (
    Id_estudiante INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50)
);

CREATE TABLE Matriculas (
    Id_matricula INT PRIMARY KEY,
    Id_estudiante INT,
    Año_academico INT,
    Cuota_mensual DECIMAL(10, 2),
    FOREIGN KEY (Id_estudiante) REFERENCES Estudiantes(Id_estudiante)
);

CREATE TABLE Pagos (
    Id_pago INT PRIMARY KEY,
    Id_estudiante INT,
    Id_matricula INT,
    Monto_pagado DECIMAL(10, 2),
    Mecha_pago DATE,
    FOREIGN KEY (Id_estudiante) REFERENCES Estudiantes(Id_estudiante),
    FOREIGN KEY (Id_matricula) REFERENCES Matriculas(Id_matricula)
);
