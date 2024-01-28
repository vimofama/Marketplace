# Created by Cesar at 09/01/2024
# language: es
Característica: Promoción de productos
  Como administrador
  Quiero que lo productos se destaquen por una semana cada vez que hayan superado las 1000 unidades vendidas
  Para aumentar la visibilidad y rentabilidad de los productos de los minoristas.

  Escenario: Un producto es destacado
    Dado que un Minorista tiene un Producto de la Categoría "Vestimenta"
    * el Producto ha superado las 1000 unidades vendidas
    * existan otro 5 Productos de la Categoría “Vestimenta”
    Cuando un Cliente busque un Producto de la Categoría "Vestimenta"
    Entonces se mostrará el Producto destacado en la primera posición durante una semana
    Y el resto de los productos se ordenarán por número de ventas

  Escenario: Múltiples productos son destacados
    Dado que un Minorista tiene un Producto de la Categoría "Vestimenta"
    * el Producto ha superado las 1000 unidades vendidas
    * otro Minorista tiene un Producto de la Categoría "Vestimenta"
    * el otro Producto ha superado las 1000 unidades vendidas
    * el otro Minorista solicitó destacar el Producto
    * el primer Producto fue comprado más veces que el segundo Producto
    Cuando un Cliente busque un Producto de la Categoría "Vestimenta"
    Entonces se mostrará primero el Producto con más compras durante una semana
