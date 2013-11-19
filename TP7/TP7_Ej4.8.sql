/*
Ejercicio 4.8
Hallar el nombre de los proveedores cuya categoría sea mayor que la de todos los proveedores que proveen el artículo Cuaderno.
*/

Select prov.Nombre 
from Proveedor as prov
where prov.Categoria > 
(
	Select Max(prov2.categoria)
	from Proveedor as Prov2
	inner join Provee on Provee.id_Proveedor=Prov2.id_Proveedor
	inner join Articulo on Art.id_Articulo=Provee.id_Articulo
	where Art.Descripcion = 'Cuaderno'
)
