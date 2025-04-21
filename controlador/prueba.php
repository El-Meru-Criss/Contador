<?php //llama a la base de datos con el modelo
    require_once '../modelo/mysql.php';
    $mysql = new MySQL();

    $mysql->conectar();

    //toma los valores deseados
    
    $id_producto = 1;
    $nombre = "cross";

    //realiza la consulta MySQL deseada, y la guarda en una variable

    // UPDATE `usuarios` SET `NombreUsuario`='criss' WHERE idusuarios = 1

    $mysql->efectuarConsulta("UPDATE `usuarios` 
    SET `NombreUsuario` = '".$nombre."' 
    WHERE idusuarios = '".$id_producto."'");

    //desconecta la base de datos

    $mysql->desconectar();
?>