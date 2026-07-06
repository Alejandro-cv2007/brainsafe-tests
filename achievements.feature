Feature: Recompensas por racha de enfoque (Achievements)
  Como usuario
  Quiero recibir una recompensa al mantener una racha de sesiones sin distraerme
  Para sentirme motivado a continuar con mis hábitos digitales saludables

  Background:
    Given que el usuario completó sesiones de enfoque en días consecutivos

  Scenario: Otorgamiento de logro por racha cumplida
    Given que el usuario lleva una racha activa de 5 días sin interrumpir sus sesiones de enfoque
    When finaliza la sesión de enfoque del quinto día sin distracciones registradas
    Then el sistema otorga un logro "Achievement" al usuario
    And se muestra una notificación de felicitación dentro de la app

  Scenario: Pérdida de racha por interrupción
    Given que el usuario tiene una racha activa de 3 días
    When el usuario desactiva el Modo Focus antes de completar la sesión del día
    Then la racha se reinicia a 0
    And no se otorga ningún logro asociado a esa racha
