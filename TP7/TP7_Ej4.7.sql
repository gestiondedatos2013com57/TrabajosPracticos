/*
Ejercicio 4.7
Hallar los pares de ciudades (ciudad1, ciudad2), tales que un proveedor de la ciudad1 provee artículos pedidos por clientes de la ciudad2.
*/

Select prov.Ciudad, Cli,Ciudad
from Proveedor as prov,Cliente as Cli, Provee
where 
Provee.id_Proveedor = Prov.id_Proveedor
Provee.id_Articulo in 
(
	Select id_Articulo from Pedido as Ped
	where Ped.id_Cliente=Cli.id_Cliente
)