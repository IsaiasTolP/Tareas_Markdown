<div align="justify">

### Registrarse
| Registro | Tienda-online |
| ---      | ---        |
| Actores  | Usuario    |
| Descripción | El usuario deberá registrarse en la aplicación para poder empezar buscar y comprar productos. |
| Condiciones previas | Si el usuario se quiere registrar no deberá estar registrado. |
| Flujo principal     | Se entra en la plataforma de registro. Se introducen los datos solicitados. Se guardan los datos y credenciales en la base de datos. El usuario obtiene acceso a su nueva cuenta. |
| Condiciones posteriores | El usuario deberá tener acceso a todas las funciones relacionadas a su estatus. |
| Flujo alterno y excepciones | Si el usuario introduce datos erróneos en el registro se le pedirá que los ingrese de forma correcta. No se puede registrar un usuario que ya está creado. |

### Darse de baja
| Baja | Tienda-online |
| ---  | ---        |
| Actores | Usuario |
| Descripción | Un usuario podrá dar de baja su cuenta |
| Condiciones previas | Deberá estar registrado el usuario que se quiera dar de baja. |
| Flujo principal     | Se entra en ajustes, en la sección de borrar cuenta. Se pincha el botón de "eliminar cuenta". Se debe confirmar. La cuenta se borra por completo junto con sus datos y deja de existir. |
| Condiciones posteriores | Se liberaran las credenciales de la cuenta puediendo reutilizarse en otras. |
| Flujo alterno y excepciones | Si el usuario se arrepiente antes de confirmar la eliminación podrá elegir cancelar el proceso. |


### Login
| Login   | App Reserva de Vuelos |
| ---     | ---           |
| Actores | Pasajero      |
| Descripción             | El login será la acción de acceder a una cuenta ya creada a través del proporcionamiento al sistema de unas creenciales para su verificación |
| Condiciones previas     | El pasajero tiene que estar registrado en la aplicación de reserva de vuelos. Una base de datos que haya guardado las credenciales que se introdujeron durante el registro. |
| Flujo principal         | El pasajero tiene que entrar a la sección de la aplicación donde se realiza el login. El pasajero indicará sus credenciales y confirma que desea entrar. Se verifican las credenciales y si los datos coinciden con el de el usuario de la cuenta del pasajero, se lo dejará entrar a la misma. |
| Condiciones posteriores | El pasajero debe obtener acceso a su cuenta tal y como se dejó la última vez que accedió. |
| Flujo alterno y excepciones | Si las credenciales introducidas son erróneas, el sistema mostrará un mensaje de error indicando al usuario que sus credenciales no coinciden. El login falla y el pasajero debe volver a proporcionar credenciales. |
| Include | Verificación de credenciales |

</div>