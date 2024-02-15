<div align="justify">

# <div align="center">Casos de uso Red Social</div>

## Diagrama de casos de uso

![Diagrama red social](diagrama.drawio.png)

## Actores
| Descrición del actor | Usuario |
| ---                  | ---     |
| Descripción          | Los usuarios serán las personas que interactuen entre sí en la red social publicando contenido y comentándolas. |
| Características      | Interacción con la red social (Publicar, eliminar, etc). Interacción con el sistema (Registro, baja, login). Interacción con usuarios (amigos)  |
| Relaciones           | Administrador, Sistema. |
| Referencias          | Perfil de usuario |
| Atributos            | Credenciales de usuario, Datos del perfil de usuario |

| Descripción del actor | Administrador |
| ---                   | ---           |
| Descripción           | Los administradores se encargarán de mantener el funcionamiento correcto y el cumplimiento de las normas de la red social. |
| Características       | Moderación de la Red Social (Revisar, eliminar publicaciones). Control de experiencia (Publicidad). |
| Relaciones            | Usuario, Sistema. |
| Referencias           | Perfil de administrador |
| Atributos             | Credenciales de administrador |

## Casos de uso

### Registrarse
<table>
  <thead>
    <tr>
      <th>Registro</th>
      <th>Red social</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Actores</td>
      <td>Usuario</td>
    </tr>
    <tr>
      <td>Descripción</td>
      <td>El usuario deberá registrarse en la aplicación para poder interactuar con otras personas en la red social.</td>
    </tr>
    <tr>
      <td>Condiciones previas</td>
      <td>Si el usuario se quiere registrar no deberá estar registrado.</td>
    </tr>
    <tr>
      <td>Flujo principal</td>
      <td>
        <ol>
          <li>Se entra en la plataforma de registro.</li>
          <li>Se introducen los datos solicitados.</li>
          <li>Se comprueba la validez de los datos.</li>
          <li>Se guardan los datos y credenciales en la base de datos.</li>
          <li>El usuario obtiene acceso a su nueva cuenta.</li>
        </ol>
      </td>
    </tr>
    <tr>
      <td>Condiciones posteriores</td>
      <td>El usuario deberá tener acceso a todas las funciones relacionadas a su estatus.</td>
    </tr>
    <tr>
      <td>Flujo alterno o excepciones</td>
      <td>
        <ol>
          <li><b>Paso 2:</b> Si el usuario introduce datos erróneos en el registro se le pedirá que los ingrese de forma correcta.</li>
          <li><b>Paso 3:</b> No se puede registrar un usuario que ya está creado. Se volverá a la pantalla de registro.</li>
        </ol>
      </td>
    </tr>
  </tbody>
</table>

### Darse de baja
<table>
  <thead>
    <tr>
      <th>Baja</th>
      <th>Red Social</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Actores</td>
      <td>Usuario</td>
    </tr>
    <tr>
      <td>Descripción</td>
      <td>Un usuario podrá dar de baja su cuenta</td>
    </tr>
    <tr>
      <td>Condiciones previas</td>
      <td>Deberá estar registrado el usuario que se quiera dar de baja.</td>
    </tr>
    <tr>
      <td>Flujo principal</td>
      <td>
        <ol>
          <li>Se entra en ajustes, en la sección de borrar cuenta.</li>
          <li>Se pincha el botón de "eliminar cuenta".</li>
          <li>Se debe confirmar.</li>
          <li>La cuenta se borra por completo junto con sus datos, publicaciones y comentarios y deja de existir.</li>
        </ol>
      </td>
    </tr>
    <tr>
      <td>Condiciones posteriores</td>
      <td> Se liberaran las credenciales de la cuenta puediendo reutilizarse en otras.</td>
    </tr>
    <tr>
      <td>Flujo alterno o excepciones</td>
      <td>
        <ol>
          <li><b>Paso 3:</b> Si el usuario se arrepiente antes de confirmar la eliminación podrá elegir cancelar el proceso.</li>
        </ol>
      </td>
    </tr>
  </tbody>
</table>

