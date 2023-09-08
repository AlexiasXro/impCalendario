<?php

    function regresarConexion(){
      $server = "localhost";
      $usuario = "root";
      $clave = "";
      $base = "calendario130";

        $conexion = mysqli_connect($server, $usuario, $clave, $base) or die ("Problemas de la conexion");
        mysqli_set_charset($conexion, 'utf8');
        return $conexion;
}
?>