Feature: Inyección de alertas de atención (App Stop)
  Como usuario que se distrae fácilmente en aplicaciones de entretenimiento
  Quiero recibir una ventana emergente tras un tiempo continuo de uso
  Para recuperar el autocontrol y volver a mi actividad principal

  Background:
    Given que el usuario tiene la cuenta activa en Brain Safe
    And la función "App Stop" se encuentra activada

  Scenario: Aparición de alerta tras superar el tiempo límite en una app distractora
    Given que el usuario abre una aplicación marcada como distractora, por ejemplo "YouTube"
    When transcurren 10 minutos continuos de uso dentro de dicha aplicación
    Then el sistema muestra una ventana emergente de "App Stop"
    And la ventana interrumpe momentáneamente la interacción del usuario con la app

  Scenario Outline: Reinicio del contador tras cerrar la app distractora
    Given que el usuario cierra la aplicación "<app>" antes de los 10 minutos
    When vuelve a abrir "<app>"
    Then el contador de tiempo se reinicia desde cero

    Examples:
      | app       |
      | YouTube   |
      | Instagram |
