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
<link rel="stylesheet" type="text/css" href="style.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Test Disclaimer</title>
<script language="javascript">
	history.go (1);
</script>
</head>

<body>
<div id="BodyArea">
<!--<div id="BodyWrapper">!-->
<div id="DisWrapper">
	<div id="Header">
    </div>
<div id="quiz"></div>
<center>
<embed src="letsPlay.mp3" hidden="true" autostart="true" loop="false" />

<?php
	//$sqlvaliduser = "SELECT * FROM user WHERE user_id = " . $_SESSION['uid'] . " AND tested = 1";
	$sqlvaliduser = "SELECT * FROM user WHERE user_id = " . $_SESSION['uid'] . " AND login_date < DATE_ADD(CURDATE(), INTERVAL -30 DAY)";
	mysql_select_db ( $database, $data );
	$vuresult = mysql_query ( $sqlvaliduser );
	$vunum = mysql_num_rows ( $vuresult );
	if ( $vunum != 0 ) {
		//turning 0 if tested is 1
	  $sqltested = "UPDATE user SET tested = 0 WHERE user_id = " . $_SESSION['uid'];
	  mysql_select_db ( $database, $data );
	  $upresult = mysql_query ( $sqltested );

	  $sql = "SELECT * FROM test;";
	  mysql_select_db ( $database, $data );
	  $result = mysql_query ( $sql );
	 // echo ( "<table width='75%' align='center'>" ) ;
	 // echo ( "<tr class='text'>");
	 // echo ( "<th>Test Title</th><th>Test Description</th><th>#</th></tr>" );
	  $row = mysql_fetch_array ( $result );	  
	//	  echo ( "<tr><td class='text'><a href='preparetest.php?tid=" . $row ['test_id'] . "&tq=" . trim($row['no_of_question']) . "'>" . $row [ "test_name" ] . "</a></td><td class='text'>" . $row [ "test_desc" ] . "</td><td class='text'>" . $row ["no_of_question"] . "</td></tr>" );
	//  }
	//echo ( "<h2 align='center'>" . $row ['test_name'] .  "</h2>" );
	//echo ( "<div align='center' id='diclaimer' >" . $row ['test_desc'] .  "</div>" );
	echo ( "<div align='center' id='diclaimer' >");
		echo ("<h3>Disclaimer</h3>");
	echo ("<div id='image'>");
		echo ("</div>");
	echo ("<b>Select your option carefully as you will not have a second chance. Remember that When you click the option if Green dollar blink it means you have won One Dollar. If you click the option and Red Dollar blink it means you have lost Two Dollars.<br/>");
	
	//echo ( "Instructions:" );
	//echo ( "<div><b>Total number of Questions in test:</b>" . $row ['no_of_question'] .  "</div>" );
	echo ( "<div id='dili' > <a href='preparetest.php?tid=" . $row ['test_id'] . "&tq=" . trim($row['no_of_question']) . "'>Get prepare take a deep breathe and click here to go to the test</a> </div>" );}
	else {
	  mysql_select_db ( $database, $data );
	  $sqlusr = "SELECT * FROM user WHERE user_id = " . $_SESSION['uid'];
	  $uresult = mysql_query ( $sqlusr );
	  $usrrow = mysql_fetch_array ( $uresult );

		echo ( "<div id='taken'>You have already taken the test on " . $usrrow ['login_date'] . ". You cannot login before 30 days.</div>" );
	}
?>

</center>
</div>
</div>
</div>
<div id="Footer"></div>
</body>
</html>