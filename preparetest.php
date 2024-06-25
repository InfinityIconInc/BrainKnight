<?php
	session_start ( );
	include "data.php";
	///////////////////////////SETTING THE answer_sheet////////////////////////////////
	if (!(isset ($_SESSION[ 'testOpened' ] ))){
		//if ( $_SESSION [ 'testOpened' ] != 1 ) {
		  //echo ( "Inside" );
		$_SESSION [ 'testOpened' ] = 1;
		$uid = $_SESSION [ "uid" ];
		$tid = $_REQUEST [ "tid" ];
		$tq = $_REQUEST ['tq'];
		$_SESSION ['tq'] = $tq; //total questions in test
		$_SESSION ['qd'] = 0; //questions displayed in front of user QuestionsNotDisplayed
		$_SESSION [ 'tid' ] = $tid;
		mysql_select_db ( $database, $data );
		$sqlchk = "SELECT *, questions.q_id as ques_id FROM questions LEFT JOIN answer_sheet ON questions.q_id = answer_sheet.q_id WHERE answer_sheet.q_id IS NULL ORDER BY RAND() LIMIT 0, $tq;";
		mysql_select_db ( $database, $data );
		$result = mysql_query ( $sqlchk );
		//echo ( "<table align='center' width='75%'>");
		while ( $row = mysql_fetch_object ( $result ) ) {
			$sqlIns = "INSERT INTO answer_sheet ( test_id, user_id, q_id, q_ans1, q_ans2, q_ans3, q_ans4, q_ans5 ) VALUES ( $tid, $uid, $row->ques_id, 0, 0, 0, 0, 0 )";
			mysql_query ( $sqlIns );
		//}
	  }
	}
	//disabling current user for taking more tests and storing date of test
	mysql_select_db ( $database, $data );
	$sqldisableuser = "UPDATE user SET tested = 1 WHERE user_id = " . $_SESSION['uid'];
	mysql_query ( $sqldisableuser );
  	  mysql_select_db ( $database, $data );
	  $dt = date ( 'Y-m-d' );
	  $sqlInsert = "UPDATE user SET login_date = '$dt' WHERE user_id = " . $_SESSION ['uid'];
	  //echo ( $sqlInsert );
	  mysql_query ( $sqlInsert );
	
		//////////////////////////////////////

	////////////////////////////////////////////////////////////////////////////////////
	//header ( "Location:TestPaper.php" );
?>
	<script language="javascript">
		setTimeout ( "location.href='TestPaper.php'", 00 );
	</script>