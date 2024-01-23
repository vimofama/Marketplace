# Created by Cesar at 09/01/2024
# language: es
Característica: Calificación de pedidos.
  Como minorista
  Quiero que todos los clientes proporcionen retroalimentación sobre los pedidos han recibido,
  mediante una calificación del 1 al 5,
  Para evaluar el proceso de pedidos.

  Escenario: Un cliente califica negativamente el pedido
    Dado que un Cliente proporciona una Calificación de 2 a un Pedido
    Cuando el Minorista solicite que se muestre las calificaciones de los Pedidos
    Entonces se mostrará el promedio de Calificación de los pedidos
    Y se mostrará una alerta con el número de pedidos calificados negativamente, por debajo de 3.

  #Escenario: Un cliente califica positivamente el pedido
  #  Dado que un Cliente proporciona una Calificación de 3 al Pedido
  #  Cuando el Minorista solicite que se muestre la calificación de los Pedidos
  #  Entonces se mostrará el promedio de Calificación de los pedidos
  #  Y se mostrará el número de pedidos calificados positivamente.

