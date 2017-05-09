<?
  require_once("../include/db.php"); # Permite la comunicación con la bd

  # Se hace la conexión a la BD #
  $db = new phpDB(); # La variable $db guarda la referencia a la BD
  $db->connect();

  # Se hacen distintas cosas dependiendo del valor del parámetro "action" #
  if( $_GET['action'] == 'create' ) {
    $db->exec('INSERT INTO alumnos (nombre, username, password, rol, fecha_nacimiento)'
      .' VALUES ($1, $2, $3, $4, $5)'
      , array($_POST['nombre'], $_POST['username'], $_POST['password'], $_POST['rol'], $_POST['fecha']));
    $db->close();
    header('Location: ../new_alumno.php?success=true');
  } else if( $_GET['action'] == 'create_nota' ) {
    $db->exec('INSERT INTO notas (alumno_id, nota)'
      .' VALUES ($1, $2)'
      , array($_POST['id'], $_POST['nota']));
    $db->close();
    header('Location: ../notas.php?id='.$_POST['id'].'&success=true');
  }
?>