<div align="justify">

# <div align="center">Casos de Uso Cajero ATM</div>

## Diagrama de casos de uso

## Actores
| Descripción del actor | Administrador |
| ---                   | ---           |
| Descripción           | El administrador será la persona que se encargue de revisar y administrar el cajero. |
| Características       | El administrador tendrá un acceso de alto nivel y podrá hacer cambios en la configuración y solucionar problemas técnicos. |
| Relaciones            | Cliente, Sistema. |
| Referencias           | "Configurar cajero", "Atención al cliente" |
| Atributos             | Perfil de administrador. |

| Descripción del actor | Cliente bancario |
| ---                   | ---              |
| Descripción           | El cliente bancario será el usuario de la aplicación que tiene una cuenta en el banco y que accederá a las funciones del cajero para hacer gestiones y movimientos de dinero. |
| Características       | El usuario tiene un acceso que le da capacidad de usar las funciones de las que dispone el cajero, como ingresar, retirar o transferir dinero, por ejemplo. |
| Relaciones            | Administrador, Sistema. |
| Referencias           | "Ingresar dinero", "retirar dinero", "transferir dinero", "Atención al cliente", "Login" |
| Atributos             | Credenciales bancarias |

## Casos de uso

### Configurar cajero
| Configuración | Cajero |
| ---           | ---    |
| Descripción   | Administrador |
| Condiciones previas | |
| Flujo principal | |
| Condiciones posteriores | |
| Flujo alterno o excepciones | |

### Atención al cliente
| Configuración | Cajero |
| ---           | ---    |
| Actores       | Administrador, Cliente |
| Descripción   | |
| Condiciones previas | |
| Flujo principal | |
| Condiciones posteriores | |
| Flujo alterno o excepciones | |

### Login
| Login | Cajero |
| ---   | ---    |
| Actores | Cliente |
| Descripción | El cliente al llegar al cajero deberá introducir un PIN secreto para acceder a su cuenta bancaria. |
| Condiciones previas | El cliente tiene que tener una cuenta bancaria y una tarjeta de crédito. |
| Flujo principal | 1. El cliente introduce su tarjeta en el cajero. 2. El cajero le pide el PIN. 3. Si el PIN es correcto se entra en la cuenta. |
| Condiciones posteriores | El cliente ha accedido a su cuenta bancaria. |
| Flujo alterno o excepciones | 1. Paso 3: Si el PIN es incorrecto se debe volver a introducir y se avisa al cliente del límite de intentos antes de bloquear la tarjeta. |

### Ingresar dinero
| Ingresar | Cajero |
| ---           | ---    |
| Actores       | Cliente |
| Descripción   | El cliente podrá meter dinero en su cuenta a través de un cajero. |
| Condiciones previas | Se debe haber hecho login en un cajero. |
| Flujo principal | 1. El cliente entra a la sección de "Ingresar dinero". 2. Se selecciona la forma de ingreso (Efectivo, cheque...). 3. El cajero cuenta el dinero y se añade la cantidad a la cuenta. |
| Condiciones posteriores | El cantidad de dinero exacta se ha sumado a la cuenta del cliente. |
| Flujo alterno o excepciones | 1. Si el cajero se encuentra fuera de servicio no se podrá usar. 2. Paso 3: Si el cajero es incapaz de contar el dinero con la forma de ingreso indicada se devuelve al cliente para que lo intente otra vez de forma correcta. |

### Retirar dinero
| Retirar | Cajero |
| ---           | ---    |
| Actores       | Cliente |
| Descripción   | El cliente podrá retirar dinero en efectivo de su cuenta a través del cajero. |
| Condiciones previas | El cliente se debe haber logueado en el cajero. |
| Flujo principal | 1. El cliente entra a la sección de "Retirar dinero". 2. Se selecciona cuanto dinero se desea retirar. 3. El cajero da el dinero solicitado y se resta de la cuenta. |
| Condiciones posteriores | El dinero se le ha dado al cliente y se ha restado de la cuenta bancaria. |
| Flujo alterno o excepciones | 1. Si el cajero se encuentra fuera de servicio no se podrá usar. 2. Paso 2: Si no el cajero no dispone de tal cantidad se le hace saber al cliente y se lo manda a la pantalla de incio. 3. Paso 3: Si el cajero no da el dinero pero lo resta de la cuenta, es necesario ponerse en contacto con un administrador. |

### Transferir dinero
| Transferir | Cajero |
| ---           | ---    |
| Actores       | Cliente |
| Descripción   | Los clientes pueden enviar dinero a las cuentas de otros clientes mediante transferencia en cajero. |
| Condiciones previas | El cliente debe estar logueado en el cajero. La persona a la que se va transferir dinero debe tener cuenta bancaria válida. |
| Flujo principal | 1. El cliente selecciona la opción de "Transferencia bancaria". 2. Se indica el código de cuenta a la que se quiere transferir el dinero. 3. Se indica la cantidad a transferir. 4. Se confirma la transferencia. 5. El dinero se resta de una cuenta y se suma a la otra. |
| Condiciones posteriores | El dinero se ha transferido entre cuentas satisfactoriamente. Se genera un registro de transferencia bancaria. |
| Flujo alterno o excepciones | 1. Si el cajero se encuentra fuera de servicio no se podrá usar. 2. Paso 2: Si el código de cuenta es erroneo se muestra un mensaje de error y se vuelve a pedir. 3. Paso 3: Si no se dispone de tal cantidad en la cuenta, no se transferirá el dinero y saltará un mensaje de error. 4. Paso 4: Si el cliente no confirma la operación se cancelará. |

</div>