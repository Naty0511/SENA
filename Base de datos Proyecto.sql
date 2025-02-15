use master
create database Facturacion_Berthoonline
use Facturacion_Berthoonline

create table Cliente
( 
	idCliente char(15) not null,
	cedula varchar(20),
	nombreCliente varchar(100),
	apellidoCliente varchar(100),
	direccion varchar(100),
	telefono varchar(100),
	email varchar(100)
)

create table Vendedor
( 
	idVendedor char(15) not null,
	cedula varchar(20),
	nombreVendedor varchar(100),
	apellidoVendedor varchar(100),
	direccion varchar(100),
	telefono varchar(100),
	email varchar(100)
)

create table Proveedor
( 
	idProveedor char(15) not null,
	Nit varchar(20),
	nombreProveedor varchar(100),
	direccion varchar(100),
	telefono varchar(100),
	email varchar(100)
)

create table Categoria
( 
	idCategoria char(15) not null,
	nombreCategoria varchar(100),
	descripcion varchar(100),
	
)

create table ModoPago
( 
	numeroPago char(15) not null,
	Tipo varchar(20),
	TipodeCambio varchar(100),
	moneda varchar(100),
)

create table Producto
( 
	idProducto char(15) not null,
	idCategoria char(15) not null,
	idProveedor char(15) not null,
	nombreProducto varchar(100),
	descripcion varchar(100),
	existencias int,
	precioUnitario money
)

create table Factura
( 
	numeroFactura char(15) not null,
	idCliente char(15) not null,
	numeroPago char(15) not null,
	idVendedor char(15) not null,
	fechaFactura date,
	fechaPedido date,
	numeroPedido char(30)
)

create table DetalleFactura
( 
	numeroFactura char(15) not null,
	idProducto char(15) not null,
	Cantidad int,
	importe money,
	subtotal money,
	total money
)

---INSERTAR REGISTROS CLIENTES
INSERT INTO Cliente (idCliente,cedula,nombreCliente,apellidoCliente,direccion,telefono,email)
VALUES ('01' , '1040757321','Susana','López Montoya', 'calle 32 # 50 - 24','3115489785','slopez@gmail.com')
INSERT INTO Cliente (idCliente,cedula,nombreCliente,apellidoCliente,direccion,telefono,email)
VALUES ('02' , '1001757321','Julian','Lopera Silva', 'calle 33 # 20 - 24','3109857000','jlopera@gmail.com')
INSERT INTO Cliente(idCliente,cedula,nombreCliente,apellidoCliente,direccion,telefono,email)
VALUES ('03' , '980757321','Alondra','Aguilar Castaño', 'calle 10 # 40 - 24','3015489705','Aaguilar@gmail.com')
INSERT INTO Cliente(idCliente,cedula,nombreCliente,apellidoCliente,direccion,telefono,email)
VALUES ('04' , '100055660325','Sergio','Rincon Munera', 'carrera 21# 32-14','321568541236','serimu@hotmail.com')
INSERT INTO Cliente(idCliente,cedula,nombreCliente,apellidoCliente,direccion,telefono,email)
VALUES ('05' , '216528596','Marina','Londoño Perez', 'carrera 32# 51-10','3156186905','marilope24@yahoo.com')
-- CONSULTAR REGISTROS
SELECT idCliente,cedula,nombreCliente,apellidoCliente,direccion,telefono,email FROM Cliente


------PROCEDIMIENTOS ALMACENADOS CLIENTE
----INSERTAR CLIENTE
CREATE PROCEDURE SP_INSERTAR_CLIENTE
	@idCliente char(15),
	@cedula varchar(20),
	@nombreCliente varchar(100),
	@apellidoCliente varchar(100),
	@direccion varchar(100),
	@telefono varchar(100),
	@email varchar(100)

AS
BEGIN
  INSERT INTO Cliente (idCliente , cedula , nombreCliente , apellidoCliente, direccion, telefono, email)
  VALUES (@idCliente , @cedula , @nombreCliente , @apellidoCliente,@direccion,@telefono,@email)
END

---EJECUTAR INSERTAR CLIENTE

