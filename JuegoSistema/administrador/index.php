<?php
  session_start();

  require 'config/conexion.php';

  if (isset($_SESSION['usuario_id'])) {
    $records = $conn->prepare('SELECT id, usuario, password FROM acceso WHERE id = :id');
    $records->bindParam(':id', $_SESSION['usuario_id']);
    $records->execute();
    $results = $records->fetch(PDO::FETCH_ASSOC);

    $user = null;

    if (count($results) > 0) {
      $user = $results;
    }
  }
?>

<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="img/icono.jpg" rel="shortcut icon" >
    <title>TETRIS</title>
    <link rel="stylesheet" type="text/css" href="../css/estilos.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    
</head>
<body>

    <?php require 'templade/cabecera.php' ?>
  
    
    
    <h1>Iniciar Sesion o crear cuenta</h1>
    <div class="form-group">
        <a href="login.php">Iniciar Sesión</a>
    </div>

    <div class="form-group">
        <a href="registro.php">Crear cuenta</a>
    </div>

    
</html>