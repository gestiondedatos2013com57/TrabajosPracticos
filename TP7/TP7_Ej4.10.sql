/*

Ejercicio 4.10
Hallar los clientes que han pedido 2 o más artículos distintos.

*/

Select * from Clientes Cli
where cli.id_Cliente
(
Select id_Cliente
from Pedido
group by id_Cliente
having count(id_Articulo) >= 2
)