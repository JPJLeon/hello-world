<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>Ejemplo BD</title>
</head>
<body>

<?
  if (isset($_SESSION['user'])) {
?>
  <p>Bienvenido <? echo $_SESSION['user']->nombre; ?></p>
<?
  }
?>