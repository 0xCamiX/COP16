= SPEC-001: Aplicación Móvil de Gestión de Actividades y Eventos para la COP16 en Colombia, Cali
:sectnums:
:toc:

== 1. Introducción

=== 1.1 Propósito

El propósito de este documento es especificar los requisitos funcionales y no funcionales de la "Aplicación Móvil de Gestión de Actividades y Eventos para la COP16 en Colombia, Cali". La aplicación está diseñada para proporcionar a los asistentes y organizadores de la COP16 una plataforma centralizada para consultar y gestionar eventos, actividades, y participación, así como recibir notificaciones y actualizaciones de última hora. Este documento sigue los lineamientos del estándar IEEE 830.

=== 1.2 Alcance

Esta aplicación móvil se desarrollará con el objetivo de facilitar la administración y consulta de eventos, actividades y participantes en la conferencia COP16 en Cali, Colombia. La funcionalidad cubrirá:
- Visualización y registro de eventos y actividades.
- Gestión de ubicaciones, incluyendo salas de conferencia.
- Inscripción de participantes en eventos específicos.
- Notificaciones para actualizaciones y recordatorios de eventos.

El sistema está diseñado para ser utilizado por organizadores, asistentes y otros participantes de la conferencia COP16.

=== 1.3 Definiciones, acrónimos y abreviaturas

- **COP16**: 16ª Conferencia de las Partes en el marco de la Convención sobre la Biodiversidad de las Naciones Unidas.
- **Participante**: Usuario registrado en la aplicación que puede ver eventos y registrarse en ellos.
- **Organizador**: Usuario con permisos para crear y gestionar eventos y participantes.

=== 1.4 Referencias

- IEEE 830-1998: IEEE Recommended Practice for Software Requirements Specifications.
- Documentación de referencia del entorno de desarrollo móvil (e.g., Android SDK, iOS SDK).
- Guías de diseño de interfaz de usuario móvil (Apple Human Interface Guidelines, Material Design).

== 2. Descripción General

=== 2.1 Perspectiva del producto

La aplicación móvil es un sistema independiente que se conectará a una base de datos interna para almacenar los eventos, participantes, ubicaciones y sus respectivas relaciones. La aplicación estará disponible para dispositivos móviles Android e iOS y operará sin dependencia de sistemas externos una vez instalada, salvo la recepción de actualizaciones o notificaciones en tiempo real.

=== 2.2 Funciones del producto

La aplicación proporcionará las siguientes funciones principales:
1. **Consulta de eventos y actividades**: Listado de eventos organizados por día, con detalles como nombre, descripción, ubicación, fecha y hora.
2. **Gestión de participantes**: Registro de usuarios como participantes para permitir la inscripción en eventos y el seguimiento de asistencia.
3. **Inscripción en eventos**: Los participantes podrán inscribirse en eventos, con la posibilidad de cancelar o cambiar la inscripción.
4. **Notificaciones**: Alertas y recordatorios automáticos para eventos próximos o actualizaciones de última hora.

=== 2.3 Características del usuario

Los usuarios principales serán:
- **Participantes**: Asistentes y otros interesados en los eventos de la COP16.
- **Organizadores**: Administradores de la COP16 responsables de gestionar el contenido de la aplicación, como el registro de eventos y el envío de notificaciones.

=== 2.4 Restricciones

- **Conectividad**: Algunas funciones, como la recepción de notificaciones, requieren conexión a internet.
- **Compatibilidad**: La aplicación debe funcionar en dispositivos Android (versión 7.0 o superior) e iOS (versión 12.0 o superior).

=== 2.5 Suposiciones y dependencias

- Se asume que los usuarios tendrán acceso a dispositivos móviles con las versiones mínimas de sistemas operativos especificadas.
- Los organizadores contarán con acceso a una plataforma de administración desde la cual podrán gestionar los datos de la conferencia.

== 3. Requisitos Específicos

=== 3.1 Requisitos funcionales

==== RF-1: Registro y autenticación de usuarios

- **Descripción**: El sistema permitirá que los usuarios se registren y se autentiquen para poder acceder a las funciones de inscripción en eventos.
- **Prioridad**: Debe
- **Entrada**: Información de usuario (correo electrónico, nombre).
- **Salida**: Acceso a la cuenta del usuario.
  
==== RF-2: Gestión de eventos

- **Descripción**: La aplicación permitirá a los organizadores registrar eventos con detalles específicos y visualizarlos en una lista.
- **Prioridad**: Debe
- **Entrada**: Datos de eventos (nombre, descripción, ubicación, fecha, hora).
- **Salida**: Lista de eventos actualizada.

==== RF-3: Inscripción de participantes en eventos

- **Descripción**: Los participantes podrán registrarse en eventos específicos desde la aplicación.
- **Prioridad**: Debe
- **Entrada**: Selección de evento.
- **Salida**: Confirmación de inscripción.

==== RF-4: Notificaciones y recordatorios

- **Descripción**: La aplicación enviará notificaciones automáticas para eventos en los que el usuario esté inscrito.
- **Prioridad**: Debería
- **Entrada**: Evento próximo.
- **Salida**: Notificación al usuario.

=== 3.2 Requisitos no funcionales

==== RNF-1: Rendimiento

- **Descripción**: La aplicación debe cargar la lista de eventos en menos de 3 segundos.
- **Prioridad**: Debería

==== RNF-2: Usabilidad

- **Descripción**: La interfaz debe ser intuitiva y fácil de usar, cumpliendo con las guías de diseño de Material Design y Apple.
- **Prioridad**: Debería

==== RNF-3: Seguridad

- **Descripción**: La información del usuario debe protegerse con autenticación y conexión segura (HTTPS).
- **Prioridad**: Debe

== 4. Interfaces del sistema

=== 4.1 Interfaz de usuario

- **Pantalla principal**: Lista de eventos del día con opción para filtrar por fecha y ubicaciones.
- **Pantalla de detalles de evento**: Información detallada del evento y opción de inscripción.
- **Pantalla de perfil de usuario**: Información personal y eventos registrados.

=== 4.2 Interfaz de administración

- **Gestión de eventos**: Acceso para crear, modificar y eliminar eventos.
- **Gestión de notificaciones**: Configuración de alertas y recordatorios para los usuarios.

== 5. Atributos del sistema

=== 5.1 Confiabilidad

La aplicación debe tener una disponibilidad del 99% durante la duración de la conferencia.

=== 5.2 Mantenibilidad

El código debe seguir un esquema modular para facilitar el mantenimiento y futuras actualizaciones.

== 6. Anexos

=== 6.1 Diagrama de relaciones de la base de datos

Un diagrama de la base de datos en 3FN para la gestión de eventos, ubicaciones, participantes y registros.

== 7. Historia de revisiones

| Fecha       | Versión | Descripción          | Autor      |
|-------------|---------|----------------------|------------|
| 04/11/2024  | 1.0     | Especificación inicial | Arquitecto de Software |