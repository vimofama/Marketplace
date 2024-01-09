# Created by DELL at 8/1/2024
# language: es
Característica: Monitoreo de pedidos.
  Como minorista
  Quiero tener conocimiento del estado de los pedidos,
  con detalles sobre el proceso de envío y tiempo de entrega,
  Para detectar problemas y garantizar la entrega

  Regla: Cambio del estado del pedido
    Escenario: Pedido entregado.
      Dado que el minorista tiene un pedido con estado "Enviado"
      Cuando el pedido es entregado #Cuando el minorista registra la entrega del pedido.
      Entonces el pedido debe cambiar el estado a "Entregado".

    Escenario: Pedido con retraso.
      Dado que el minorista tiene un pedido con estado "Enviado"
      Cuando se supera la fecha y la hora de entrega estimada
      Entonces el pedido debe cambiar el estado a “Con retraso".

    Escenario: Pedido entregado con retraso.
      Dado que el minorista tiene un pedido con estado "Con retraso"
      Cuando el pedido es entregado #Cuando el minorista registra la entrega del pedido.
      Entonces el pedido debe cambiar el estado a "Entregado con retraso".

    Escenario: Consultar detalles de un pedido entregado
      Dado que el minorista tiene un pedido con el estado "Entregado"
      Cuando el minorista selecciona el pedido
      Entonces se muestra el estado “Entregado” como estado actual del pedido.
      * se muestra la ubicación actual del pedido.
      * se muestra la fecha y hora de la entrega del pedido

  Regla: Consulta Detalles del Pedido
    Escenario: Consultar detalles de un pedido enviado
      Dado que el minorista tiene un pedido con el estado "Enviado"
      Cuando el minorista selecciona el pedido
      Entonces se muestra el estado “Enviado” como estado actual del pedido
      * se muestra la ubicación actual del pedido
      * se muestra la fecha y la hora de entrega estimada.
      * se muestra el tiempo estimado de entrega.

    Escenario: Consultar detalles de un pedido con retraso
      Dado que el minorista tiene un pedido con el estado "Con retraso"
      Cuando el minorista selecciona el pedido
      Entonces se muestra el estado “Con retraso” como estado actual del pedido.
      * se muestra el motivo del retraso
      * se muestra la ubicación actual del pedido
      * se muestra la fecha y la hora de entrega inicialmente estimada.

    Escenario: Consultar detalles de un pedido entregado con retraso
      Dado que el minorista tiene un pedido con el estado "Entregado con retraso"
      Cuando el minorista selecciona el pedido
      Entonces se muestra el estado “Entregado con retraso” como estado actual del pedido.
      * se muestra el motivo del retraso
      * se muestra la ubicación actual del pedido
      * se muestra el tiempo estimado de entrega.
      * se muestra el tiempo de retraso.

