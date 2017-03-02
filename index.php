<?php 
include 'connection.php';
$items = mysql_query("SELECT * FROM loadmore ORDER BY id DESC LIMIT 8");
if(empty($_SESSION['logged_as']))
  header("location:login.php");
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Facebook Chat Example - Rubi Jihantoro</title>
	<link rel="stylesheet" href="assets/style.css">
	<link rel="stylesheet" href="assets/cs.css"><!-- 
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
		<div style="text-align:center;">
			<a href="logout.php">LOGOUT</a>
		</div>
		<div class="users list">
<?php $users = mysql_query("SELECT * FROM fbchat_users ORDER BY id DESC");
while ($n = mysql_fetch_assoc( $users )) { if($_SESSION['logged_as'] != $n['username']){ ?>
	<img onclick="chat('<?php echo $n['username']; ?>');" src="assets/<?php echo $n['image']; ?>" title="Mulai Chat Dengan <?php echo $n['name']; ?>" alt="Foto Dari <?php echo $n['name']; ?>" class="user">
<?php }} ?>
		</div>
		<div class="active-chat"></div>
	</div>
	<div class="template" style="display:none;">
			<div class="chat">
				<div class="header">
					<div class="who">
						<i class="circle icon"></i>
						<x class="myname"></x>
					</div>
					<div class="act">
						<i class="close icon"></i>
					</div>
				</div>
				<div class="chat-list"></div>
				<div class="input">
					<input type="text" placeholder="Ketikkan pesan...">
				</div>
			</div>
	</div>
	<div class="change"></div>
	<div class="istirahat"></div>
	<div class="intervalroom"></div>
	<div class="chat-break"></div>
	<script src="assets/bundle.js"></script>
	<div class="a-d">
<script type="text/javascript">
$('[username]').each(function(){
	var s = $(this).attr('username');
	$('.active-chat > div[username="'+s+'"]').click(function(){
  		$('.active-chat > .chat[username!="'+s+'"]').removeClass('active');
  		$('.active-chat > .chat[username="'+s+'"]').addClass('active');
	});
});
</script>
	</div>
	<?php 
		$my  = "http://".$_SERVER['HTTP_HOST'];
		$my .= str_replace(basename($_SERVER['SCRIPT_NAME']),"",$_SERVER['SCRIPT_NAME']);
	?>
	<script type="text/javascript">var terminal = '<?php echo $my; ?>/terminal.php';</script>
	<script src="assets/app.js"></script>
</body>
</html>