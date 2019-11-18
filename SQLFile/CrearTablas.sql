use Supermercados;

create table Sucursales(
CodigoDeSucursal  int not null auto_increment,
Barrio varchar(20),
Direccion varchar(20),
Primary Key (CodigoDeSucursal)
);

Create table Ventas(
NumeroDeTicket int,
CodigoDeSucursal int,
Fecha date,
MontoTotal int,
MedioDePago varchar(20),
Primary key(NumeroDeTicket),
FOREIGN KEY (CodigoDeSucursal) REFERENCES Sucursales(CodigoDeSucursal)
);
