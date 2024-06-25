<?php
	include "data.php";
	$tid = trim($_REQUEST [ 'tid' ]);
	$uid = trim($_REQUEST [ 'uid' ]);
	$qid = trim($_REQUEST [ 'qid' ] );
	$opt = trim($_REQUEST [ 'opt' ] );
	mysql_select_db ( $database, $data );

	if ( $opt == 1 ) {
		$sqlChk = "SELECT * FROM questions WHERE q_id = $qid AND q_ans1=1";
		$sqlUpd = "UPDATE answer_sheet SET q_ans1=0, q_ans2=0, q_ans3=0, q_ans4=0, q_ans1=1 WHERE q_id = $qid AND user_id = $uid AND test_id = $tid;";
	}
	if ( $opt == 2 ) {
		$sqlChk = "SELECT * FROM questions WHERE q_id = $qid AND q_ans2=1";
		$sqlUpd = "UPDATE answer_sheet SET q_ans1=0, q_ans2=0, q_ans3=0, q_ans4=0, q_ans2=1 WHERE q_id = $qid AND user_id = $uid AND test_id = $tid;";
	}
	if ( $opt == 3 ) {
		$sqlChk = "SELECT * FROM questions WHERE q_id = $qid AND q_ans3=1";
		$sqlUpd = "UPDATE answer_sheet SET q_ans1=0, q_ans2=0, q_ans3=0, q_ans4=0, q_ans3=1 WHERE q_id = $qid AND user_id = $uid AND test_id = $tid;";
	}
	if ( $opt == 4 ) {
		$sqlChk = "SELECT * FROM questions WHERE q_id = $qid AND q_ans4=1";
		$sqlUpd = "UPDATE answer_sheet SET q_ans1=0, q_ans2=0, q_ans3=0, q_ans4=0, q_ans4=1 WHERE q_id = $qid AND user_id = $uid AND test_id = $tid;";
	}
	if ( $opt == 5 ) {
		$sqlChk = "SELECT * FROM questions WHERE q_id = $qid AND q_ans5=1";
		$sqlUpd = "UPDATE answer_sheet SET q_ans1=0, q_ans2=0, q_ans3=0, q_ans4=0, q_ans5=1 WHERE q_id = $qid AND user_id = $uid AND test_id = $tid;";
	}
	$chkr = mysql_query ( $sqlChk );
	mysql_query ( $sqlUpd );
	echo ( mysql_num_rows ( $chkr ));
?>