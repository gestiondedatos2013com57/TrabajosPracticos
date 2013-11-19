/*

Ejercicio 4.9 
Hallar los proveedores que proveen el artículo más caro que haya sido comprado alguna vez por un cliente de la ciudad de Salta.

*/


Select Prov.* from Proveedor as Prov
inner join Provee on Provee.id_Proveedor=Prov.id_Proveedor
where provee.id_Articulo in 
(
Select ped.id_Articulo from Clientes as Cli
inner join Pedido as Ped on Ped.id_Cliente=Cli.id_Cliente
Where cli.Ciudad = 'Salta'
Group by ped.id_Articulo
Having Ped.PrecioTotal/Ped.Cantidad	= max(Ped.PrecioTotal/Ped.Cantidad)
)