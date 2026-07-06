Feature: Bloqueo de secciones específicas (App-Segment Stop)
  Como usuario
  Quiero bloquear únicamente secciones distractoras dentro de una app (Reels/Shorts)
  Para mantener acceso a las funciones útiles sin eliminar la app por completo

  Background:
    Given que el usuario ingresó al menú de "Segments" de Brain Safe
    And seleccionó la aplicación "Instagram" como aplicación a intervenir

  Scenario: Bloqueo exitoso de la sección de Reels
    Given que el usuario activa el filtro "Bloquear Reels"
    When el usuario abre la aplicación Instagram
    Then la pestaña de Reels no es accesible desde la barra de navegación
    And el resto de funciones, como mensajería, perfil y búsqueda, permanece disponible

  Scenario: Intento de acceso directo a una sección bloqueada
    Given que la sección "Shorts" de YouTube está bloqueada
    When el usuario intenta acceder mediante un enlace directo
    Then el sistema redirige al usuario a la pantalla de inicio de la app
    And se registra el intento en el historial de bloqueos