### Login
<table>
  <thead>
    <tr>
      <th>Login</th>
      <th>Red Social</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Actores</td>
      <td>Usuario</td>
    </tr>
    <tr>
      <td>Descripción</td>
      <td>El login será la acción de acceder a una cuenta ya creada a través del proporcionamiento al sistema de unas credenciales para su verificación.</td>
    </tr>
    <tr>
      <td>Condiciones previas</td>
      <td>El usuario tiene que estar registrado en la Red social. Una base de datos debe haber guardado las credenciales que se introdujeron durante el registro.</td>
    </tr>
    <tr>
      <td>Flujo principal</td>
      <td>
        <ol>
          <li>El usuario tiene que entrar a la sección de la aplicación donde se realiza el login.</li>
          <li>El usuario indicará sus credenciales y confirma que desea entrar.</li>
          <li>Se verifican las credenciales y si los datos coinciden con el usuario de la cuenta, se le permite entrar.</li>
        </ol>
      </td>
    </tr>
    <tr>
      <td>Condiciones posteriores</td>
      <td>El usuario debe obtener acceso a su cuenta y tener una serie de notificaciones que correspondan a su ausencia.</td>
    </tr>
    <tr>
      <td>Flujo alterno o excepciones</td>
      <td>
        <ol>
          <li><b>Paso 3:</b> Si las credenciales introducidas son erróneas, el sistema mostrará un mensaje de error indicando al usuario que sus credenciales no coinciden.</li>
          <li><b>Paso 3:</b> El login falla y el usuario debe volver a proporcionar credenciales.</li>
        </ol>
      </td>
    </tr>
    <tr>
      <td>Include</td>
      <td>Verificación de credenciales</td>
    </tr>
  </tbody>
</table>

### Revisión de contenido
<table>
  <thead>
    <tr>
      <th>Revisión</th>
      <th>Red Social</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Actores</td>
      <td>Administrador</td>
    </tr>
    <tr>
      <td>Descripción</td>
      <td>El administrador deberá revisar manualmente las alertas que le ha mandado el sistema para confirmar si se trata de un contenido prohibido en las políticas de la plataforma.</td>
    </tr>
    <tr>
      <td>Condiciones previas</td>
      <td>El sistema debe haber detectado contenido que se deba revisar.</td>
    </tr>
    <tr>
      <td>Flujo principal</td>
      <td>
        <ol>
          <li>El administrador entra al sistema.</li>
          <li>Entra a la lista de las publicaciones pendientes de revisión.</li>
          <li>Se selecciona una para revisar y se muestran los detalles de la misma.</li>
          <li>Se decide si se incumple con las políticas y se elimina el contenido.</li>
        </ol>
      </td>
    </tr>
    <tr>
      <td>Condiciones posteriores</td>
      <td>Se han tomado las acciones que correspondan. La publicación actualiza su estado en la red social.</td>
    </tr>
    <tr>
      <td>Flujo alterno o excepciones</td>
      <td>
        <ol>
          <li><b>Paso 1:</b> No se puede entrar al sistema si la conexión no es posible.</li>
          <li><b>Paso 2:</b> No hay publicaciones que revisar.</li>
        </ol>
      </td>
    </tr>
  </tbody>
</table>


### Control de publicidad
<table>
  <thead>
    <tr>
      <th>Control publicitario</th>
      <th>Red Social</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Actores</td>
      <td>Administrador</td>
    </tr>
    <tr>
      <td>Descripción</td>
      <td>El administrador debe controlar qué se promociona en la red social y qué no.</td>
    </tr>
    <tr>
      <td>Condiciones previas</td>
      <td>Debe existir un panel de control para la administración de la publicidad.</td>
    </tr>
    <tr>
      <td>Flujo principal</td>
      <td>
        <ol>
          <li>El administrador entra al panel de control de publicidad.</li>
          <li>Se revisan los anuncios que se solicitan colocar en la red social.</li>
          <li>Se aprueban o rechazan los anuncios.</li>
          <li>Se programan los anuncios aprobados para su publicación.</li>
        </ol>
      </td>
    </tr>
    <tr>
      <td>Condiciones posteriores</td>
      <td>Los anuncios aprobados y publicados se deberán mostrar a los usuarios.</td>
    </tr>
    <tr>
      <td>Flujo alterno o excepciones</td>
      <td>
        <ol>
          <li><b>Paso 3:</b> Un anuncio será rechazado si se incumple la ley o las políticas de la red social.</li>
        </ol>
      </td>
    </tr>
  </tbody>
</table>

### Eliminación de publicaciones
<table>
  <thead>
    <tr>
      <th>Eliminación</th>
      <th>Red Social</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Actores</td>
      <td>Usuario</td>
    </tr>
    <tr>
      <td>Descripción</td>
      <td>La red social está en constante movimiento, por lo que la posibilidad de borrar contenido es imprescindible.</td>
    </tr>
    <tr>
      <td>Condiciones previas</td>
      <td>Estar autentificado en el sistema como el usuario que ha hecho la publicación. Debe existir una publicación previa.</td>
    </tr>
    <tr>
      <td>Flujo principal</td>
      <td>
        <ol>
          <li>El usuario inicia sesión (login).</li>
          <li>Se va a la sección de "Mis publicaciones".</li>
          <li>Se selecciona la publicación que se quiere eliminar.</li>
          <li>Se selecciona en la publicación la opción de "eliminar".</li>
          <li>El sistema elimina la publicación.</li>
        </ol>
      </td>
    </tr>
    <tr>
      <td>Condiciones posteriores</td>
      <td>La publicación se ha borrado y ya no es posible acceder a ella, por parte de nadie.</td>
    </tr>
    <tr>
      <td>Flujo alterno o excepciones</td>
      <td>
        <ol>
          <li><b>Paso 5:</b> Si por cualquier error el sistema no puede borrar la publicación se muestra un mensaje de error y no le ocurre nada.</li>
        </ol>
      </td>
    </tr>
  </tbody>
