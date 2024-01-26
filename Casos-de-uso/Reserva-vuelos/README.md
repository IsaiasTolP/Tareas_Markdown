<div align="justify">

# <div align="center">Sistema de Reserva de Vuelos</div>

## Diagrama de casos de uso

![Diagrama vuelos](diagrama.drawio.png)

## Actores
| Descripción del actor | Pasajero |
| ---                   | ---      |
| Descripción           | El pasajero será el actor que actue con la aplicación para hacer uso de los servicios de aviación que en ella se ofrecen. |
| Características       | Interacción con la aplicación (Reservas, cancelaciones, busquedas), Autentificación (Registro, darse de baja, login).     |
| Relaciones            | Agente de reservas, sistema |
| Atributos             | Credenciales de Login |

| Descripción del actor | Agente de reservas  |
| ---                   | ---                 |
| Descripción           | El agente de reservas será aquella persona que atienda y asista al paseajero en su interacción con los servicios que ofrece la aplicación. |
| Características       | Interacción con la aplicación (Reservas, cancelaciones, busquedas). |
| Relaciones            | Pasajeros, sistemas |
| Atributos             | Datos de usuarios y reservas |

## Casos de uso

### Reservar Vuelo
| Reservar vuelo | App Reserva de Vuelos |
| ---            | ---                   |
| Actores        | Pasajero, Agente de reservas |
| Descripción    | Este es el caso de uso en el que un pasajero decide que quiere reservar un vuelo, el proceso será llevado a cabo por el pasajero o el gestor de reservas que al que el pasajero le proporcione datos personales y requerimientos del vuelo deseado. |
| Condiciones previas | El pasajero debe estar registrado. La sistema de reservas debe estar operativo. |
| Flujo principal     | El pasajero inicia (login) en la aplicación de reservas. El pasajero selecciona la opción de reservas. Se busca según los parámetro deseados el vuelo. |Selecciona el vuelo deseado. Se indica que se desea reservar. Se muestra un resumen de los datos del vuelo y su precio. Se confirma la reserva. Se crea el billete del vuelo con los datos del pasajero y se envía al mismo. |
| Condiciones posteriores | La reserva en la compañía de vuelos debe estar a nombre del pasajero. |
| Flujo alterno o excepciones | Si no hay asientos disponibles en el vuelo en el momento de la reserva, se le informa al pasajero y se cancela la operación. |
| Include | Buscar Vuelo |


### Cancelar Reserva
| Cancelar Reserva | App Reserva de Vuelos |
| ---              | ---                   |
| Actores          | Pasajero, Agente de reservas |
| Descripción      | Este caso de uso está relacionado con la posibilidad y necesidad de cancelar una reserva debido a las circunstancias que obliguen al pasajero a ello. El agente de reservas podŕa hacer este trabajo a petición del usuario. |
| Condiciones previas | El pasajero debe estar registrado. La sistema de reservas debe estar operativo. El pasajero debe tener una reserva activa. |
| Flujo principal     | El pasajero inicia la aplicación de reservas. El pasajero selecciona la opción de "Mis Reservas". El pasajero selecciona la reserva de vuelo que desea cancelar. El sistema muestra los detalles de la reserva seleccionada. El pasajero selecciona la opción de "Cancelar Reserva". El sistema solicita confirmación para la cancelación de la reserva. El pasajero confirma la cancelación de la reserva. El sistema procesa la cancelación y emite un reembolso. El pasajero recibe la confirmación de la cancelación y los detalles del reembols. |
| Condiciones posteriores | La reserva ha sido cancelada y el asiento vuelve a estar disponible. El reembolso se ha producido correctamente. |
| Flujo alterno o excepciones | Si por razones de políticas de cancelación u otros supuestos una reserva no se puede cancelar el pasajero no podrá acceder a esta función para ese vuelo concreto. |

### Buscar Vuelo
| Buscar vuelo | App Reserva de Vuelos |
| ---          | ---                   |
| Actores      | Pasajero, Agente de reservas |
| Descripción  | Este caso de uso representará una funcionalidad de la aplicación que permitirá buscar vuelos que coincidan con las condiciones deseadas. |
| Condiciones previas | El pasajero debe debe estar registrado e iniciado en su cuenta. El servidor de la aplicación debe estar operativo. |
| Flujo principal     | El pasajero entra a la sección de buscar vuelos. Introduce los filtros que considere necesarios en los recuadros correspondientes, tales como destino, origen, fecha, precio, etc. El sistema coteja los resultados que cumplen esas condiciones. El pasajero los puede ver y escoger entre ellos. |
| Condiciones posteriores | El pasajero puede acceder a los detalles completos de cada uno con una selección con el ratón o el teclado. |
| Flujo alterno o excepciones | Si no hay resultados que coincidan con la búsqueda se le hará saber al pasajero y se le mostrarán resultados similares|
| Include | Reservar vuelo |

### Registrarse
| Registro | App Reserva de Vuelos |
| ---      | ---        |
| Actores  | Pasajero |
| Descripción | El pasajero deberá registrarse en la aplicación para poder empezar a buscar sus vuelos. |
| Condiciones previas | Si el pasajero se quiere registrar no deberá estar registrado. |
| Flujo principal     | Se entra en la plataforma de registro. Se introducen los datos solicitados. Se guardan los datos y credenciales en la base de datos. El pasajero obtiene acceso a su nueva cuenta. |
| Condiciones posteriores | El pasajero deberá tener acceso a todas las funciones relacionadas a su estatus. |
| Flujo alterno o excepciones | Si el pasajero introduce datos erróneos en el registro se le pedirá que los ingrese de forma correcta. No se puede registrar un pasajero que ya está creado. |

### Darse de baja
| Baja | App Reserva de Vuelos |
| ---  | ---        |
| Actores | Pasajero |
| Descripción | Un pasajero podrá dar de baja su cuenta |
| Condiciones previas | Deberá estar registrado el pasajero que se quiera dar de baja. |
| Flujo principal     | Se entra en ajustes, en la sección de borrar cuenta. Se pincha el botón de "eliminar cuenta". Se debe confirmar. La cuenta se borra por completo junto con sus datos y deja de existir. |
| Condiciones posteriores | Se liberaran las credenciales de la cuenta puediendo reutilizarse en otras. |
| Flujo alterno o excepciones | Si el pasajero se arrepiente antes de confirmar la eliminación podrá elegir cancelar el proceso. |


### Login
| Login   | App Reserva de Vuelos |
| ---     | ---           |
| Actores | Pasajero      |
| Descripción             | El login será la acción de acceder a una cuenta ya creada a través del proporcionamiento al sistema de unas creenciales para su verificación |
| Condiciones previas     | El pasajero tiene que estar registrado en la aplicación de reserva de vuelos. Una base de datos que haya guardado las credenciales que se introdujeron durante el registro. |
| Flujo principal         | El pasajero tiene que entrar a la sección de la aplicación donde se realiza el login. El pasajero indicará sus credenciales y confirma que desea entrar. Se verifican las credenciales y si los datos coinciden con el de el usuario de la cuenta del pasajero, se lo dejará entrar a la misma. |
| Condiciones posteriores | El pasajero debe obtener acceso a su cuenta tal y como se dejó la última vez que accedió. |
| Flujo alterno o excepciones | Si las credenciales introducidas son erróneas, el sistema mostrará un mensaje de error indicando al usuario que sus credenciales no coinciden. El login falla y el pasajero debe volver a proporcionar credenciales. |
| Include | Verificación de credenciales |

</div>