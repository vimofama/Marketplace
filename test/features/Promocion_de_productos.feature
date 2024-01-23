# Created by Cesar at 09/01/2024
# language: es
Característica: Promoción de productos
  Como administrador
  Quiero que cada minorista pueda destacar, por una semana,
  hasta tres de sus productos que hayan superado las 1000 unidades vendidas
  Para aumentar la visibilidad y rentabilidad de sus productos y,
  por consiguiente, impulsar la rentabilidad del Marketplace.

  Escenario: Un producto es destacado
    Dado que un Minorista tiene un Producto de la Categoría "Vestimenta"
    * el Producto ha superado las 1000 unidades vendidas
    * el Minorista solicitó destacar el Producto
    * existan otro 5 Productos de la Categoría “Vestimenta”
    Cuando un Cliente busque un Producto de la Categoría "Vestimenta"
    Entonces se mostrará el Producto destacado en la primera posición durante una semana.
    Y el resto de los productos se mostrarán en orden alfabético.

  Escenario: Múltiples productos son destacados
    Dado que un Minorista tiene un Producto de la Categoría "Vestimenta"
    * el Producto ha superado las 1000 unidades vendidas
    * el Minorista solicitó destacar el Producto
    * otro Minorista tiene un Producto de la Categoría "Vestimenta"
    * el otro Producto ha superado las 1000 unidades vendidas
    * el otro Minorista solicitó destacar el Producto
    * el primer Producto fue comprado más veces que el segundo Producto
    Cuando un Cliente busque un Producto de la Categoría "Vestimenta"
    Entonces se mostrará primero el Producto con más compras durante una semana.

  Escenario: El minorista intenta superar el límite de productos
    Dado que un Minorista tiene cuatro Productos de la Categoría "Vestimenta"
    * los Productos han superado las 1000 unidades vendidas cada uno
    * el Minorista solicitó destacar los cuatro Productos
    * existan otro 5 Productos de la Categoría “Vestimenta”
    Cuando un Cliente busque un Producto de la Categoría "Vestimenta"
    Entonces se mostrarán los tres primeros productos que el minorista solicitó destacar en las primeras posiciones durante una semana.
    * el resto de los productos se mostrarán en orden alfabético
    * el cuarto producto se mostrará en la primera posición la siguiente semana.

  #Escenario: El minorista intenta superar el límite de productos
  #  Dado que un Minorista tiene cuatro Productos
  #  * los Productos han superado las 1000 unidades vendidas cada uno
  #  * el Minorista solicitó destacar tres de los Productos
  #  Cuando el minorista intente destacar el cuarto Producto
  #  Entonces se mostrarán los productos actualmente destacados
  #  Y se le indicará al Minorista el límite de Productos destacados.

