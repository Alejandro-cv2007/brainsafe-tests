Feature: Tiempo de respuesta del bloqueo
  Como usuario en busca de enfoque
  Quiero que el filtro oculte elementos distractores en menos de 0.5 segundos
  Para evitar procesar visualmente el estímulo antes del bloqueo

  Scenario: Bloqueo dentro del tiempo límite establecido
    Given que el usuario tiene activo el filtro de bloqueo selectivo
    When el usuario carga la página de inicio de una app monitoreada
    Then los elementos distractores quedan ocultos en menos de 0.5 segundos
    And se mide y registra el tiempo de respuesta del bloqueo
