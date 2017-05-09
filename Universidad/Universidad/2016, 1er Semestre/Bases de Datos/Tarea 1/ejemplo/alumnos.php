<?php
  include('include/header.php');

  require_once("include/db.php"); # Permite la comunicación con la bd

  # Se hace la conexión a la BD #
  $db = new phpDB(); # La variable $db guarda la referencia a la BD
  $db->connect();
  $db->exec('SELECT * FROM alumnos', array());
?>

<h2>Lista de Alumnos</h2>

<table>
  <thead>
    <th>Rol</th>
    <th>Nombre</th>
    <th>Usuario</th>
    <th>Cumpleaños</th>
  </thead>
  <tbody>
<?
  do {
?>
    <tr>
      <td><? echo $db->fobject()->rol; ?></td>
      <td><? echo $db->fobject()->nombre; ?></td>
      <td><? echo $db->fobject()->username; ?></td>
      <td><? echo $db->fobject()->fecha_nacimiento; ?></td>
      <td><a href="notas.php?id=<? echo $db->fobject()->id; ?>">Ver Notas</a></td>
    </tr>
<?
  } while($db->nextRow());
?>
  </tbody>
</table>
<?
  include('include/footer.php');

  $db->close();
?>