<?php include "data.php"; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<?php
	$em = $_POST ['txtEmail'];
	$em = str_replace ( "$", "", $em );
	$em = str_replace ( ";", "", $em );
	$em = str_replace ( "'", "", $em );
	mysql_select_db ( $database, $data );
	
	$sql = "SELECT * FROM user WHERE email LIKE '$em'";

	$result = mysql_query ( $sql );
	$numrow = mysql_num_rows ( $result );
	$row = mysql_fetch_array ( $result );
	if ( $numrow == 1 ) {
	$pwd = $row [ 'password' ];
	$un = $row [ 'first_name' ] . " " . $row [ 'last_name' ];
	$headers = 'From: brain@brainknight.com' . "\r\n" .
    'Reply-To: brain@brainknight.com' . "\r\n" .
    'X-Mailer: PHP/' . phpversion();
	$message = "
	Hello $un,
	
	You have requested to recover your password from BrainKnight.com. Your password is as follow:
	
	$pwd
	
	Please keep it safe.
	Hope you have a very nice day.
	
	Regards,
	BrainKnight.com";

	mail ( $em, "BrainKnight - Password Recovery", $message, $headers);
	echo ( "Email Sent" );
	}
	else
		echo ( "Email Not Found, Please Register First" );
?>
</body>
</html>