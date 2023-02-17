
<?php

session_start();

require 'config/conexion.php';

if (!empty($_POST['usuario']) && !empty($_POST['contrasenia'])) {
  $records = $conn->prepare('SELECT id, usuario, contrasenia FROM acceso WHERE usuario = :usuario');
  $records->bindParam(':usuario', $_POST['usuario']);
  $records->execute();
  $results = $records->fetch(PDO::FETCH_ASSOC);

  $message = '';

  if (count($results) > 0 && password_verify($_POST['contrasenia'], $results['contrasenia'])) {
    $_SESSION['usuario_id'] = $results['id'];
    header("Location: inicio.php");
  } else {
    $message = 'Algo a ocurrio';
  }
}

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGIN</title>
    <link rel="stylesheet" href="../css/style.css">
    <link href="../img/icono.jpg" rel="shortcut icon" >
</head>
<body>

    <?php require 'templade/cabecera.php' ?>

    <?php if(!empty($message)): ?>
      <p> <?= $message ?></p>
    <?php endif; ?>



    <h1>Login</h1>
    <span><a href="registro.php">Registro</a>
    o
    <a href="seccion/cerrar.php">cerrar</a></span>

    <form  action="login.php" method="POST">

    <img src="../img/img1.png" height="250" >

                  <div class="form-group">                             
                  <input type="text" class="form-control" name="email" placeholder="Escribe tu Email" >
                  </div>

                  <div class="form-group">    
                  <input type="password" class="form-control" name="contrasenia" placeholder="Escribe tu contraseña">
                  </div>
                  <input type="submit" value="Enviar" class="btn btn-primary">
    </form>
    
</body>
</html>