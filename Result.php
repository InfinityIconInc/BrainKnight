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
<title>Result</title>
<script language="javascript">
	function Logout() {
		setTimeout ( "location.href='logout.php'", 00 );
	}
</script>
</head>

<body>
<div id="BodyWrapper">
	<div id="Header">
    </div>
    <div id="RulesWrapper">
<?php
	$tid = $_REQUEST [ "txtTID" ];
	$uid = $_SESSION [ "uid" ];
	mysql_select_db ( $database, $data );
	$strQuestions = ""; //list of question ids
	foreach ( $_POST as $post_key => $get_value ) {
		//echo ( $post_key . " " . $get_value . "</br>");
		preg_match ( "~^([0-9]+)~", $post_key, $q );
		//echo  ( "</br>Selected Question: " . $q[0] . " " );
		preg_match ( "~([0-9]+)$~", $post_key, $a );
		//echo ( "Selected Answer: " . $a[0] . "</br>" );
//		$sql = "SELECT * FROM questions WHERE q_id = " . $q[0];
//		$result = mysql_query ( $sql );
//		$row = mysql_fetch_object ( $result );

		if ( isset ( $a[0] ) && isset ( $q[0] ) ) {
		$sql = "UPDATE answer_sheet SET q_ans" . $a[0] . " = 1 WHERE q_id = " . $q[0];
		//echo ( $sql );
		mysql_query ( $sql );
		}
	}
		mysql_select_db ( $database, $data );
		$sqlcheck = "SELECT * FROM questions as q INNER JOIN answer_sheet as a ON q.q_id = a.q_id WHERE a.user_id = $uid AND a.test_id = $tid AND q.q_ans1 = a.q_ans1 AND q.q_ans2 = a.q_ans2 AND q.q_ans3 = a.q_ans3 AND q.q_ans4 = a.q_ans4 AND q.q_ans5 = a.q_ans5";
		$totq = $_SESSION['tq'];
		$result2 = mysql_query ( $sqlcheck );
		$numrows = mysql_num_rows ( $result2 );
		$wrongq = $totq - $numrows;
		$amtearned = $numrows - ($wrongq * 2);
		echo ("<h1 align='center'>Quiz Result</h1>");		
		echo ("<div id='result'>");		
		echo ("<table align='center'>");
		echo ("<tr>");
		echo "<td class='res_blo'>Total Questions:</td><td class='res_blo1'> $totq </td></tr>";
		echo "<tr><td class='res_blo'>Correct Answers:</td><td class='res_blo1'>$numrows</td></tr>";
		echo "<tr><td class='res_blo'>Wrong Answers:</td><td class='res_blo1'>$wrongq</td></tr>";
		echo ("<tr><td class='res_blo'>Percentage: </td><td class='res_blo1'>" . ($numrows / $totq)*100 . "%</td></tr>" );
		echo "<tr><td class='res_blo'>Amount Earned:</td><td class='res_blo1'>$amtearned </td></tr>";
		echo "</table>";
		echo "</div>";
		
