<div align="justify">

# <div align="center">Sistema de Reserva de Vuelos</div>

## Diagrama de casos de uso

## Actores
| Descripción del actor | Pasajero |
| ---                   | ---      |
| Descripción           | El pasajero será el actor que actue con la aplicación para hacer uso de los servicios de aviación que en ella se ofrecen. |
| Características       | |
| Relaciones            | |
| Atributos             | |

| Descripción del actor | Agente de reservas |
| ---                   | ---                |
| Descripción           | El agente de reservas será aquella persona que atienda y asista al paseajero en su interacción con los servicios que ofrece la aplicación. |
| Características       | |
| Relaciones            | |
| Atributos             | |

## Casos de uso

### Reservar Vuelo

### Cancelar Reserva

### Buscar Vuelo

### Registrarse
| Registro | Reserva de Vuelos |
| ---      | ---        |
| Actores  | Pasajero |
| Descripción | El pasajero deberá registrarse en la aplicación para poder empezar a buscar sus vuelos. |
| Condiciones previas | Si el pasajero se quiere registrar no deberá estar registrado. |
| Flujo principal     | Se entra en la plataforma de registro. Se introducen los datos solicitados. Se guardan los datos y credenciales en la base de datos. El pasajero obtiene acceso a su nueva cuenta. |
| Condiciones posteriores | El pasajero deberá tener acceso a todas las funciones relacionadas a su estatus. |
| Flujo alterno y excepciones | Si el pasajero introduce datos erróneos en el registro se le pedirá que los ingrese de forma correcta. No se puede registrar un pasajero que ya está creado. |

### Login
| Login   | Reserva de Vuelos |
| ---     | ---           |
| Actores | Pasajero      |
| Descripción             | El login será la acción de acceder a una cuenta ya creada a través del proporcionamiento al sistema de unas creenciales para su verificación |
| Condiciones previas     | El pasajero tiene que estar registrado en la aplicación de reserva de vuelos. Una base de datos que haya guardado las credenciales que se introdujeron durante el registro. |
| Flujo principal         | El pasajero tiene que entrar a la sección de la aplicación donde se realiza el login. El pasajero indicará sus credenciales y confirma que desea entrar. Se verifican las credenciales y si los datos coinciden con el de el usuario de la cuenta del pasajero, se lo dejará entrar a la misma. |
| Condiciones posteriores | El pasajero debe obtener acceso a su cuenta tal y como se dejó la última vez que accedió. |
| Flujo alterno y excepciones | Si las credenciales introducidas son erróneas, el sistema mostrará un mensaje de error indicando al usuario que sus credenciales no coinciden. El login falla y el pasajero debe volver a proporcionar credenciales. |
| Include | Verificación de credenciales |

</div>