EXECUTE SP_INSERTAR_CLIENTE '06' , '98516024','Carmen','Aguilar Morales', 'calle 63 # 24 - 29','3155480782','Caguilarm@gmail.com'
---------

CREATE PROCEDURE SP_ACTUALIZAR_CLIENTE

	@idCliente char(15),
	@cedula varchar(20),
	@nombreCliente varchar(100),
	@apellidoCliente varchar(100),
	@direccion varchar(100),
	@telefono varchar(100),
	@email varchar(100)

AS
BEGIN
  UPDATE CLIENTE SET cedula=@cedula, nombreCliente=@nombreCliente, apellidoCliente=@apellidoCliente, direccion=@direccion, telefono=@telefono, email=@email WHERE idCliente=@idCliente
END
---
---EJECUTAR ACTUALIZAR CLIENTE

EXECUTE SP_ACTUALIZAR_CLIENTE '05' , '1001757321','Sara','López Manrique', 'calle 12 # 25 - 24','3145480315','slopezm@gmail.com'

-----CONSULTAR UN CLIENTE

CREATE PROCEDURE SP_CONSULTAR_CLIENTE
 @idCliente char(15)
AS
BEGIN
  SELECT idCliente , cedula , nombreCliente , apellidoCliente, direccion, telefono, email FROM Cliente WHERE idCliente=@idCliente
END

--------
EXECUTE SP_CONSULTAR_CLIENTE '03'

--------LISTAR TODOS LOS DATOS DE LA TABLA CLIENTE

CREATE PROCEDURE SP_LISTAR_CLIENTE

AS
BEGIN
     SELECT idCliente , cedula , nombreCliente , apellidoCliente, direccion, telefono, email FROM Cliente
END

---EJECUTAR LISTAR CLIENTE

EXECUTE SP_LISTAR_CLIENTE

-------- ELIMINAR DE LA TABLA UN CLIENTE
CREATE PROCEDURE SP_ELIMINARR_CLIENTE
  @idCliente varchar(15)
AS
BEGIN
     DELETE FROM Cliente WHERE idCliente=@idCliente
END
------------EJECUTAR INSERTAR CLIENTE

EXECUTE SP_ELIMINARR_CLIENTE '04'



----PROCEDIMIENTOS ALMACENADOS VENDEDOR 


---INSERTAR REGISTROS VENDEDOR
INSERT INTO Vendedor(idVendedor,cedula,nombreVendedor,apellidoVendedor,direccion,telefono,email)
VALUES ('11' , '216258596','Andrea','Luna Gil', 'calle 29 # 32 - 40','3209856475','alugil15@gmail.com')
INSERT INTO Vendedor(idVendedor,cedula,nombreVendedor,apellidoVendedor,direccion,telefono,email)
VALUES ('12' , '325469852','Gilberto','Andrade Restrepo', 'calle 21 # 20 - 24','3235689565','giandrade@gmail.com')
INSERT INTO Vendedor(idVendedor,cedula,nombreVendedor,apellidoVendedor,direccion,telefono,email)
VALUES ('13' , '3258964','Alma','Alvarez Aguirre', 'calle 11 # 32 - 10','31562584569','aaa2158@gmail.com')
INSERT INTO Vendedor(idVendedor,cedula,nombreVendedor,apellidoVendedor,direccion,telefono,email)
VALUES ('14' , '10055986523','Julia','Rios Muñoz', 'carrera 31 # 15-24','3126185472','juri100@hotmail.com')
INSERT INTO Vendedor(idVendedor,cedula,nombreVendedor,apellidoVendedor,direccion,telefono,email)
VALUES ('15' , '216589453','Mario','Rincon Linares', 'carrera 25# 31-10','323568956','mariorincon@yahoo.com')
-- CONSULTAR REGISTROS
SELECT idVendedor,cedula,nombreVendedor,apellidoVendedor,direccion,telefono,email FROM Vendedor


------PROCEDIMIENTOS ALMACENADOS CLIENTE
CREATE PROCEDURE SP_INSERTAR_VENDEDOR
	@idVendedor char(15),
	@cedula varchar(20),
	@nombreVendedor varchar(100),
	@apellidoVendedor varchar(100),
	@direccion varchar(100),
	@telefono varchar(100),
	@email varchar(100)

