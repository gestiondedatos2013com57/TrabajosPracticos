/*
Ejercicio 4.6
Hallar los pedidos en los que el cliente 23 solicita artículos no pedidos por el cliente 30.
*/

Select * from Pedido
where id_Cliente=23 
and id_Articulo not in 
(Select id_Articulo from Pedido 
where id_Cliente=30)