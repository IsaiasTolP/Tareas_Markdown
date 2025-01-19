# Elemento 1, modificaciones realizadas:
- En primer lugar, las etiquetas ARIA de las que ya disponía el elemento las he mantenido intactas.
- Luego sobre eso, he añadido unas etiquetas aria nuevas así como algunos id, para justamente ligarlos con estas etiquetas nuevas que son `aria-labelledby`.
- Además se han añadido también etiquetas `role` para indicar que tipo de elemento se está presentando en la interfaz y que las herramientas puedan interpretarlos correctament.

# Elemento 2, modificaciones realizadas:
- Se mantienen las etiquetas ARIA ya colocadas originalmente en el código y que son las más importantes y recomendadas por W3C.
- Por lo que no creo que sean necesarios cambios en el código de Bootstrap, salvo hacer el `aria-label` un poco más descriptivo

# Elemento 3, modificaciones realizadas:
- Se añaden unos `aria-label` que describen la acción que realizan los botones.
- Se añaden unos `aria-labelledby` relacionando los botones con sus respectivos contenedores que activan-

# Elemento 4, modificaciones realizadas:
- En el botón para abrir el modal se añade un `aria-label` que describe la acción que realiza el botón
- En el modal, el primer div recibe la etiqueta `role=dialog` indicando así a los lectores de pantalla que esto se trata de una ventana de dialogo y que la traten como tal, además se le añade `aria-modal=true` indicando que se trata de un modal y que los lectores de pantalla deben mantener el foco solo cuando esté abierto.
- Se han añadido además `aria-label` extras en las acciones dentro del modal

# Elemento 5, modificaciones realizadas:
- En este elemento se ha intentado simular mejor una navegación real, para ello se han cambiado la flecha para ir hacia detrás a un botón, ya que suponemos que estamos en la primera página y no debería funcionar en este caso, además se añade  `aria-disabled=true` para indicar su estado deshabilitado.
- En el link a la página numero uno le añadimos `aria-current=page` para indicar donde nos encontramos en todo momento. Adicionalmente se ha cambiado el enlace `a` a la primera página por un simple span para que sea ignorado, ya que no tiene sentido dejarlo activado si nos encontramos en esa página
- Por último al final también se añade `aria-disabled=false` indicando que este enlace no se encuentra deshabilitado y por eso no lo cambiamos a un tipo botón para que así funcione con normalidad.