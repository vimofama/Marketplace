# Created by DELL at 8/1/2024
# language: es
Característica: Monitoreo de pedidos.
  Como minorista
  Quiero conocer el estado de los pedidos,
  con detalles sobre el proceso de envío y tiempo de entrega,
  Para detectar problemas y garantizar la entrega

  Escenario: Pedido Pagado
    Dado que un Pedido tiene el Estado "Pagado"
    Cuando se muestre el Dashboard de Monitoreo
    Entonces se mostrará al pedido en la lista de pedidos con estado "Pagado"
    Y se mostrará su ubicación actual y fecha estimada de entrega

  Escenario: Pedido Enviado
    Dado que un Pedido tiene el Estado "Enviados"
    Cuando se muestre el Dashboard de Monitoreo
    Entonces se mostrará al pedido en la lista de pedidos con estado "Enviados"
    Y se mostrará su ubicación actual y fecha estimada de entrega

  Escenario: Pedido Entregado
    Dado que un Pedido tiene el Estado "Entregado"
    Cuando se muestre el Dashboard de Monitoreo
    Entonces se mostrará al pedido en la lista de pedidos con estado "Entregado"
    Y se mostrará la fecha de entrega.

#Opción Dos
#Característica: Monitoreo de pedidos.
#  Como minorista
#  Quiero dar seguimiento a los pedidos,
#  con el resumen del total de pedidos pendientes de entrega, pagados y enviados
#  Para detectar problemas y garantizar la entrega

#  Escenario: Pedido es Pagado
#    Dado que el Cliente ha pagado el Pedido
#    Y el Dashboard de Monitoreo en pedidos con Estado "Pagado" tiene el valor de 5
#    Cuando se muestre el Dashboard de Monitoreo
#    Entonces el valor de Pedidos con Estado "Pagado" será de 6

#  Escenario: Pedidos es Enviado
#    Dado que el Minorista ha enviado el Pedido
#    Y el Dashboard de Monitoreo en pedidos con Estado "Enviado" tiene el valor de 6
#    Cuando se muestre el Dashboard de Monitoreo
#    Entonces el valor de Pedidos con Estado "Enviado" será de 7

#  Escenario: Pedido es Entregado
#    Dado que el Cliente ha recibido el Pedido
#    Y el Dashboard de Monitoreo en el total de pedidos pendientes de entrega tenga el valor de 5
#    Cuando se muestre el Dashboard de Monitoreo
#    Entonces el valor del total de pedidos pendientes de entrega será de 4



