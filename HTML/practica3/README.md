<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Practica 5 HTML</title>
</head>
<body>
    <table border="2">
        <tr>
            <td rowspan="2" width="75px" height="75px"></td>
            <td colspan="2">1ª Eval</td>
            <td colspan="2">2ª Eval</td>
            <td colspan="2">3ª Eval</td>
        </tr>
        <tr>
            <td style="background-color: green;">Aprobados</td>
            <td style="background-color: red;">Suspendidos</td>
            <td style="background-color: green;">Aprobados</td>
            <td style="background-color: red;">Suspendidos</td>
            <td style="background-color: green;">Aprobados</td>
            <td style="background-color: red;">Suspendidos</td>
        </tr>
        <tr>
            <td>Informática</td>
            <td>20</td>
            <td>2</td>
            <td>19</td>
            <td>3</td>
            <td>22</td>
            <td>0</td>
        </tr>
        <tr>
            <td>Matemáticas</td>
            <td>10</td>
            <td>12</td>
            <td>15</td>
            <td>7</td>
            <td>12</td>
            <td>10</td>
        </tr>
    </table>
    <h1></h1>
    <hr>
    <h1></h1>
    <table border="2">
        <tr>
            <td>Horas</td>
            <td>Lunes</td>
            <td>Martes</td>
            <td>Miércoles</td>
            <td>Jueves</td>
            <td>Viernes</td>
        </tr>
        <tr>
            <td>8:00-9:00</td>
            <td rowspan="2" style="background-color: red;">Matemáticas</td>
            <td style="background-color: brown;">Lengua</td>
            <td>Música</td>
            <td></td>
            <td rowspan="2" style="background-color: red;">Matemáticas</td>
        </tr>
        <tr>
            <td>9:00-10:00</td>
            <td>Inglés</td>
            <td>Inglés</td>
            <td style="background-color: pink;">E.Física</td>
        </tr>
        <tr>
            <td>10:00-10:30</td>
            <td colspan="5" style="background-color: green;">Recreo</td>
        </tr>
        <tr>
            <td>10:30-11:30</td>
            <td style="background-color: pink;">E.Fisica</td>
            <td>Valenciano</td>
            <td rowspan="2" style="background-color: brown;">Lengua</td>
            <td style="background-color: yellow;">Informática</td>
            <td>Inglés</td>
        </tr>
        <tr>
            <td>12:30-13:30</td>
            <td>Musica</td>
            <td style="background-color: pink;">E.Fisica</td>
            <td rowspan="2" style="background-color: red;">Matemáticas</td>
            <td style="background-color: yellow;">Informática</td>
        </tr>
        <tr>
            <td>13:30-14:30</td>
            <td></td>
            <td style="background-color: yellow;">Informática</td>
            <td></td>
            <td></td>
        </tr>
    </table>
</body>
</html>