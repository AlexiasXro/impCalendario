<?php

header('Content-Type: application/json');

require("conexion.php");

$conexion = regresarConexion();


switch ($_GET['accion']) {
    case 'listar':
        $datos = mysqli_query($conexion, " SELECT id, 
                                        titulo AS title, 
                                        descripcion AS details, 
                                        inicio AS start, 
                                        fin AS end, 
                                        colortexto AS textColor, 
                                        colorfondo AS backgroundColor FROM eventos");
        $resultado = mysqli_fetch_all($datos, MYSQLI_ASSOC);
        echo json_encode($resultado);
        break;
    case 'agregar':
        $respuesta = mysqli_query($conexion, "INSERT INTO eventos (titulo, descripcion, inicio, fin, colortexto, colorfondo) VALUES 
        ('$_POST[titulo]', '$_POST[descripcion]','$_POST[inicio]','$_POST[fin]','$_POST[colortexto]','$_POST[colorfondo]')");
        echo json_encode($respuesta);
        break;    
    case 'modificar':
        $respuesta = mysqli_query($conexion, "update eventos set titulo = '$_POST[titulo]', 
        descripcion = '$_POST[descripcion]',
        inicio = '$_POST[inicio]',
        fin = '$_POST[fin]',
        colortexto = '$_POST[colortexto]',
        colorfondo = '$_POST[colorfondo]',
        where id = '$_POST[id]'");
        echo json_encode($respuesta);
        break;   

    case 'borrar':
        $respuesta =mysqli_query($conexion, "DELETE FROM eventos WHERE id = $_POST[id]");
        echo json_encode($respuesta);
        break;  

       /* # code...
        "DELETE FROM eventos WERE id = '$_POST[id]'"
        echo "Borrar!....";
        
        break; 
        */       
}

?>