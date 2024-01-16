# Created by DELL at 8/1/2024
# language: es
Característica: Monitoreo de pedidos.
  Como minorista
  Quiero conocer el estado de los pedidos,
  con detalles sobre el proceso de envío y tiempo de entrega,
  Para detectar problemas y garantizar la entrega

  Escenario: Notificación del estado del pedido
    Dado que un Pedido está en proceso de entrega
    Cuando el Pedido cambie de estado
    Entonces se enviará una notifica al Minorista con la ubicación actual del pedido y fecha estimada de entrega.