AS
BEGIN
  INSERT INTO Vendedor (idVendedor , cedula , nombreVendedor , apellidoVendedor, direccion, telefono, email)
  VALUES (@idVendedor , @cedula , @nombreVendedor , @apellidoVendedor, @direccion, @telefono, @email)
END

---EJECUTAR INSERTAR VENDEDOR
EXECUTE SP_INSERTAR_VENDEDOR '04' , '105757321','Sara','López Manrique', 'calle 12 # 25 - 24','3145489781','slopezm@gmail.com'

CREATE PROCEDURE SP_ACTUALIZAR_VENDEDOR

	@idVendedor char(15),
	@cedula varchar(20),
	@nombreVendedor varchar(100),
	@apellidoVendedor varchar(100),
	@direccion varchar(100),
	@telefono varchar(100),
	@email varchar(100)

AS
BEGIN
  UPDATE VENDEDOR SET cedula=@cedula, nombreVendedor=@nombreVendedor, apellidoVendedor=@apellidoVendedor, direccion=@direccion, telefono=@telefono, email=@email WHERE idVendedor=@idVendedor
END
------EJECUTAR ACTUALIZAR VENDEDOR
EXECUTE SP_ACTUALIZAR_VENDEDOR '04' , '1001757321','Sara','López Manrique', 'calle 12 # 25 - 24','3145480315','slopezm@gmail.com'
---------
-----CONSULTAR UN VENDEDOR

CREATE PROCEDURE SP_CONSULTAR_VENDEDOR
 @idVendedor char(15)
AS
BEGIN
  SELECT idVendedor , cedula , nombreVendedor , apellidoVendedor, direccion, telefono, email FROM Vendedor WHERE idVendedor=@idVendedor
END

--------EJECUTAR CONSULTAR VENDEDOR
EXECUTE SP_CONSULTAR_VENDEDOR '11'

--------LISTAR TODOS LOS DATOS DE LA TABLA VENDEDOR

CREATE PROCEDURE SP_LISTAR_VENDEDOR

AS
BEGIN
     SELECT idVendedor , cedula , nombreVendedor , apellidoVendedor, direccion, telefono, email FROM Vendedor
END

--------EJECUTAR LISTAR VENDEDOR

EXECUTE SP_LISTAR_VENDEDOR

-------- ELIMINAR DE LA TABLA UN VENDEDOR

CREATE PROCEDURE SP_ELIMINARR_VENDEDOR

  @idVendedor varchar(15)
AS
BEGIN
     DELETE FROM Vendedor WHERE idVendedor=@idVendedor
END
----------EJECUTAR ELIMINAR VENDEDOR

EXECUTE SP_ELIMINARR_VENDEDOR '12'

---INSERTAR REGISTROS PROVEEDOR
INSERT INTO Proveedor (idProveedor,Nit,nombreProveedor,direccion,telefono,email)
VALUES ('01' , '890.904.478-6','colanta','calle74 N°64A-51','604 445 5555','serviciocliente@colanta.com.co')
INSERT INTO Proveedor (idProveedor,Nit,nombreProveedor,direccion,telefono,email)
VALUES ('02' , '860.003.831-8','Ramo','Cra. 27A N°. 68-50','601 7482000','serviciocliente@ramo.com.co')
INSERT INTO Proveedor (idProveedor,Nit,nombreProveedor,direccion,telefono,email)
VALUES ('03' , '811.014.994','Ramo','Carrera 7 # 76-35','604 3659999','serviciocliente@noel.com.co')

SELECT idProveedor,Nit,nombreProveedor,direccion,telefono,email FROM Proveedor

------PROCEDIMIENTOS ALMACENADOS PROVEEDOR

CREATE PROCEDURE SP_INSERTAR_PROVEEDOR
	@idProveedor char(15),
	@Nit varchar(20),
	@nombreProveedor varchar(100),
	@direccion varchar(100),
	@telefono varchar(100),
	@email varchar(100)

AS
BEGIN
  INSERT INTO Proveedor (idProveedor , Nit , nombreProveedor, direccion, telefono, email)
  VALUES (@idProveedor , @Nit , @nombreProveedor, @direccion, @telefono, @email)
