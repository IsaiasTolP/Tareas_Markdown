| Casos de Uso | Transport App |
| --- | --- |
| Caso | Login | 
| Actores | Usuario |
| Descripción | Un Login, será un proceso a través del cual el usuario introducirá sus credenciales personales, para poder entrar a la cuenta correspondiente que tiene registrada. |
| Incluye | Verificación de credenciales |
| Condiciones previas | El usuario debe tener cerrada la sesión en su cuenta. Una página específica de login plenamente funcional, a la que puedan entrar usuarios desconectados. El usuario debe haberse registrado en la aplicación si pretende entrar. Una base de datos que permita consultar al sistema las credenciales introducidas. |
| Condiciones posteriores | El usuario debe obtener acceso a su cuenta tal y como se dejó la última vez que accedió. Debe haber un tiempo máximo de inactividad del usuario y tras el cual se cierre la sesión en la cuenta. |
| Flujo principal | El usuario entrará a la sección de la aplicación donde se realiza la acción del login. El usuario introduce sus credenciales y confirma el envío de las mismas para ser cotejadas por el sistema. Si los datos coinciden con alguna entrada de la base de datos, se lo dejará entrar con la cuenta asociada a esas credenciales. |
| Flujo alterno y excepciones | Si las credenciales introducidas son erróneas, el sistema mostrará un mensaje de error indicando al usuario que sus credenciales no coinciden. El login falla y el usuario debe volver a proporcionar credenciales. |