<?php
 require 'config/conexion.php';

  $message='';

 if (!empty($_POST['usuario'])&& !empty($_POST['contrasenia'])) {
  $sql = "INSERT INTO acceso  (usuario, contrasenia) VALUES (:usuario, :contrasenia)";
    $stmt = $conn->prepare($sql);
    $stmt->bindParam(':usuario', $_POST['usuario']);
    $password = password_hash($_POST['contrasenia'], PASSWORD_BCRYPT);
    $stmt->bindParam(':contrasenia', $password);

    if ($stmt->execute()) {
      $message = 'Usuario Registrado';
    } else {  
      $message = 'Algo a fallado al Registrar el Usuario revise que los campos esten llenados correctamente';
    }
  }
 
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro</title>
    <link rel="stylesheet" href="../css/style.css">
    <link href="../img/icono.jpg" rel="shortcut icon" >
    
</head>
<body>

    <?php require 'templade/cabecera.php' ?>

    <?php if(!empty($message)): ?>
      <p> <?= $message ?></p>
    <?php endif; ?>

    <h1>Registro</h1>
    <span>o <a href="login.php">Login</a></span>

    <form action="registro.php" method="POST" >

    <img src="../img/img1.png" height="250" >

               

                <div class="form-group">                                 
                  <input type="text" class="form-control" name="usuario" placeholder="Escribe tu Usuario" >
                </div>

                <div class="form-group">    
                  <input type="password" class="form-control" name="contrasenia"placeholder="Escribe tu contraseña">
                </div>

                <div class="form-group">    
                  <input type="password" class="form-control" name="confirmar_contrasenia"placeholder="Confirma la contraseña">
                </div>
                  
                <input type="submit" value="Enviar" class="btn btn-primary">
    </form>
    
</body>
</html>