/*	
		//List of Questions in test and their correct answers 
		$_SESSION [ $q[0] . "_1"] = $row->q_ans1;
		$_SESSION [ $q[0] . "_2"] = $row->q_ans2;
		$_SESSION [ $q[0] . "_3"] = $row->q_ans3;
		$_SESSION [ $q[0] . "_4"] = $row->q_ans4;
		$_SESSION [ $q[0] . "_5"] = $row->q_ans5;
		
		//Answer of above question given by user
		$_SESSION [ $q[0] . "_a" . $a[0] ] = 1;
		//saving list of questions in a string to be used later
		$strQuestions = $strQuestions . $q[0] . ",";
	
		if ( $a[0] == 1 && $row->q_ans1 == 1 )
			echo ( "A option correct" );
		if ( $a[0] == 2 && $row->q_ans2 == 1 )
			echo ( "B Option Correct" );
		if ( $a[0] == 3 && $row->q_ans3 == 1 )
			echo ( "C Option Correct" );
		if ( $a[0] == 4 && $row->q_ans4 == 1 )
			echo ( "D Option Correct" );
		if ( $a[0] == 5 && $row->q_ans5 == 1 )
			echo ( "E Option Correct" );
	}
	echo ( $strQuestions );
	$attemptedQ = explode ( ",", $strQuestions );//converted q to array
	echo ( "</br>Total Options:" . count ( $attemptedQ ) );
	for ( $i = 0; $i < count($attemptedQ)-1; $i++ ) {
//		echo ( "Actual Answers" );
//		echo ( $_SESSION [ $attemptedQ[$i] . "_1" ]);
//		echo ( $_SESSION [ $attemptedQ[$i] . "_2" ]);
//		echo ( $_SESSION [ $attemptedQ[$i] . "_3" ]);
//		echo ( $_SESSION [ $attemptedQ[$i] . "_4" ]);
//		echo ( $_SESSION [ $attemptedQ[$i] . "_5" ]);
//		echo ( "Selected Answer" );
		if (! isset ( $_SESSION [ $attemptedQ[$i] . "_a1"] ) )
			$_SESSION [ $attemptedQ[$i] . "_a1"] = 0;
		if (! isset ( $_SESSION [ $attemptedQ[$i] . "_a2"] ) )
			$_SESSION [ $attemptedQ[$i] . "_a2"] = 0;
		if (! isset ( $_SESSION [ $attemptedQ[$i] . "_a3"] ) )
			$_SESSION [ $attemptedQ[$i] . "_a3"] = 0;
		if (! isset ( $_SESSION [ $attemptedQ[$i] . "_a4"] ) )
			$_SESSION [ $attemptedQ[$i] . "_a4"] = 0;
		if (! isset ( $_SESSION [ $attemptedQ[$i] . "_a5"] ) )
			$_SESSION [ $attemptedQ[$i] . "_a5"] = 0;
			
		echo ( "</br>" );
	}
	
	for ( $i = 0; $i < count($attemptedQ)-1; $i++ ) {
			echo ($_SESSION [ $attemptedQ[$i] . "_a1"] );
			echo ($_SESSION [ $attemptedQ[$i] . "_a2"] );
			echo ($_SESSION [ $attemptedQ[$i] . "_a3"] );
			echo ($_SESSION [ $attemptedQ[$i] . "_a4"] );
			echo ($_SESSION [ $attemptedQ[$i] . "_a5"] );
			echo ( "</br>" );
	}


	for ( $i = 0; $i < 5; $i++ ) {
			$correct = 0;
			$wrong = 0;
			$mentionNot = 0;
			if ( $_SESSION [ $attemptedQ[$i] . "_1" ] == $_SESSION [ $attemptedQ[$i] . "_a1"] ) {
				echo ( "Q:" . $_SESSION [ $attemptedQ[$i] . "_1" ] . " ");
				echo ( "A:" . $_SESSION [ $attemptedQ[$i] . "_a1"] );
				$correct++;
			}
			else {
				echo ( "WQ:" . $_SESSION [ $attemptedQ[$i] . "_5" ] . " ");
				echo ( "WA:" . $_SESSION [ $attemptedQ[$i] . "_a5"] );
				$wrong++;
			}
				
			if ( $_SESSION [ $attemptedQ[$i] . "_2" ] == $_SESSION [ $attemptedQ[$i] . "_a2"] ) {
				echo ( "Q:" . $_SESSION [ $attemptedQ[$i] . "_2" ] . " ");
				echo ( "A:" . $_SESSION [ $attemptedQ[$i] . "_a2"] );
				$correct++;
			}
			else {
				echo ( "WQ:" . $_SESSION [ $attemptedQ[$i] . "_5" ] . " ");
				echo ( "WA:" . $_SESSION [ $attemptedQ[$i] . "_a5"] );
				$wrong++;
			}

			if ( $_SESSION [ $attemptedQ[$i] . "_3" ] == $_SESSION [ $attemptedQ[$i] . "_a3"] ) {
				echo ( "Q:" . $_SESSION [ $attemptedQ[$i] . "_3" ] . " ");
				echo ( "A:" . $_SESSION [ $attemptedQ[$i] . "_a3"] );
				$correct++;
			}
			else {
				echo ( "WQ:" . $_SESSION [ $attemptedQ[$i] . "_5" ] . " ");
				echo ( "WA:" . $_SESSION [ $attemptedQ[$i] . "_a5"] );
				$wrong++;
			}
			if ( $_SESSION [ $attemptedQ[$i] . "_4" ] == $_SESSION [ $attemptedQ[$i] . "_a4"] ) {
				echo ( "Q:" . $_SESSION [ $attemptedQ[$i] . "_4" ] . " ");
				echo ( "A:" . $_SESSION [ $attemptedQ[$i] . "_a4"] );
				$correct++;
			}
			else {
				echo ( "WQ:" . $_SESSION [ $attemptedQ[$i] . "_5" ] . " ");
				echo ( "WA:" . $_SESSION [ $attemptedQ[$i] . "_a5"] );
				$wrong++;
			}
			
			if ( $_SESSION [ $attemptedQ[$i] . "_5" ] == $_SESSION [ $attemptedQ[$i] . "_a5"] ) {
				echo ( "Q:" . $_SESSION [ $attemptedQ[$i] . "_5" ] . " ");
				echo ( "A:" . $_SESSION [ $attemptedQ[$i] . "_a5"] );
				$correct++;
			}
			else {
				echo ( "WQ:" . $_SESSION [ $attemptedQ[$i] . "_5" ] . " ");
				echo ( "WA:" . $_SESSION [ $attemptedQ[$i] . "_a5"] );
				$wrong++;
			}

/*
			if ( $_SESSION [ $attemptedQ[$i] . "_1" ] == 1 && $_SESSION [ $attemptedQ[$i] . "_a1"] == 1 )
				$correct++;
				else if ( $_SESSION [ $attemptedQ[$i] . "_1" ] == 0 && $_SESSION [ $attemptedQ[$i] . "_a1"] == 0 )
					$mentionNot++;
			else {
				echo ( "1" );
				$wrong++;
			}
			if ( $_SESSION [ $attemptedQ[$i] . "_2" ] == 1 && $_SESSION [ $attemptedQ[$i] . "_a2"] == 1 )
				$correct++;
				else if ( $_SESSION [ $attemptedQ[$i] . "_2" ] == 0 && $_SESSION [ $attemptedQ[$i] . "_a2"] == 0 )
					$mentionNot++;
			else {
				echo ( "2" );
				$wrong++;
			}
				
			if ( $_SESSION [ $attemptedQ[$i] . "_3" ] == 1 && $_SESSION [ $attemptedQ[$i] . "_a3"] == 1 )
				$correct++;
				else if ( $_SESSION [ $attemptedQ[$i] . "_3" ] == 0 && $_SESSION [ $attemptedQ[$i] . "_a3"] == 0 )
					$mentionNot++;
			else {
				echo ( "3" );
				$wrong++;
			}
				
			if ( $_SESSION [ $attemptedQ[$i] . "_4" ] == 1 && $_SESSION [ $attemptedQ[$i] . "_a4"] == 1 )
				$correct++;
				else if ( $_SESSION [ $attemptedQ[$i] . "_4" ] == 0 && $_SESSION [ $attemptedQ[$i] . "_a4"] == 0 )
					$mentionNot++;
			else{
				echo ( "4" );
				$wrong++;
			}
			
			if ( $_SESSION [ $attemptedQ[$i] . "_5" ] == 1 && $_SESSION [ $attemptedQ[$i] . "_a5"] == 1 )
				$correct++;
				else if ( $_SESSION [ $attemptedQ[$i] . "_5" ] == 0 && $_SESSION [ $attemptedQ[$i] . "_a5"] == 0 )
					$mentionNot++;
			else {
				echo ( "5" );
				$wrong++;
			}


			echo ( "Correct:" . $correct . " Wrong:" . $wrong . " NotChecked:" . $mentionNot . "</br>" );
			echo ( "</br>" );
	}
*/

?>
<center>
<input type="button" class="Signout_Button" name="btnLogout" value="Sign-out" onclick="Logout();" />
</center>
</div>
</div>
</body>
</html>