</table>

### Publicar contenido
<table>
  <thead>
    <tr>
      <th>Publicación</th>
      <th>Red Social</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Actores</td>
      <td>Usuario</td>
    </tr>
    <tr>
      <td>Descripción</td>
      <td>Los usuarios interactuarán con la red social publicando contenido.</td>
    </tr>
    <tr>
      <td>Condiciones previas</td>
      <td>Estar previamente registrado. Haber iniciado sesión en una cuenta.</td>
    </tr>
    <tr>
      <td>Flujo principal</td>
      <td>
        <ol>
          <li>Se llega hasta la página de inicio.</li>
          <li>Se selecciona la opción de publicar.</li>
          <li>Se introduce el contenido de lo que se va a publicar.</li>
          <li>Se selecciona "compartir".</li>
          <li>La red social publica el contenido.</li>
        </ol>
      </td>
    </tr>
    <tr>
      <td>Condiciones posteriores</td>
      <td>La publicación es visible a los usuarios permitidos para verla.</td>
    </tr>
    <tr>
      <td>Flujo alterno o excepciones</td>
      <td>
        <ol>
          <li><b>Paso 5:</b> Si el contenido se detecta como prohibido por la red social no se publicará.</li>
        </ol>
      </td>
    </tr>
  </tbody>
</table>

### Buscar personas
<table>
  <thead>
    <tr>
      <th>Buscar personas</th>
      <th>Red Social</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Actores</td>
      <td>Usuario</td>
    </tr>
    <tr>
      <td>Descripción</td>
      <td>El usuario tiene que tener la posibilidad de buscar personas con las que interactuar en la red social.</td>
    </tr>
    <tr>
      <td>Condiciones previas</td>
      <td>Estar registrado y logueado en la red social.</td>
    </tr>
    <tr>
      <td>Flujo principal</td>
      <td>
        <ol>
          <li>El usuario entra en la sección de búsqueda.</li>
          <li>Se introducen los criterios de búsqueda.</li>
          <li>Se muestra una lista de resultados en base a estos criterios.</li>
          <li>Se selecciona el perfil que se quiera de la lista de resultados.</li>
        </ol>
      </td>
    </tr>
    <tr>
      <td>Condiciones posteriores</td>
      <td>Se encuentra el perfil deseado y se abre el perfil para ver más detalles.</td>
    </tr>
    <tr>
      <td>Flujo alterno o excepciones</td>
      <td>
        <ol>
          <li><b>Paso 3:</b> Si no hay resultados la red social muestra un mensaje indicando esto mismo.</li>
        </ol>
      </td>
    </tr>
  </tbody>
</table>

### Seguir personas

<table>
  <thead>
    <tr>
      <th>seguir personas</th>
      <th>Red Social</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Actores</td>
      <td>Usuario</td>
    </tr>
    <tr>
      <td>Descripción</td>
      <td>Los usuarios tendrán la posibilidad de seguir a otros usuarios para ver las publicaciones de estas personas.</td>
    </tr>
    <tr>
      <td>Condiciones previas</td>
      <td>Estar registrado y logueado. Se debe haber hecho una búsqueda de usuarios para ver a quién se quiere seguir.</td>
    </tr>
    <tr>
      <td>Flujo principal</td>
      <td>
        <ol>
          <li>Se visita el perfil de la persona que se quiere seguir.</li>
          <li>El usuario pulsa la opción de "seguir".</li>
          <li>El sistema lo confirma y se le da el estatus de seguido a ese perfil.</li>
        </ol>
      </td>
    </tr>
    <tr>
      <td>Condiciones posteriores</td>
      <td>El usuario que ha seguido a otro deberá recibir las actualizaciones sobre las publicaciones del usuario seguido.</td>
    </tr>
    <tr>
      <td>Flujo alterno o excepciones</td>
      <td>
        <ol>
          <li><b>Paso 2:</b> Si ocurre un error al seguir a otro usuario se informa al usuario de que no ha sido posible y lo intente un poco más tarde.</li>
        </ol>
      </td>
    </tr>
  </tbody>
</table>

</div>