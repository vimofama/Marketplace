# Created by Cesar at 08/01/2024
# language: es
Característica: Generación de informes.
  Como minorista
  Quiero generar informes sobre los ingresos y los productos más vendidos en cada mes
  Para evaluar la eficiencia del negocio y optimizar el tiempo de análisis.

  Escenario: Generar informe mensual de ingresos y productos más vendidos
    Dado que soy un minorista con transacciones registradas en enero en mi sistema
    Cuando solicito el informe mensual de ingresos y productos más vendidos para enero
    Entonces el sistema procesa la solicitud, recopila la información y genera un informe detallado
    E incluye el total de ingresos del mes de enero
    Y una lista de los productos más vendidos con sus cantidades respectivas


    Dado que el minorista tiene transacciones en enero
    Cuando solicito el informe mensual de ingresos y productos más vendidos
    Entonces se mostrara el total de ingresos del mes de enero y una lista de los productos más vendidos con sus cantidades respectivas