<?php
  include('include/header.php');

  require_once("include/db.php"); # Permite la comunicación con la bd

  # Se hace la conexión a la BD #
  $db_alu = new phpDB(); # Usado para recuperar al alumno
  $db_alu->connect();
  $db_alu->exec('SELECT * FROM alumnos WHERE id = $1', array($_GET['id']));

  $db = new phpDB(); # La variable $db guarda la referencia a la BD
  $db->connect();
  $db->exec('SELECT n.nota FROM notas as n INNER JOIN alumnos as a ON n.alumno_id = a.id WHERE a.id = $1', array($_GET['id']));
?>

<?
  if (isset($_GET['success'])) {
?>
  <p>Nota Agregada</p>
<?
  }
?>

<h2>Notas de <? echo $db_alu->fobject()->nombre; ?></h2>

<ul>
<?
  if ($db->numRows() > 0) {
    do {
?>
      <li><? echo $db->fobject()->nota; ?></li>
<?
    } while($db->nextRow());
  } else {
    echo "No hay notas agregadas";
  }
?>
</ul>

<form action="handlers/alumno_handler.php?action=create_nota" method="POST">
  <legend>Agregar Nota</legend>
  <p>
    <label for="nota">Nota</label>
    <input type="text" name="nota">
  </p>
  <p>
    <input type="hidden" name="id" value="<? echo $db->fobject()->id; ?>">
    <input type="submit" value="Enviar">
  </p>
</form>
<?
  include('include/footer.php');

  $db->close();
?>