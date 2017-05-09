<?
  require_once('include/header.php')
?>

<?
  # Si está colocado el parámetro error mostramos el error
  if (isset($_GET['error'])) {
?>
  <p>Error, revisa tus datos</p>
<?
  }
?>

<form action="handlers/login_handler.php?action=login" method="POST">
  <legend>Entrar como alumno.</legend>
  <p>
    <label for="username">Nombre de Usuario</label>
    <input type="text" name="username">
  </p>
  <p>
    <label for="password">Contraseña</label>
    <input type="password" name="password">
  </p>
  <p>
    <input type="submit" value="Entrar">
  </p>
</form>

<?
  require_once('include/footer.php')
?>
