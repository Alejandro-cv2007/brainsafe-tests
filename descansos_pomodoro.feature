Feature: Configuración de descansos (Sleep Adjustment)
  Como estudiante
  Quiero establecer intervalos de enfoque y descanso (Pomodoro, Personalizado, Despegue, Post-Acción)
  Para gestionar mi energía mental de forma óptima entre tareas

  Background:
    Given que el usuario se encuentra en la sección "Descansos" de Brain Safe

  Scenario Outline: Selección de un tipo de descanso
    When el usuario selecciona el tipo de descanso "<tipo>"
    Then el sistema configura los intervalos correspondientes a "<tipo>"
    And la sesión de enfoque queda activa con dicha configuración

    Examples:
      | tipo          |
      | Pomodoro      |
      | Personalizado |
      | Despegue      |
      | Post-Acción   |

  Scenario: Notificación de descanso al finalizar el intervalo
    Given que el usuario configuró el modo "Pomodoro" con 25 minutos de enfoque y 5 minutos de descanso
    When transcurren los 25 minutos de enfoque
    Then el sistema envía una notificación invitando al descanso
    And el temporizador cambia automáticamente al estado "En descanso"
