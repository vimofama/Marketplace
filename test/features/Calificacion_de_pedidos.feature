# Created by Cesar at 09/01/2024
# language: es
Característica: Calificación de pedidos.
  Como minorista
  Quiero que evaluar la retroalimentación que los clientes proporcionan sobre los pedidos,
  mediante una calificación del 1 al 5,
  Para mejorar el proceso de pedidos.

  Escenario: Un cliente realiza una nueva calificación
    Dado que un Pedido es "Entregado"
    Cuando el Cliente proporcione una Calificación al Pedido
    Entonces la Calificación promedio de pedidos del Minorista se actualizará
    Y se le mostrará al Minorista al minorista los Pedidos calificados por debajo de 3.

  #Alternativa:
  #Escenario: Un cliente realiza una calificación negativa
  #  Dado que un Pedido es "Entregado"
  #  Cuando el Cliente proporcione una Calificación por debajo de 3 al Pedido
  #  Entonces la Calificación promedio de pedidos del Minorista se actualizará
  #  Y se le mostrará al Minorista al minorista la información del Pedido.
