CREATE DATABASE db_Tareas
go
USE db_Tareas
go

CREATE TABLE [Clientes](

    [Id] INT PRIMARY KEY IDENTITY(1,1),
    [Nombre] NVARCHAR(30) NOT NULL,
    [Correo_Electronico] NVARCHAR(30) NOT NULL,
    [Telefono] NVARCHAR(30) NOT NULL,
    [Pais] NVARCHAR(30) NOT NULL
);

CREATE TABLE [Tareas](

    [Id] INT PRIMARY KEY IDENTITY(1,1),
    [Descripcion_Tarea] NVARCHAR(30) NOT NULL,
    [Fecha_Inicio] SmallDateTime NOT NULL,
    [Fecha_Fin] SmallDateTime NOT NULL,
    [Estado] NVARCHAR(30) NOT NULL,
    [Prioridad] Nvarchar(30) NOT NULL
);

CREATE TABLE [Estado_Tareas](

    [Id] INT PRIMARY KEY IDENTITY(1,1),
    [Nombre] NVARCHAR(30) NOT NULL
);

CREATE TABLE [Categoria_Tareas](

    [Id] INT PRIMARY KEY IDENTITY(1,1),
    [Nombre] NVARCHAR(30) NOT NULL,
    [Descripcion] NVARCHAR(50) NOT NULL,
    [Activo] BIT NOT NULL DEFAULT 0

);

CREATE TABLE [Historial_Tareas](

    [Id] INT PRIMARY KEY IDENTITY(1,1),
    [Cantidad] DECIMAL(10, 2) NOT NULL,
    [Fecha_Inicio] SmallDateTime NOT NULL,
    [Fecha_Fin] SmallDateTime NOT NULL,
    [Activo] BIT NOT NULL DEFAULT 0
);

CREATE TABLE [Tipo_Clientes](

    [Id] INT PRIMARY KEY IDENTITY(1,1),
    [Nombre] NVARCHAR(50) NOT NULL,
    [Descripcion] NVARCHAR(50) NOT NULL,
    [Activo] BIT NOT NULL DEFAULT 0,
);

INSERT INTO [Clientes] ([Nombre], [Correo_Electronico], [Telefono],[Pais])
VALUES ('Juan', 'Juan@Gmail.com', '3009293876', 'Argentina');
INSERT INTO [Clientes] ([Nombre], [Correo_Electronico], [Telefono],[Pais])
VALUES ('Pedro', 'Pedro@Gmail.com', '305929187', 'Peru');
INSERT INTO [Clientes] ([Nombre], [Correo_Electronico], [Telefono],[Pais])
VALUES ('Rosa', 'Rosa@Gmail.com', '2940219912', 'Bolivia');



INSERT INTO [Tareas] ([Descripcion_Tarea], [Fecha_Inicio], [Fecha_Fin], [Estado], [Prioridad])
VALUES ('Analizar cuerpo', GETDATE(), GETDATE(), 'Hecho', 'Alta');
INSERT INTO [Tareas] ([Descripcion_Tarea], [Fecha_Inicio], [Fecha_Fin], [Estado], [Prioridad])
VALUES ('Trabajo de Fisica', GETDATE(), GETDATE(), 'Atrasado', 'Media');
INSERT INTO [Tareas] ([Descripcion_Tarea], [Fecha_Inicio], [Fecha_Fin], [Estado], [Prioridad])
VALUES ('Tesis Universitaria', GETDATE(), GETDATE(), 'En proceso', 'Alta');



INSERT INTO [Estado_Tareas] ([Nombre])
VALUES ('En proceso');

INSERT INTO [Estado_Tareas] ([Nombre])
VALUES ('Atrasado');

INSERT INTO [Estado_Tareas] ([Nombre])
VALUES ('Hecho');



INSERT INTO [Categoria_Tareas] ([Nombre], [Descripcion], [Activo])
VALUES ('Administracion', 'Administracion financiera', 1);

INSERT INTO [Categoria_Tareas] ([Nombre], [Descripcion], [Activo])
VALUES ('Institucionales', 'Tareas Educativa', 1);

INSERT INTO [Categoria_Tareas] ([Nombre], [Descripcion], [Activo])
VALUES ('Deportivas', 'Trabajo deportivo recreativo o profesional', 0);



INSERT INTO [Historial_Tareas] ([Cantidad], [Fecha_Inicio], [Fecha_Fin], [Activo])
VALUES (20.0,GETDATE(), GETDATE(), 1);

INSERT INTO [Historial_Tareas] ([Cantidad], [Fecha_Inicio], [Fecha_Fin], [Activo])
VALUES (30.0,GETDATE(), GETDATE(), 0);

INSERT INTO [Historial_Tareas] ([Cantidad], [Fecha_Inicio], [Fecha_Fin], [Activo])
VALUES (08.0,GETDATE(), GETDATE(), 1);



INSERT INTO [Tipo_Clientes] ( [Nombre], [Descripcion], [Activo])
VALUES ( 'Estudiante', 'Presente en el area de educación', 1);
INSERT INTO [Tipo_Clientes] ( [Nombre], [Descripcion], [Activo])
VALUES ( 'Empresario', 'Presente en el area administrativa', 0);
INSERT INTO [Tipo_Clientes] ( [Nombre], [Descripcion], [Activo])
VALUES ( 'Casual', 'No presente en un area en especifico', 1);