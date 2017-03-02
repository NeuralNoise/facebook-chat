<?php 
include 'connection.php';
$items = mysql_query("SELECT * FROM loadmore ORDER BY id DESC LIMIT 8");
$my  = "http://".$_SERVER['HTTP_HOST'];
$my .= str_replace(basename($_SERVER['SCRIPT_NAME']),"",$_SERVER['SCRIPT_NAME']);
if(!empty($_GET['username'])){
	$_SESSION['logged_as'] = $_GET['username'];
	header("location:index.php");
}
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Facebook Chat Example - Rubi Jihantoro</title>
	<link rel="stylesheet" href="assets/style.css"><!-- 
|#################################
|  Fixed Facebook Chat Example
|#################################
|
|  Writer : Rubi Jihantoro
|  Github : https://www.github.com/codenoid/
|  Kutemukan : https://kutemukan.com/profile/ruby/
|  Facebook : https://www.facebook.com/real.jihantoro/
| 
--></head>
<body>
	<div class="container">
		<h1 style="text-align:center;">LOGIN</h1>
		<div class="users list">
<?php 
  $users = mysql_query("SELECT * FROM fbchat_users ORDER BY id DESC");
  while ($n = mysql_fetch_assoc( $users )) {
?>
	<a href="<?php echo $my; ?>login.php?username=<?php echo $n['username']; ?>" title="">
	<img src="assets/<?php echo $n['image']; ?>" title="Login Menggunakan Akun <?php echo $n['name']; ?>" alt="Foto Dari <?php echo $n['name']; ?>" class="user">
	</a>

<?php } ?>
		</div>
	</div>
</body>
</html>