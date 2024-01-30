<div align="justify">

# <div align="center">Casos de uso Red Social</div>

## Diagrama de casos de uso

![Diagrama red social](diagrama.drawio.png)

## Actores
| Descrición del actor | Usuario |
| ---                  | ---     |
| Descripción          | Los usuarios serán las personas que interactuen entre sí en la red social publicando contenido y comentándolas. |
| Características      | Interacción con la red social (Publicar, eliminar, comentar, etc). Interacción con el sistema (Registro, baja, login).  |
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

</div>