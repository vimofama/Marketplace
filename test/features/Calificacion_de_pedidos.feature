# Created by Cesar at 09/01/2024
# language: es
Característica: Calificación de pedidos.
  Como minorista
  Quiero que todos los usuarios proporcionen retroalimentación sobre los pedidos que han realizado,
  mediante una calificación del 1 al 5,
  Para mejorar el proceso de pedidos.

  Escenario: Los usuarios pueden proporcionar retroalimentación mediante calificación de pedidos
    Dado que un minorista completa un pedido
    Y la califiación de pedidos promedio del minorista es 5 con una sola calificación
    Cuando el ususario proporciene una calificación del 3 al pedido
    Entonces la calificación de pedidos promedio del minorista será 4.

