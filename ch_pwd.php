<?php
	session_start ( );
	if ( ! isset ( $_SESSION ['uid' ] ) )
		header("location:index.php");

	if($_SESSION['uid']=="")
	{
		header("location:index.php");
	}
	include "data.php";
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<?php
	mysql_select_db ( $database, $data );
	$pwd = $_POST ['txtPwd' ];
	$sql = "UPDATE user SET password = '$pwd' WHERE user_id = " . $_SESSION['uid'];
	//echo ( $sql );
	$i = mysql_query ( $sql );
	if ( $i == 1 ) {
?>
		<script language="javascript">
			alert ( "Password Changed" );
			setTimeout ( "location.href='quiz_rules.php', 1000" );
		</script>
<?php		
	}
	else {
?>
		<script language="javascript">
			alert ( "Error Changing Password, Contact Admin." );
			setTimeout ( "location.href='quiz_rules.php', 1000" );
		</script>

<?php
	}
?>
</body>
</html>