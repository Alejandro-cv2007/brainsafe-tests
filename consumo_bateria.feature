Feature: Consumo mínimo de batería
  Como usuario móvil
  Quiero que el servicio en segundo plano consuma menos del 3% de batería diaria
  Para usar la aplicación de manera continua sin afectar la autonomía del teléfono

  Scenario: Medición del consumo diario del servicio en segundo plano
    Given que Brain Safe ejecuta sus temporizadores y monitoreo en segundo plano
    When transcurren 24 horas de uso continuo del dispositivo
    Then el consumo de batería atribuido a Brain Safe es menor al 3%
