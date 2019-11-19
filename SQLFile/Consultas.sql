use supermercados;
/*
2. Redacte una consulta que seleccione las sucursales de un barrio determinado. (X)
3. Redacte una consulta que seleccione todas las ventas del mes de octubre (X)
4. Redacte una consulta que seleccione todas las ventas que sean mayores a la venta promedio, ordenadas de forma descendente. (X)
5. Redacte una consulta que muestre las ventas de las sucursales de un barrio determinado, correspondientes al mes de octubre. (X)
6. Redacte una consulta que cuente cuantas sucursales tuvieron ingresos mayores a un monto determinado durante el mes de Septiembre. (X)
7. Redacte una consulta que obtenga los ingresos de todas las sucursales durante la primera quincena de noviembre y las ordene de menor a mayor (X)
*/
/*2)*/
select * from sucursales
where barrio='Palermo';
/*3)*/
select * from ventas
where fecha between '2018-10-01' and '2018-10-31'; 
/*4)*/
SELECT * FROM ventas
WHERE MontoTotal > (SELECT AVG(MontoTotal) FROM ventas)
ORDER BY MontoTotal desc;
/*5)*/
select NumeroDeTicket, ventas.CodigoDeSucursal ,Fecha,MontoTotal,MedioDePago, sucursales.Barrio from ventas
inner join (sucursales) on ventas.CodigoDeSucursal = sucursales.CodigoDeSucursal
where fecha between '2018-10-01' and '2018-10-31' and barrio='Barracas';
/*6)*/
 SELECT COUNT(*) as 'CantidadDeSucursales' FROM sucursales
 INNER JOIN ventas ON ventas.CodigoDeSucursal = sucursales.CodigoDeSucursal
 where Fecha between '2018-09-01' and '2018-09-30' and ventas.MontoTotal> 850;
 /*7)*/
 select sucursales.CodigoDeSucursal,Barrio,direccion, ventas.MontoTotal from sucursales
 inner join ventas on ventas.CodigoDeSucursal=sucursales.CodigoDeSucursal
 where fecha between '2018-11-01' and '2018-11-15'
 order by MontoTotal asc;
