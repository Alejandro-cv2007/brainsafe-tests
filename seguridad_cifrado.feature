Feature: Seguridad y cifrado de datos
  Como usuario
  Quiero que mis registros de navegación y contraseñas estén cifrados localmente
  Para garantizar la privacidad total de mi información personal

  Scenario: Cifrado de credenciales al momento del registro
    Given que el usuario completa el formulario de registro con su contraseña
    When el sistema almacena la información en el dispositivo
    Then la contraseña se guarda en formato cifrado y no en texto plano

  Scenario: Cifrado del historial de navegación
    Given que el usuario navega por aplicaciones monitoreadas por Brain Safe
    When el sistema registra el historial de uso
    Then dicho historial se almacena cifrado localmente en el dispositivo
