<?php include "data.php"; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body>
<?php
	
	$ufn = trim ( $_REQUEST[ 'txtfirst' ] );
	$uln = trim ( $_REQUEST[ 'txtlast' ] );
	$uem = trim ( $_REQUEST[ 'txtemail' ] );
	$uci = trim ( $_REQUEST[ 'txtcity' ] );
	$uph = trim ( $_REQUEST[ 'txtphone' ] );
	$ucnic = trim ( $_REQUEST[ 'txtcnic' ] );
	$una = trim ( $_REQUEST[ 'txtuser' ] );
	$empid = trim ( $_REQUEST[ 'txtemp' ] );
	$upas = trim ( $_REQUEST[ 'txtpassword' ] );
	
	mysql_select_db ( $database, $data );
	$sqlsearch = "SELECT * FROM user WHERE user_name LIKE '$una' OR email LIKE '$uem';";
//	echo ( $sqlsearch );
	$sr = mysql_query ( $sqlsearch );
	$num = mysql_num_rows ( $sr );

	if ( $num == 0 ) {
	  $insert_sql = "INSERT INTO user ( first_name, last_name, password, email, city, phone_number, cnic_no, user_name, emp_id, login_date) VALUES ( '$ufn', '$uln', '$upas','$uem', '$uci', '$uph', '$ucnic', '$una', '$empid', '2014-1-1' )";
	  //echo ( $insert_sql );
	  mysql_select_db ( $database, $data );
	  if ( mysql_query ( $insert_sql, $data ) == 0 )
		  echo ( "Could not Enter the Data" );
	  else {
		  echo header("location:sign_in.php");
	  }
	}
	else {
		echo ( "UserName/Email Already exixsts." );
		
	}
		
	mysql_close ( $data );
?>
</body>
</html>
