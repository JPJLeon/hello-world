<?
  require_once("../include/db.php"); # Permite la comunicación con la bd

  # Se hace la conexión a la BD #
  $db = new phpDB(); # La variable $db guarda la referencia a la BD
  $db->connect();

  # Se hacen distintas cosas dependiendo del valor del parámetro "action" #
  if( $_GET['action'] == 'login' ) {
    $query = "SELECT * FROM alumnos WHERE username = $1 and password = $2";
    $db->exec($query, array($_POST['username'], $_POST['password']));

    # Si hay un resultado, el login fue correcto #
    if ($db->numRows() == 1) {
      header('Location: ../index.php'); # Redirecciona a /index.php
      session_start();
      $_SESSION['user'] = $db->fobject();
      $db->close();
    } else {
      header('Location: ../login.php?error=true'); # Redirecciona al login con error
    }
  } else if( $_GET['action'] == 'logout' ) {
    $db->close();
    session_start();
    session_destroy(); # Borra las variables de sessión
    header('Location: ../index.php');
  }
?>