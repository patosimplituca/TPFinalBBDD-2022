select cliente.nombre ||" "|| cliente.apellido as Nombre_y_Apellido, producto.nombre as Nombre_Del_producto, pedido.cantidad as cantidad_de_productos_pedidos,producto.precio as Precio_por_unidad,(pedido.cantidad*producto.precio) as total_a_pagar from cliente
inner join producto, pedido, pedido_detalles
on cliente.id_cliente=pedido.id_cliente and pedido.id_pedido=pedido_detalles.id_pedido and pedido_detalles.id_producto=producto.id_producto;



select count(*) as cantidad_de_clientes_registrados from cliente;



select cliente.nombre ||" "|| cliente.apellido as Nombre_y_Apellido , domicilio.pais from cliente
inner join domicilio, cliente_domicilio
on cliente.id_cliente=cliente_domicilio.id_cliente and cliente_domicilio.id_domiclio=domicilio.id_domicilio where cliente.nombre like "juan%";



select cliente.nombre ||" "|| cliente.apellido as Cliente_que_realizo_mas_pedidos , domicilio.pais, max(pedido.cantidad) as Cantidad_de_pedidos_hechos from cliente
inner join domicilio,pedido,cliente_domicilio
on cliente.id_cliente=cliente_domicilio.id_cliente and  cliente_domicilio.id_domiclio=domicilio.id_domicilio and cliente.id_cliente=pedido.id_cliente;



select cliente.nombre ||" "|| cliente.apellido as Nombre_y_Apellido, domicilio.pais,producto.nombre as nombre_del_producto_pedido ,categoria.nombre as categoria_del_prodcuto from cliente
inner join cliente_domicilio
on cliente.id_cliente=cliente_domicilio.id_cliente
inner join domicilio
on cliente_domicilio.id_domiclio=domicilio.id_domicilio
inner join pedido
on cliente.id_cliente=pedido.id_cliente
inner join pedido_detalles
on pedido.id_pedido=pedido_detalles.id_pedido
inner join producto
on pedido_detalles.id_producto=producto.id_producto
inner join producto_categoria
on producto.id_producto=producto_categoria.id_producto
inner join categoria
on producto_categoria.id_categoria=categoria.id_categoria

