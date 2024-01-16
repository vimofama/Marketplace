# Created by Cesar at 09/01/2024
# language: es
Característica: Promoción de productos.
  Como minorista
  Quiero destacar mis productos
  Para aumentar su visibilidad entre los clientes, aumentando la posibilidad de compra.

  Escenario: Destacar productos mediante pago
    Dado que el Minorista tiene un Producto "Disponible"
    Cuando el Minorista solicita destacar el Producto
    Y realiza el Pago por la Promoción
    Entonces el producto se marcará como "Destacado"
    Y el producto se posicionará entre los primeros productos mostrados a los clientes, durante una semana.


    Dado que el minorista ha pagado promoción
    Cuando alguien busque un producto
    Entonces se mostrará en las primeras posiciones durante una semana.


    # Que pasaria si hay dos productos destacados?