<div align="justify">

# <div align="center">CASOS DE USO BIBLIOTECA</div>

## Actores
- Usuario
- Bibliotecario

## Casos de uso

### Reservar libro
| Reserva | Biblioteca |
| ---     | ---        |
| Actores | Usuario    |
| Descripción          | Este caso de uso se basa en la necesidad de reservar libros, para que posteriormente el usuario pueda coger prestado el libro en la biblioteca, asegurandose así de que se encuentra disponible |
| Condiciones previas  | Estar registrado con una cuenta en la aplicación de la biblioteca. Estar logueado en la cuenta en la que se pretenda realizar la reserva. El usuario debe disponer de una manera de hacer la búsqueda del libro que desea reservar. Se debe verificar la disponibilidad del libro antes de que al usuario se le permita proceder con la reserva. |
| Flujo principal      | Cuando el usuario vaya a reservar un libro, deberá pinchar en el botón de "reservar", esto lo llevará a la página de la reserva. En esta página deberá de introducir los datos de cuando desea retirar el libro seleccionado de la biblioteca, datos que se unirán a sus datos personales de la cuenta, para identificar a la persona que va a retirar el libro. |
| Condiciones posteriores | Al usuario se le deberá proporcionar un ID único, relacionado a su reserva, este ID identificará su reserva y lo deberá presentar ante el bibliotecario en persona, para retirar el libro |
| Flujo alterno y excepciones | Si no está disponible el libro el libro para reservar el botón de la reserva no se podrá accionar, en caso de que el libro no esté disponible para una fecha concreta seleccionada, el usuario recibirá feedback a través de mensajes y colores diferentes en la interfaz que le avisarán de que debe elegir otra fecha pues esa ya ha sido escogida. |

### Prestar libro
| Prestar | Biblioteca |
| ---     | ---        |
| Actores | Usuario, Bibliotecario |
| Descripición | Este caso de uso es el que tiene que ver con la acción principal de la biblioteca, que será la de dar a los usuarios libros prestados durante un tiempo. |
| Condiciones previas | El usuario se debe haber registrado previamente en la aplicación de la biblioteca. El libro debe estar solicitado debe estar disponible o reservado por el usuario. |
| Flujo principal     | El usuario se identifica con sus credenciales. Solicita el préstamo del libro a través de reserva o de disponibilidad actual del mismo. El bibliotecario busca en el catálogo la disponibilidad del mismo, o verifica la existencia de la reserva. El bibliotecario registra el préstamo y entrega el libro al usuario. Se notifica al usuario la fecha límite de devolución. |
| Condiciones posteriores | El sistema registra el libro en el mismo como prestado. El historial de préstamos del usuario se actualiza con el último préstamo. |
| Flujo alterno y excepciones | El libro no se puede prestar porque no está disponible. |

### Devolver libro
| Devolver | Biblioteca |
| ---      | ---        |
| Actores  | Usuario Bibliotecario |
| Descripción | Este es el caso de uso que describe la devolución de un libro por parte de un usuario. |
| Condiciones previas | El usuario deberá tener un libro prestado en activo. El plazo de devolución no debe haber concluido. |
| Flujo principal | El usuario se debe indentificar con sus credenciales. El bibliotecario busca el libro que se va devolver. El bibliotecario registra la devolución del libro.  El usuario recibe una notificación de devolución exitosa. |
| Condiciones posteriores | Se vuelve a marcar el libro como disponible para préstamo. |
| Flujo alterno y excepciones | Si el usuario se retrasa en la devolución del libro deberá abonar un cargo por el tiempo de retraso. Si el libro está dañado se deberá abonar el importe de un libro nuevo y el libro devuelto no se pondrá de nuevo en el sistema como disponible para su préstamo.

### Registrarse
| Registro | Biblioteca |
| ---      | ---        |
|


### Login
| Login | Biblioteca |
| ---   | ---        |

 
</div>