END

--------EJECUTAR INSERTAR PROVEEDOR

EXECUTE SP_INSERTAR_PROVEEDOR '04' , '811.014.993','Bimbo','Cl 77 Sur #52-142','312 2146324','serviciocliente@bimbo.com.co'

CREATE PROCEDURE SP_ACTUALIZAR_PROVEEDOR

	@idProveedor char(15),
	@Nit varchar(20),
	@nombreProveedor varchar(100),
	@direccion varchar(100),
	@telefono varchar(100),
	@email varchar(100)
AS
BEGIN
  UPDATE PROVEEDOR SET Nit=@Nit, nombreProveedor=@nombreProveedor, direccion=@direccion, telefono=@telefono, email=@email WHERE idProveedor=@idProveedor
END
---EJECUTAR ACTUALIZAR PROVEEDOR

EXECUTE SP_ACTUALIZAR_PROVEEDOR '03' , '900.19.38.47','colanta','CL 6 # 14 - 04','604 445 5555','serviciocliente@Lafina.com.co'

-----CONSULTAR UN PROVEEDOR

CREATE PROCEDURE SP_CONSULTAR_PROVEEDOR
 @idProveedor char(15)
AS
BEGIN
  SELECT idProveedor , Nit , nombreProveedor , direccion, telefono, email FROM Proveedor WHERE idProveedor=@idProveedor
END

--------EJECUTAR CONSULTAR PROVEEDOR

EXECUTE SP_CONSULTAR_PROVEEDOR '02'

--------LISTAR TODOS LOS DATOS DE LA TABLA PROVEEDOR

CREATE PROCEDURE SP_LISTAR_PROVEEDOR

AS
BEGIN
     SELECT idProveedor , Nit, nombreProveedor , direccion, telefono, email FROM Proveedor
END

--------EJECUTAR LISTAR PROVEEDOR
EXECUTE SP_LISTAR_PROVEEDOR

-------- ELIMINAR DE LA TABLA UN PROVEEDOR

CREATE PROCEDURE SP_ELIMINARR_PROVEEDOR

  @idProveedor varchar(15)
AS
BEGIN
     DELETE FROM Proveedor WHERE idProveedor=@idProveedor
END
--------EJECUTAR ELIMINAR PROVEEDOR

EXECUTE SP_ELIMINARR_PROVEEDOR '03'

---INSERTAR REGISTROS CATEGORIA
INSERT INTO Categoria (idCategoria,nombreCategoria,descripcion)
VALUES ('03' , 'Arepa','arepas doña rosa')
INSERT INTO Categoria (idCategoria,nombreCategoria,descripcion)
VALUES ('02','Papas margarita','Snack')
INSERT INTO Categoria (idCategoria,nombreCategoria,descripcion)
VALUES ('04' , 'Arroz','Arroz Diana')

SELECT idCategoria,nombreCategoria,descripcion FROM Categoria


------PROCEDIMIENTOS ALMACENADOS CATEGORIA
CREATE PROCEDURE SP_INSERTAR_CATEGORIA
	@idCategoria char(15),
	@nombreCategoria varchar(100),
	@descripcion varchar(100)
AS
BEGIN
  INSERT INTO Categoria (idCategoria ,nombreCategoria, descripcion)
  VALUES (@idCategoria , @nombreCategoria , @descripcion)
END

---EJECUTAR PROCEDIMIENTOS ALMACENADOS CATEGORIA
EXECUTE SP_INSERTAR_CATEGORIA '04' , 'Arroz','Diana'

CREATE PROCEDURE SP_ACTUALIZAR_CATEGORIA

	@idCategoria char(15),
	@nombreCategoria varchar(100),
	@descripcion varchar(100)
AS
BEGIN
  UPDATE CATEGORIA SET nombreCategoria=@nombreCategoria, descripcion=@descripcion WHERE idCategoria=@idCategoria
END
---
---EJECUTAR ACTUALIZAR CATEGORIA
EXECUTE SP_ACTUALIZAR_CATEGORIA '04' , 'Arroz','Arroz Diana'

-----CONSULTAR UN CATEGORIA

