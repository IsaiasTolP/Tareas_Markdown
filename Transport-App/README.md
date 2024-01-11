<div align="justify">

# Especificación de los casos de uso (Transport App)

## ¿Qué son?
Una especificación de casos de uso es una técnica que se usa en Ingeniería de Software, esta consiste en describir de forma detallada, las diferentes interacciones que se darán entre usuarios y sistema. Esto incluirá, que provoca lo que interacción, las acciones y respuestas que se esperan por parte del sistema.

## <div align="center">CASOS DE USO</div>

### Un usuario se quiere registrar o dar de baja

#### Actores involucrados:
- Usuario
- Administrador
- Sistema
Objetivo:
- El usuario dará una serie de credenciales que el sistema deberá recoger y añadir a la base de datos de la aplicación, registrando al usuario en la misma. Mediante la parte dedicada a tareas de administración también se podrá registrar a un administrador.
- El usuario pedirá mediante la opción habilitada la eliminación de su cuenta. En cambio, el admistrador bajo razón justificada por el contrato de uso de la aplicación, también podrá dar de baja al usuario. Un administrador también podrá darse de baja, debido a el abandono del puesto de trabajo, por las razones que sean.

#### Flujo principal del registro:
- NOTA: El administrador también puede realizar un registro de un usuario si cuenta con los datos pertinentes.
1. El usuario entra en la plataforma de registro.
2. El usuario introduce la información correspondiente en los campos designados para la misma. Si esta información no corresponde con el formato esperado por este campo se le deberá hacer saber al usuario, a través de un mensaje de error (ejemplo: Nº de teléfono no válido).
3. Una vez el usuario los envíe, el sistema procederá a realizar las modificaciones necesarias en la base de datos para registrar al usuario en el servicio. Mientras tanto el usuario debe esperar en una pantalla de carga a que el proceso se complete.
4. Una vez realizado el usuario puede acceder a todas las funciones de la aplicación que se le permiten a un actor de tipo usuario.
</div>