Feature: Disponibilidad offline del servicio
  Como usuario sin conexión estable
  Quiero que las reglas de bloqueo y los temporizadores sigan funcionando sin internet
  Para asegurar mis espacios de enfoque en cualquier lugar

  Scenario: Bloqueo activo sin conexión a internet
    Given que el usuario configuró reglas de bloqueo previamente con conexión
    When el dispositivo pierde la conexión a internet
    Then las reglas de bloqueo configuradas siguen aplicándose con normalidad

  Scenario: Persistencia del temporizador de enfoque sin conexión
    Given que el usuario inició una sesión "Modo Focus" estando conectado
    When se desconecta de internet durante la sesión
    Then el temporizador continúa corriendo sin interrupciones