CREATE PROCEDURE SP_CONSULTAR_CATEGORIA
 @idCategoria char(15)
AS
BEGIN
  SELECT idCategoria , nombreCategoria , descripcion FROM Categoria WHERE idCategoria=@idCategoria
END

-----------EJECUTAR CONSULTAR CATEGORIA
EXECUTE SP_CONSULTAR_CATEGORIA '03'

--------LISTAR TODOS LOS DATOS DE LA TABLA CATEGORIA

CREATE PROCEDURE SP_LISTAR_CATEGORIA

AS
BEGIN
     SELECT idCategoria , nombreCategoria , descripcion FROM Categoria
END
--------EJECUTAR LISTAR CATEGORIA

EXECUTE SP_LISTAR_CATEGORIA

CREATE PROCEDURE SP_ELIMINARR_CATEGORIA

  @idCategoria varchar(15)
AS
BEGIN
     DELETE FROM Categoria WHERE idCategoria=@idCategoria
END
---------EJECUTAR ELIMINAR CATEGORIA

EXECUTE SP_ELIMINARR_CATEGORIA '03'

---INSERTAR REGISTROS MODOPAGO
INSERT INTO ModoPago (numeroPago,Tipo,TipodeCambio,Moneda)
VALUES ('1' , 'efectivo','15000','pesos')
INSERT INTO ModoPago (numeroPago,Tipo,TipodeCambio,Moneda)
VALUES ('2' , 'tranferencia','100000','pesos')
INSERT INTO ModoPago (numeroPago,Tipo,TipodeCambio,Moneda)
VALUES ('3' , 'Tarjetacredito','500000','pesos')

SELECT numeroPago,Tipo,TipodeCambio,Moneda FROM ModoPago

------PROCEDIMIENTOS ALMACENADOS MODOPAGO
CREATE PROCEDURE SP_INSERTAR_MODOPAGO

	@numeroPago char(15),
	@Tipo varchar(20),
	@TipodeCambio varchar(100),
	@moneda varchar(100)
AS
BEGIN
  INSERT INTO ModoPago (numeroPago,Tipo,TipodeCambio,Moneda)
  VALUES (@numeroPago,@Tipo,@TipodeCambio,@Moneda)
END

---EJECUTAR PROCEDIMIENTOS ALMACENADOS MODOPAGO
EXECUTE SP_INSERTAR_MODOPAGO '04' , 'cheque','20000','pesos'

CREATE PROCEDURE SP_ACTUALIZAR_MODOPAGO

	@numeroPago char(15),
	@Tipo varchar(20),
	@TipodeCambio varchar(100),
	@moneda varchar(100)
AS
BEGIN
  UPDATE MODOPAGO SET Tipo=@Tipo, TipodeCambio=@TipodeCambio,moneda=@moneda WHERE numeroPago=@numeroPago
END
---EJECUTAR ACTUALIZAR MODOPAGO

EXECUTE SP_ACTUALIZAR_MODOPAGO '2' , 'efectivo','10000', 'pesos'

-----CONSULTAR UN MODOPAGO

CREATE PROCEDURE SP_CONSULTAR_MODOPAGO
 @numeroPago char(15)
AS
BEGIN
  SELECT numeroPago,Tipo,TipodeCambio,Moneda FROM ModoPago WHERE numeroPago =@numeroPago
END

--------EJECUTAR CONSULTAR MODOPAGO
EXECUTE SP_CONSULTAR_MODOPAGO '04'

--------LISTAR TODOS LOS DATOS DE LA TABLA MODOPAGO

CREATE PROCEDURE SP_LISTAR_MODOPAGO

AS
BEGIN
     SELECT numeroPago,Tipo,TipodeCambio,Moneda FROM ModoPago
END

--------EJECUTAR LISTAR MODOPAGO
EXECUTE SP_LISTAR_MODOPAGO

-------- ELIMINAR DE LA TABLA UN MODOPAGO

CREATE PROCEDURE SP_ELIMINARR_MODOPAGO

  @numeroPago varchar(15)
AS
BEGIN
     DELETE FROM ModoPago WHERE numeroPago=@numeroPago
