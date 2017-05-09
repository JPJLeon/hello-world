<p>
  <a href="index.php">Inicio</a>
  <a href="alumnos.php">Lista Alumnos</a>
  <a href="new_alumno.php">Agregar Alumnos</a>

<?
  if (isset($_SESSION['user'])) {
?>
  <a href="handlers/login_handler.php?action=logout">Logout</a>
<?
  } else {
?>
  <a href="login.php">Login de Alumno</a>
<?
  }
?>
</p>

  </body>
</html>