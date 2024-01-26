<div align="justify">

# <div align="center">CASOS DE USO BIBLIOTECA</div>

## Diagrama de casos de uso

![Caso biblioteca](diagrama.drawio.png)

## Actores

| Descripción del actor | Usuario |
| ---                   | ---     |
| Descripción           | El Usuario es todo aquel que interactua con la aplicación de la biblioteca, para acceder a los servicios que ofrece, la información que alberga y gestionar la que le permita el sistema. |
| Características       | Interacción con la biblioteca (Reservas, préstamos, devoluciones), Autentificación (Login, Registro, Baja). |
| Relaciones            | Bibliotecario, Sistema |
| Referencias           | Perfil personal        |
| Atributos             | Credenciales de login  |

| Descripción del actor | Bibliotecario |
| ---                   | ---           |
| Descripción           | El bibliotecario hace las veces de administrador y encargado de la biblioteca física. |
| Características       | Interacción con el usuario (Prestar, devolver), gestión de cuentas (Registrar, Dar de baja). |
| Relaciones            | Usuario, Sistema. |
| Referencias           | Perfil de administrador |
| Atributos             | Credenciales de  administrador |

## Casos de uso

### Reservar libro
| Reserva | Biblioteca |
| ---     | ---        |
| Actores | Usuario    |
| Descripción          | Este caso de uso se basa en la necesidad de reservar libros, para que posteriormente el usuario pueda coger prestado el libro en la biblioteca, asegurandose así de que se encuentra disponible |
| Condiciones previas  | Estar registrado con una cuenta en la aplicación de la biblioteca. Estar logueado en la cuenta en la que se pretenda realizar la reserva. El usuario debe disponer de una manera de hacer la búsqueda del libro que desea reservar. Se debe verificar la disponibilidad del libro antes de que al usuario se le permita proceder con la reserva. |
| Flujo principal      | Cuando el usuario vaya a reservar un libro, deberá pinchar en el botón de "reservar", esto lo llevará a la página de la reserva. En esta página deberá de introducir los datos de cuando desea retirar el libro seleccionado de la biblioteca, datos que se unirán a sus datos personales de la cuenta, para identificar a la persona que va a retirar el libro. |
| Condiciones posteriores | Al usuario se le deberá proporcionar un ID único, relacionado a su reserva, este ID identificará su reserva y lo deberá presentar ante el bibliotecario en persona, para retirar el libro |
| Flujo alterno o excepciones | Si no está disponible el libro el libro para reservar el botón de la reserva no se podrá accionar, en caso de que el libro no esté disponible para una fecha concreta seleccionada, el usuario recibirá feedback a través de mensajes y colores diferentes en la interfaz que le avisarán de que debe elegir otra fecha pues esa ya ha sido escogida. |

### Prestar libro
| Prestar | Biblioteca |
| ---     | ---        |
| Actores | Usuario, Bibliotecario |
| Descripición | Este caso de uso es el que tiene que ver con la acción principal de la biblioteca, que será la de dar a los usuarios libros prestados durante un tiempo. |
| Condiciones previas | El usuario se debe haber registrado previamente en la aplicación de la biblioteca. El libro debe estar solicitado debe estar disponible o reservado por el usuario. |
| Flujo principal     | El usuario se identifica con sus credenciales. Solicita el préstamo del libro a través de reserva o de disponibilidad actual del mismo. El bibliotecario busca en el catálogo la disponibilidad del mismo, o verifica la existencia de la reserva. El bibliotecario registra el préstamo y entrega el libro al usuario. Se notifica al usuario la fecha límite de devolución. |
| Condiciones posteriores | El sistema registra el libro en el mismo como prestado. El historial de préstamos del usuario se actualiza con el último préstamo. |
| Flujo alterno o excepciones | El libro no se puede prestar porque no está disponible. |

### Devolver libro
| Devolver | Biblioteca |
| ---      | ---        |
| Actores  | Usuario Bibliotecario |
| Descripción | Este es el caso de uso que describe la devolución de un libro por parte de un usuario. |
| Condiciones previas | El usuario deberá tener un libro prestado en activo. El plazo de devolución no debe haber concluido. |
| Flujo principal | El usuario se debe indentificar con sus credenciales. El bibliotecario busca el libro que se va devolver. El bibliotecario registra la devolución del libro.  El usuario recibe una notificación de devolución exitosa. |
| Condiciones posteriores | Se vuelve a marcar el libro como disponible para préstamo. |
| Flujo alterno o excepciones | Si el usuario se retrasa en la devolución del libro deberá abonar un cargo por el tiempo de retraso. Si el libro está dañado se deberá abonar el importe de un libro nuevo y el libro devuelto no se pondrá de nuevo en el sistema como disponible para su préstamo.

### Registrarse
| Registro | Biblioteca |
| ---      | ---        |
| Actores  | Usuario, Bibliotecario |
| Descripción | El usuario deberá registrarse en la aplicación para acceder a sus funciones. Por supuesto, el usuario también podrá ser registrado por el bibliotecario, que funcionará a efectos de administrador. |
| Condiciones previas | Si el usuario se quiere registrar no deberá estar registrado. |
| Flujo principal     | Se entra en la plataforma de registro. Se introducen los datos solicitados. Se guardan los datos y credenciales en la base de datos. El usuario obtiene acceso a su nueva cuenta. |
| Condiciones posteriores | El usuario deberá tener acceso a todas las funciones relacionadas a su estatus. |
| Flujo alterno o excepciones | Si el usuario introduce datos erróneos en el registro se le pedirá que los ingrese de forma correcta. No se puede registrar un usuario que ya está creado. |

### Dar de baja
| Baja | Biblioteca |
| ---  | ---        |
| Actores | Usuario, Bibliotecario |
| Descripción | Un usuario podrá darse de baja de su cuenta, o el bibliotecario siguiendo tanto los deseos del usuario como siguiendo las directrices de la biblioteca, puede dar de baja a un usuario. |
| Condiciones previas | Deberá estar registrado el usuario que se quiera dar de baja. |
| Flujo principal     | Se entra en ajustes, en la sección de borrar cuenta. Se pincha el botón de "eliminar cuenta". Se debe confirmar. El usuario pierde acceso a la misma, al dejar de existir. |
| Condiciones posteriores | Se liberará el nombre de usuario, volviendo a poder usarse. |
| Flujo alterno o excepciones | Si no se introduce bien la contraseña el proceso de eliminación se cancelará y deberá volver a iniciarse. |

### Login
| Login | Biblioteca |
| ---   | ---        |
| Actores | Usuario  |
| Descripción | El login será la acción de acceder a una cuenta ya creada a través del proporcionamiento al sistema de unas creenciales para su verificación |
| Condiciones previas | El usuario deberá estar registrado en la aplicación de la biblioteca. Una base de datos que haya guardado las credenciales que se introdujeron durante el registro. |
| Flujo principal     | El usuario entrará a la sección de la aplicación donde se realiza la acción del login. El usuario introduce sus credenciales y confirma el envío de las mismas para ser cotejadas por el sistema. Si los datos coinciden con alguna entrada de la base de datos, se lo dejará entrar con la cuenta asociada a esas credenciales. |
| Condiciones posteriores | El usuario debe obtener acceso a su cuenta tal y como se dejó la última vez que accedió. |
| Flujo alterno o excepciones | Si las credenciales introducidas son erróneas, el sistema mostrará un mensaje de error indicando al usuario que sus credenciales no coinciden. El login falla y el usuario debe volver a proporcionar credenciales. |
| Include | Verificación de credenciales |
 
</div>