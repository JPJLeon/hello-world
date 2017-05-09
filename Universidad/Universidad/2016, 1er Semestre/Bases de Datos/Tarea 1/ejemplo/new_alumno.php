<?php
  include('include/header.php');
?>

<?
  if (isset($_GET['success'])) {
?>
  <p>Alumno Creado</p>
<?
  }
?>

<form action="handlers/alumno_handler.php?action=create" method="POST">
  <p>
    <label for="nombre">Nombre</label>
    <input type="text" name="nombre">
  </p>
  <p>
    <label for="username">Nombre de Usuario</label>
    <input type="text" name="username">
  </p>
  <p>
    <label for="password">Contraseña</label>
    <input type="password" name="password">
  </p>
  <p>
    <label for="rol">Rol</label>
    <input type="text" name="rol">
  </p>
  <p>
    <label for="fecha_nacimiento">Fecha de Nacimiento</label>
    <input type="text" name="fecha">
  </p>

  <p>
    <input type="submit" value="Enviar">
  </p>
</form>

<?
  include('include/footer.php');
?>