END
---------EJECUTAR ELIMINAR MODOPAGO
EXECUTE SP_ELIMINARR_MODOPAGO '04'

---INSERTAR REGISTROS PRODUCTO
INSERT INTO Producto (idProducto,idCategoria,idProveedor,nombreProducto,descripcion,existencias,precioUnitario)
VALUES ('000013' , 'lacteos','alpina','yogurt','eche coagulada','10','2500')
INSERT INTO Producto (idProducto,idCategoria,idProveedor,nombreProducto,descripcion,existencias,precioUnitario)
VALUES ('000234' , 'enlatados','La española','Atun','conservantes','5','6000')


SELECT idProducto,idCategoria,idProveedor,nombreProducto,descripcion,existencias,precioUnitario FROM Producto 

------PROCEDIMIENTOS ALMACENADOS PRODUCTO
CREATE PROCEDURE SP_INSERTAR_PRODUCTO

	@idProducto char(15),
	@idCategoria char(15),
	@idProveedor char(15),
	@nombreProducto varchar(100),
	@descripcion varchar(100),
	@existencias int,
	@precioUnitario money
AS
BEGIN
  INSERT INTO Producto (idProducto,idCategoria,idProveedor,nombreProducto,descripcion,existencias,precioUnitario)
  VALUES (@idProducto,@idCategoria,@idProveedor,@nombreProducto,@descripcion,@existencias,@precioUnitario)
END

---EJECUTAR PROCEDIMIENTOS ALMACENADOS PRODUCTO
EXECUTE SP_INSERTAR_PRODUCTO '000015' , 'Carnes frias','Zenu','salchica','ranchera','30','10600'


CREATE PROCEDURE SP_ACTUALIZAR_PRODUCTO

	@idProducto char(15),
	@idCategoria char(15),
	@idProveedor char(15),
	@nombreProducto varchar(100),
	@descripcion varchar(100),
	@existencias int,
	@precioUnitario money
AS
BEGIN
  UPDATE PRODUCTO SET idCategoria=@idCategoria, idProveedor=@idProveedor,nombreProducto=@nombreProducto, descripcion=@descripcion, existencias=@existencias, precioUnitario=@precioUnitario WHERE idProducto=@idProducto
END
---EJECUTAR ACTUALIZAR PRODUCTO
EXECUTE SP_ACTUALIZAR_PRODUCTO '00014' , 'enlatados','Frescampo','Maicitos dulces','acompañante','30','5600'

-----CONSULTAR UN PRODUCTO

CREATE PROCEDURE SP_CONSULTAR_PRODUCTO
@idProducto char(15)
AS
BEGIN
  SELECT idCategoria, idProveedor,nombreProducto, descripcion, existencias, precioUnitario FROM Producto WHERE idProducto = @idProducto
END

--------EJECUTAR CONSULTAR PRODUCTO
EXECUTE SP_CONSULTAR_PRODUCTO '000015'

--------LISTAR TODOS LOS DATOS DE LA TABLA PRODUCTO

CREATE PROCEDURE SP_LISTAR_PRODUCTO

AS
BEGIN
     SELECT idProducto,idCategoria,idProveedor,nombreProducto,descripcion,existencias,precioUnitario FROM Producto
END

-----EJECUTAR LISTAR PRODUCTO

EXECUTE SP_LISTAR_PRODUCTO

-------- ELIMINAR DE LA TABLA UN PRODUCTO

CREATE PROCEDURE SP_ELIMINARR_PRODUCTO

  @idProducto varchar(15)
AS
BEGIN
     DELETE FROM Producto WHERE idProducto=@idProducto
END
---------EJECUTAR ELIMINAR PRODUCTO
EXECUTE SP_ELIMINARR_PRODUCTO '00014'


---INSERTAR REGISTROS FACTURA
INSERT INTO Factura (numeroFactura,idCliente,numeroPago,idVendedor,fechaFactura,fechaPedido,numeroPedido)
VALUES ('000134','01','1','04','08/09/2023','08/08/2024','500')
INSERT INTO Factura (numeroFactura,idCliente,numeroPago,idVendedor,fechaFactura,fechaPedido,numeroPedido)
VALUES ('000321','02','2','03','08/09/2023','08/08/2024','501')


