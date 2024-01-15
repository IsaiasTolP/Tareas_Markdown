<div align="justify">

# Especificación de los casos de uso (Transport App)

## ¿Qué son?
Una especificación de casos de uso es una técnica que se usa en Ingeniería de Software, esta consiste en describir de forma detallada, las diferentes interacciones que se darán entre usuarios y sistema. Esto incluirá, que provoca lo que interacción, las acciones y respuestas que se esperan por parte del sistema.

## <div align="center">CASOS DE USO</div>

### Un usuario se quiere registrar o dar de baja

#### Actores involucrados:
- Usuario
- Administrador

#### Descripción:
- El usuario dará una serie de credenciales que el sistema deberá recoger y añadir a la base de datos de la aplicación, registrando al usuario en la misma. Mediante la parte dedicada a tareas de administración también se podrá registrar a un administrador.
- El usuario pedirá mediante la opción habilitada la eliminación de su cuenta. En cambio, el admistrador bajo razón justificada por el contrato de uso de la aplicación, también podrá dar de baja al usuario. Un administrador también podrá darse de baja, debido a el abandono del puesto de trabajo, por las razones que sean.

#### Flujo principal del registro o de baja:
- NOTA: El administrador también puede realizar un registro de un usuario si cuenta con los datos pertinentes, o de sí mismo. O dar de baja un usuario si cuenta con la justificación necesaria.
1. El usuario entra en la plataforma de registro o de baja.
2. El usuario introduce la información correspondiente en los campos designados para la misma. Si esta información no corresponde con el formato esperado por este campo se le deberá hacer saber al usuario, a través de un mensaje de error (ejemplo: Nº de teléfono no válido). En caso de una baja, selecciona la opción y confirma la elección.
3. Una vez el usuario los envíe, el sistema procederá a realizar las modificaciones necesarias en la base de datos para registrar o dar de baja al usuario en el servicio. Mientras tanto el usuario debe esperar en una pantalla de carga a que el proceso se complete.
4. Una vez realizado el usuario puede acceder normalmente a la aplicación como usuario (o administrador). En caso de baja ya no tendrá acceso.

#### Condiciones previas
- Si el usuario o administrador se quiere registrar no deberá estar registrado. Lo mismo para.
- Si se quiere dar de baja al usuario o administrador, este deberá estar registrado previamente.

#### Condiciones posteriores
- El usuario, si se registra tendrá acceso a todas las funciones de usuario o administrador.
- Si el usuario es dado de baja, perderá acceso a las funciones de usuario o administrador.

### Definir medio de transporte

#### Actores involucrados
- Administrador

#### Descripción
- El administrador tiene que seleccionar que medio de transporte están disponibles en la app, para su utilización. El sistema recogerá esa orden y solo mostrará a los clientes los medios de transporte disponibles.

#### Flujo principal
1. El administrador desde su interfaz de control se encarga de indicar al sistema que medios de transporte tendrá la aplicación.
2. El sistema recoge los datos proporcionados por el administrador y la guarda en su base de datos.
3. El sistema muestra los medios de transporte disponibles a los usuarios.

#### Condiciones previas
- Una interfaz de administrador que permita hacer tales cambios en el sistema
- Contar con la infraestructura de base de datos que permitan al sistema entender lo que el administrador le está indicando.

#### Condiciones posteriores
- Una infraestructura que permita desplegar al sistema las indicaciones del administrador en la aplicación de los clientes.

### Definir precio de transporte

#### Actores involucrados
- Administrador

#### Descripción
- El administrador según las ordenes recibidas por la empresa se encargará de asignarle los precios a los diferentes servicios que ofrece la aplicación.

#### Flujo principal
1. El administrador desde su interfaz selecciona los precios correspondientes a cada servicio
2. El sistema guarda esos parametros en su base de datos para mostrarselos al cliente en el lugar indicado.
3. El usuario cuando acceda al servicio tendrá una perspectiva completa del precio de cada servicio, ya que el sistema se lo está mostrando.

#### Condiciones previas
- Una interfaz de administrador que permita hacer tales cambios en el sistema.
- Contar con la infraestructura de base de datos que permitan al sistema entender lo que el administrador le está indicando.

#### Condiciones posteriores
- Una infraestructura que permita desplegar al sistema las indicaciones del administrador en la aplicación de los clientes.

### Login >(include) Verificar credenciales

#### Descripción
- Un Login, será un proceso a través del cual el usuario introducirá sus credenciales personales, para poder entrar a la cuenta correspondiente que tiene registrada.
- Para ello, obligatoriamente se tendrá que valer de otro caso de uso, la verificación de credenciales.

#### Actores involucrados
- Usuario

#### Flujo principal del login
1. El usuario entrará a la sección de la aplicación donde se realiza la acción del login.
2. El usuario introduce sus credenciales y confirma el envío de las mismas para ser cotejadas por el sistema.
#### Flujo principal de la verificación de credenciales
1. El sistema hará una consulta en su base de datos, con las credenciales proporcionadas por el usuario.
2. Si los datos coinciden con alguna entrada de la base de datos, se lo dejará entra con la cuenta asociada a esas credenciales. De lo contrario, el sistema mostrará un mensaje de error indicando al usuario que sus credenciales no coinciden.
#### Salidas del login
1. El login se hace con exito y el usuario accede.
2. El login falla y el usuario debe volver a proporcionar credenciales.

#### Recomendación de función extra
- Factor de doble autentificación, de esta manera el usuario dispondrá de una capa más de seguridad en su cuenta.

#### Condiciones previas
- Una página específica de login plenamente funcional.
- El usuario debe haberse registrado si pretende entrar.
- Una base de datos que permita consultar al sistema las credenciales introducidas.

#### Condiciones posteriores
- El usuario debe obtener acceso a su cuenta tal y como se dejó la última vez que accedió.
- Debe haber un tiempo máximo de inactividad del usuario y tras el cual se cierre la sesión en la cuenta.

### Geoposicionamiento

#### Descripción
- Esta será una herramienta que permitirá saber no solo al usuario donde se encuentra, sino también al sistema, ya que este lo necesita para ofrecer servicios, precios e información a los conductores de tales transportes.

#### Actores involucrados
- Usuario
- Sistema externo de posicionamiento
</div>