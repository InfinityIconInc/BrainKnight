<?php
	session_start ( );
	include "data.php";
	mysql_select_db ( $database, $data );
	$uid = $_REQUEST [ 'uid' ];
	$tid = $_REQUEST [ 'tid' ];
	//$num = $_REQUEST [ 'no'  ];
	//echo ( "Question No:" . $num );
	//$sql = "SELECT * FROM answer_sheet INNER JOIN questions ON answer_sheet.q_id = questions.q_id WHERE user_id = $uid AND test_id = $tid AND q_shown = 0 LIMIT $num, " . ++$num . ";";
	$sql = "SELECT * FROM answer_sheet INNER JOIN questions ON answer_sheet.q_id = questions.q_id WHERE user_id = $uid AND test_id = $tid AND q_shown = 0 LIMIT 0, 1;";

	$result = mysql_query ( $sql );
	$row = mysql_fetch_object ( $result );
	if ( $row->q_id == "" )
		$qq_id = 0;
	else
		$qq_id = $row->q_id;

	echo ( "<div class='QuestionBlock'>" . $row->q_ques . "</div>" );
	echo ( "<div id='options_table' align='center'>" );
	echo ( "<div id='options_cell1' class='options_cell1'>" );
?>
	<input type="radio" name="rd<?php echo($row->q_id);?>" onChange="UpdateAnswer ( <?=$qq_id?>, 1 );disableRadio ( this.form);"/>
<?php
	echo ( $row->q_o1 . "</div>" );
	echo ( "<div id='options_cell2' class='options_cell2'>" );
?>
	<input type="radio" name="rd<?php echo($row->q_id);?>" onChange="UpdateAnswer ( <?=$qq_id?>, 2 );disableRadio ( this.form);"/>
<?php
	echo ( $row->q_o2 . "</div>" );
	if ( $row->q_o3 != "" ) {
		//echo ( "</tr><tr>" );
	echo ( "<div id='options_cell3' class='options_cell3'>" );
?>
	<input type="radio" name="rd<?php echo($row->q_id);?>" onChange="UpdateAnswer ( <?=$qq_id?>, 3 );disableRadio ( this.form);"/>
<?php
		echo ( $row->q_o3 . "</div>" );
	}
	if ( $row->q_o4 != "" ) {
		echo ( "<div id='options_cell4' class='options_cell4'>" );
?>
	<input type="radio" name="rd<?php echo($row->q_id);?>" onChange="UpdateAnswer ( <?=$qq_id?>, 4 );disableRadio ( this.form);"/>
<?php
		echo ( $row->q_o4 . "</div>" );
		//echo ( "</tr>" );
	}
	//if ( $row->q_o5 != "" )
	//echo ( "<td class='options_cell5' colspan='2'>" );
?>
<?php

	//echo ( $row->q_o5 . "</td>" );
	//echo ( "</tr>" );
	echo ( "</div>" );
	
	//Mark the Sent/displayed question SHOWN=1 in db
	mysql_select_db ($database, $data );
	mysql_query ( "UPDATE answer_sheet SET q_shown = 1 WHERE q_id = $row->q_id AND user_id = $uid" );
	$_SESSION [ 'qd' ] = $_SESSION [ 'qd' ] + 1;
	//QuestionNotDisplayed unshown questions totalshownquestions-1
	/////////////////////////////////////////////////
?>
<embed src="newQuestion.mp3" hidden="true" autostart="true" loop="false" />

