<?php
	session_start ( );
	include "data.php";
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Sign In</title>
</head>

<body>
<?php
	mysql_select_db ( $database, $data );
	$un=$_POST['txtName'];
	$pw=$_POST['txtPassword'];
	$sql="select * from user where user_name LIKE '$un' AND password LIKE '$pw';";
	$result = mysql_query($sql);

	$row = mysql_fetch_array($result);

	if($row['password'] == $pw)
	{
		echo "Welcome: $un";
		$_SESSION ["uid"] = $row [ "user_id"];
?>
		<script language="javascript">
			location.href = "quiz_rules.php";
		</script>
<?php
	}
	else
	{
		echo "Sorry you cannot access the services without Signing up...";
	}

?>
</body>
</html>
