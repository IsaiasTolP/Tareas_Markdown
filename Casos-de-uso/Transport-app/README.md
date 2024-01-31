<div align="justify">

# <div align="center">El login como caso de uso</div>

<table>
  <thead>
    <tr>
      <th>Casos de Uso</th>
      <th>Transport App</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Caso</td>
      <td>Login</td>
    </tr>
    <tr>
      <td>Actores</td>
      <td>Usuario</td>
    </tr>
    <tr>
      <td>Descripción</td>
      <td>Un Login, será un proceso a través del cual el usuario introducirá sus credenciales personales, para poder entrar a la cuenta correspondiente que tiene registrada.</td>
    </tr>
    <tr>
      <td>Incluye</td>
      <td>Verificación de credenciales</td>
    </tr>
    <tr>
      <td>Condiciones previas</td>
      <td>
        <ul>
          <li>El usuario debe tener conexión a internet para conectarse.</li>
          <li>El usuario debe tener cerrada la sesión en su cuenta.</li>
          <li>Una página específica de login plenamente funcional, a la que puedan entrar usuarios desconectados.</li>
          <li>El usuario debe haberse registrado en la aplicación si pretende entrar.</li>
          <li>Una base de datos que permita consultar al sistema las credenciales introducidas.</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td>Condiciones posteriores</td>
      <td>
        <ul>
          <li>El usuario debe obtener acceso a su cuenta tal y como se dejó la última vez que accedió.</li>
          <li>Debe haber un tiempo máximo de inactividad del usuario y tras el cual se cierre la sesión en la cuenta.</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td>Flujo principal</td>
      <td>
        <ol>
          <li>El usuario entrará a la sección de la aplicación donde se realiza la acción del login.</li>
          <li>El usuario introduce sus credenciales y confirma el envío de las mismas para ser cotejadas por el sistema.</li>
          <li>Si los datos coinciden con alguna entrada de la base de datos, se lo dejará entrar con la cuenta asociada a esas credenciales.</li>
        </ol>
      </td>
    </tr>
    <tr>
      <td>Flujo alterno o excepciones</td>
      <td>
        <ol>
          <li><b>Paso 3:</b> Si las credenciales introducidas son erróneas, el sistema mostrará un mensaje de error indicando al usuario que sus credenciales no coinciden.</li>
          <li><b>Paso 2:</b> El login falla y el usuario debe volver a proporcionar credenciales.</li>
        </ol>
      </td>
    </tr>
  </tbody>
</table>

# <div align="center">El usuario como actor</div>

| Descripción de Actor | Transport App |
| ---                  | ---           |
| Descripción | El Usuario es todo aquel que interactua con la aplicación de transportes, para acceder a los servicios que ofrece, la información que alberga y gestionar la que le permita el sistema |
| Caracteristicas | Autentificación (Registrarse, Login, etc); Interacción con la Interfaz (Modificar ruta, ver puntos de interés, etc). |
| Relaciones | Sistema; Administradores |
| Referencias | Ubicación; Perfil personal |
| Atributos | Datos de Registro (Credenciales); Preferencias(Rutas, sitios de interés) |

</div>