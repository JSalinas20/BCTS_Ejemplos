create database BCTS
go
use BCTS
go
create table productos(
Id int identity primary key,
Descripcion varchar(100),
Categoria char(1)
)
go
create procedure UP_LIS_PRODUCTOS
AS
BEGIN
select Id,CONCAT(Descripcion,' - ',Categoria) as Titulo from productos
END
GO
INSERT INTO productos (Descripcion,Categoria)
values ('Arroz','A'),('Azucar','A'),('Aceite','B')