SELECT numeroFactura,idCliente,numeroPago,idVendedor,fechaFactura,fechaPedido,numeroPedido FROM Factura

------PROCEDIMIENTOS ALMACENADOS FACTURA
CREATE PROCEDURE SP_INSERTAR_FACTURA
	@numeroFactura char(15),
	@idCliente char(15),
	@numeroPago char(15),
	@idVendedor char(15),
	@fechaFactura date,
	@fechaPedido date,
	@numeroPedido char(30)
AS
BEGIN
  INSERT INTO Factura (numeroFactura,idCliente,numeroPago,idVendedor,fechaFactura,fechaPedido,numeroPedido)
  VALUES (@numeroFactura,@idCliente,@numeroPago,@idVendedor,@fechaFactura,@fechaPedido,@numeroPedido)
END
---EJECUTAR PROCEDIMIENTOS ALMACENADOS FACTURA
EXECUTE SP_INSERTAR_FACTURA '000322','03','3','04','08/09/2023','08/08/2024','502'

CREATE PROCEDURE SP_ACTUALIZAR_FACTURA

	@numeroFactura char(15),
	@idCliente char(15),
	@numeroPago char(15),
	@idVendedor char(15),
	@fechaFactura date,
	@fechaPedido date,
	@numeroPedido char(30)
AS
BEGIN
  UPDATE FACTURA SET idCliente=@idCliente,numeroPago=@numeroPago, idVendedor=@idVendedor, fechaFactura=@fechaFactura, fechaPedido=@fechaPedido, numeroPedido=@numeroPedido WHERE numeroFactura=@numeroFactura
END
------------EJECUTAR ACTUALIZAR FACTURA
EXECUTE SP_ACTUALIZAR_FACTURA '000320','03','3','04','11/09/2023','11/08/2024','504'

-----CONSULTAR UN FACTURA

CREATE PROCEDURE SP_CONSULTAR_FACTURA
 @numeroFactura char(15)
AS
BEGIN
  SELECT idCliente,numeroPago,idVendedor,fechaFactura,fechaPedido,numeroPedido FROM Factura WHERE numeroFactura = @numeroFactura
END

--------EJECUTAR CONSULTAR FACTURA
EXECUTE SP_CONSULTAR_FACTURA '000322'

--------LISTAR TODOS LOS DATOS DE LA TABLA FACTURA

CREATE PROCEDURE SP_LISTAR_FACTURA
AS
BEGIN
     SELECT numeroFactura,idCliente,numeroPago,idVendedor,fechaFactura,fechaPedido,numeroPedido FROM Factura
END

-----EJECUTAR LISTAR FACTURA
EXECUTE SP_LISTAR_FACTURA

-------- ELIMINAR DE LA TABLA UN FACTURA

CREATE PROCEDURE SP_ELIMINARR_FACTURA

  @numeroFactura char(15)
AS
BEGIN
     DELETE FROM Factura WHERE numeroFactura=@numeroFactura
END
---------
EXECUTE SP_ELIMINARR_PRODUCTO '000320'


---INSERTAR REGISTROS DETALLEFACTURA
INSERT INTO DetalleFactura (numeroFactura,idProducto,cantidad,importe,subtotal,total)
VALUES ('000134' , 'A001','20','8888','100000','102000')
INSERT INTO DetalleFactura (numeroFactura,idProducto,cantidad,importe,subtotal,total)
VALUES ('000321' , 'A002','10','5555','20000','22000')

SELECT numeroFactura,idProducto,cantidad,importe,subtotal,total FROM DetalleFactura

------PROCEDIMIENTOS ALMACENADOS DETALLEFACTURA
CREATE PROCEDURE SP_INSERTAR_DETALLEFACTURA

	@numeroFactura char(15),
	@idProducto char(15),
	@Cantidad int,
	@importe money,
	@subtotal money,
	@total money
AS
BEGIN
  INSERT INTO DetalleFactura (numeroFactura,idProducto,cantidad,importe,subtotal,total)
  VALUES (@numeroFactura,@idProducto,@cantidad,@importe,@subtotal,@total)
