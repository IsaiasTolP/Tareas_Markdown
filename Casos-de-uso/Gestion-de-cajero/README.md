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

### Config
### Login
| Login | Cajero |
| ---   | ---    |
| Actores | Cliente |
| Descripción | El cliente al llegar al cajero deberá introducir un PIN secreto para acceder a su cuenta bancaria. |
| Condiciones previas | El cliente tiene que tener una cuenta bancaria y una tarjeta de crédito. |
| Flujo principal | 1. El cliente introduce su tarjeta en el cajero. 2. El cajero le pide el PIN. 3. Si el PIN es correcto se entra en la cuenta. |
| Condiciones posteriores | El cliente ha accedido a su cuenta bancaria. |
| Flujo alterno o excepciones | 1. Paso 3: Si el PIN es incorrecto se debe volver a introducir y se avisa al cliente del límite de intentos antes de bloquear la tarjeta. |

###

</div>