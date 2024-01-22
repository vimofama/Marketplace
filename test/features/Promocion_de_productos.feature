# Created by Cesar at 09/01/2024
# language: es
Característica: Promoción de productos.
  Como minorista
  Quiero destacar mis productos
  Para aumentar su visibilidad entre los clientes, aumentando la posibilidad de compra.

  Escenario: Destacar un producto mediante pago
    Dado que un Minorista tiene un Producto de la Categoría "Vestimenta"
    Y el Minorista ha Pagado por una Promoción
    Cuando un Cliente busque un Producto de la Categoría "Vestimenta"
    Entonces se mostrará el Producto en las primeras posiciones durante una semana.

  Escenario: Varios productos destacados
    Dado que un Minorista tiene un Producto de la Categoría "Vestimenta"
    * el Minorista ha Pagado por una Promoción
    * otro Minorista tiene un Producto de la Categoría "Vestimenta"
    * el otro Minorista ha Pagado por una Promoción
    * el primer Producto fue comprado más que el segundo Producto
    Cuando alguien busque un Producto de la Categoría "Vestimenta"
    Entonces se mostrará primero el Producto con más compras durante una semana.