END
---EJECUTAR PROCEDIMIENTOS ALMACENADOS DETALLEFACTURA
EXECUTE SP_INSERTAR_DETALLEFACTURA '000352' , 'A003','50','6666','2000000','2200000'

CREATE PROCEDURE SP_ACTUALIZAR_DETALLEFACTURA
	@numeroFactura char(15),
	@idProducto char(15),
	@Cantidad int,
	@importe money,
	@subtotal money,
	@total money
AS
BEGIN
  UPDATE DETALLEFACTURA SET idProducto=@idProducto,Cantidad=@Cantidad, importe=@importe, subtotal=@subtotal, total=@total WHERE numeroFactura=@numeroFactura
END
------EJECUTAR ACTUALIZAR DETALLEFACTURA
EXECUTE SP_ACTUALIZAR_DETALLEFACTURA '000353' , 'A005','30','1111','200000','220000'

-----CONSULTAR DETALLEFACTURA

CREATE PROCEDURE SP_CONSULTAR_DETALLEFACTURA
 @numeroFactura char(15)
AS
BEGIN
  SELECT idProducto,Cantidad, importe, subtotal, total FROM DetalleFactura WHERE numeroFactura = @numeroFactura
END
-------EJECUTAR CONSULTAR FACTURA
EXECUTE SP_CONSULTAR_DETALLEFACTURA '000353'

--------LISTAR TODOS LOS DATOS DE LA TABLA DETALLEFACTURA

CREATE PROCEDURE SP_LISTAR_DETALLEFACTURA

AS
BEGIN
     SELECT numeroFactura,idProducto,Cantidad, importe, subtotal, total FROM DetalleFactura
END

-------EJECUTAR LISTAR DETALLEFACTURA
EXECUTE SP_LISTAR_DETALLEFACTURA

-------- ELIMINAR DE LA TABLA UN DETALLEFACTURA

CREATE PROCEDURE SP_ELIMINARR_DETALLEFACTURA

  @numeroFactura varchar(15)
AS
BEGIN
     DELETE FROM DetalleFactura WHERE numeroFactura=@numeroFactura
END
---------EJECUTAR ELIMINAR DETALLEFACTURA
EXECUTE SP_ELIMINARR_DETALLEFACTURA'000321'

---------Claves primarias
alter table Cliente
add constraint pk_Cliente primary key (idCliente)

alter table Vendedor
add constraint pk_Vendedor primary key (idVendedor)

alter table Proveedor
add constraint pk_Proveedor primary key (idProveedor)

alter table Categoria
add constraint pk_Categoria primary key (idCategoria)

alter table ModoPago
add constraint pk_ModoPago primary key (numeroPago)

alter table Producto
add constraint pk_Producto primary key (idProducto)

alter table Factura
add constraint pk_Factura primary key (numeroFactura)

----clave compuesta
alter table DetalleFactura
add constraint pk_DetalleFactura primary key (numeroFactura, idProducto)

----crear llaves foraneas
alter table Producto with nocheck
add constraint fk_CategoriaProducto foreign key (idCategoria)
references Categoria(idCategoria)
on delete cascade
on update cascade

alter table Producto with nocheck
add constraint fk_Proveedor_Producto foreign key (idProveedor)
references Proveedor(idProveedor)
on delete cascade
on update cascade

---------foranea factura
alter table Factura with nocheck
add constraint fk_ModoPagoFactura foreign key (numeroPago)
references ModoPago(numeroPago)
on delete cascade
on update cascade

alter table Factura with nocheck
add constraint fk_ClienteFactura foreign key (idCliente)
references Cliente(idCliente)
on delete cascade
on update cascade

alter table Factura with nocheck
add constraint fk_VendedorFactura foreign key (idVendedor)
references Vendedor(idVendedor)
on delete cascade
on update cascade


alter table DetalleFactura with nocheck
add constraint fk_DetalleFactura_Factura foreign key (numeroFactura)
references Factura(numeroFactura)
on delete cascade
on update cascade

alter table DetalleFactura with nocheck
add constraint fk_DetalleFactura_Producto foreign key (idProducto)
references Producto(idProducto)
on delete cascade 
on update cascade