<?php
	session_start ( );
	include "data.php";
	//following 2 statements updates the counter. if user refreshes within the test the not shown questions will again calculated and already shown questions in front of the user will not be shown
//	if ( $_SESSION['qd'] > 0 ) //it will be executed when user ll refresh the test
//		$_SESSION ['tq'] = $_SESSION ['tq'] - $_SESSION['qd'];//on refresh it ll calculated the displayed qust
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" type="text/css" href="style.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Test Paper</title>
<script language="javascript">
	function InitiateLooks ( ) {
		var cq = document.getElementById("txtQND" ).value;//Selected Question/question displayed in front of user
		document.getElementById("btnEndTest").hidden = true;//hide end test button
		if ( cq == 0 ) { //if no question displayed
			document.getElementById("txtMessage").innerHTML = "Click the Button to Start the Test";
			document.getElementById("txtNo").innerHTML = ""; //nulls the Question Number on Begin test button page
			//document.getElementById("txtNo").hidden = true; //hides the 0 number question
			document.getElementById("btnNQ").value = "Begin Test"; //set the next question btn value for 0qust
		}
		else
			DisplayTime ( 1 );//display time when refreshed is press "1"
	}
	
	function disableRadio(isForm){
		nElements = isForm.length;
		for (i=0; i<nElements; i++)
		{if (isForm[i].type == "radio" && isForm[i].checked != true){isForm[i].disabled = true}}
	} 

	function UpdateAnswer ( qid, optionNo ) { //will work on the option pressed in getquestion.php
		var tid = document.getElementById("txtTID").value;
		var uid = document.getElementById("txtUID").value;
		//var ra = document.getElementById("txtRight").innerHTML; //saving no of right anw from html span
		//var wa = document.getElementById("txtWrong").innerHTML; //saving no of Wrong anw from html span
		var xmlhttp = new XMLHttpRequest ( );
		xmlhttp.onreadystatechange = function ( ) {
			if ( xmlhttp.readyState == 4 && xmlhttp.status == 200 ) {
				if ( xmlhttp.responseText == 0 ) {
					//document.getElementById("txtWrong").innerHTML = +wa + +1;//update wrong questions +1
					document.getElementById("BlackDollar").style = "background-color: #F00;";
				}
				else {
					//document.getElementById("txtRight").innerHTML = +ra + +1;//update right questions +1
					document.getElementById("GreenDollar").style = "background-color: #0F0;";
				}
			}
		}
		xmlhttp.open("GET", "setanswersheet.php?uid=" + uid + "&tid=" + tid + "&qid=" + qid + "&opt=" + optionNo );
		xmlhttp.send( );
	}
	
	function LoadQuestions ( ) {
		var cq = document.getElementById("txtQND").value; // currently displayed question no
		var tq = document.getElementById("txtTQ").value; //total questions in test
		var uid = document.getElementById("txtUID").value; //uid from session hidden
		var tid = document.getElementById("txtTID").value; //test id from session hidden
		document.getElementById("txtNo").hidden = false; //hide the Question Number on Begin test button page
		document.getElementById("curTime").innerHTML = 0; //resetting the timer to 0 when display new q
		document.getElementById("txtMessage").innerHTML = "Question No:"; //change click here to begin test to questionno
		document.getElementById("txtNo").innerHTML = +cq + +1;//display question number
		document.getElementById("btnNQ").value = "Next Question"; //set the value of Begin Test to next question
		document.getElementById("txtRedDollar").innerHTML = "red_dollar.gif;";//reset bg color of dollar image
		document.getElementById("txtGreenDollar").innerHTML = "green_dollar.gif;";//reset bg color of dollar image
		if ( cq == 0 )
			DisplayTime ( 0 );
			
		document.getElementById("txtQND").value = ++cq; //increment current question on Next Question click
  		var xmlhttp = new XMLHttpRequest ( );
		if ( cq < tq ) {
		  xmlhttp.onreadystatechange = function ( ) {
				if ( xmlhttp.readyState == 4 && xmlhttp.status == 200 ) {
					document.getElementById("txtQuestion").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "getquestion.php?uid=" + uid + "&tid=" + tid );
			xmlhttp.send( );
		}
		else {
			document.getElementById("btnNQ").hidden = true; //next qust button disappears at last qust
			document.getElementById("btnEndTest").hidden = false; //end test button appears at the last qust
		}			
	}
	
	function DisplayTime( refrsh ){
		if ( refrsh == 1 )
			LoadQuestions ( );
			
		var sec = document.getElementById("curTime").innerHTML;//get value from timer display
		var tq  = document.getElementById("txtTQ" ).value; //total questions in test
		sec = +sec + +1;//increment timer
		
		document.getElementById("curTime").innerHTML = sec;
		var timer = setTimeout("DisplayTime()",1000)
		if ( sec == 60 ) { //if time reachers 5sec/q
			LoadQuestions ( );//load next quest
			sec = 0; //reset timer
			document.getElementById("curTime").innerHTML = 0; //reset display
			exit;
		}
		if ( document.getElementById("btnEndTest").hidden == false ) //if end test button visibles
			clearTimeout ( timer ); //clear the counter ticking
	}
</script>
</head>

<body background="images/b_bg.jpg" onload="InitiateLooks ( );">
<center>
<h1>Test Started</h1>
</center>
<form id="testform" name="testfrom" action="Result.php" method="POST">
	<center>
    <div id="Question_No_Container">
      <div id="txtMessage" name="txtMessage" class="question_no_title"></div>
      <div id="txtNo" name="txtNo" align="center" class="question_no">0</div>
    </div>
    <div class="clearing"></div>
    <div id="Time_Container">
      <div id="txtTimeTitle" name="txtMessage" class="time_title">Time Passed:</div>
      <div id="curTime" name="curTime" class="timer">0</div> Sec
    </div>
    <div class="clearing"></div>
    <div id="CorrectWrong">
    	<div name="GreenDollar" id="GreenDollar" class="GreenDollar"><img class="GI" src="images/gd.png"/></div>
        <div name="BlackDollar" id="BlackDollar" class="BlackDollar"><img class="BI" src="images/bd.png"/></div>
    </div>
    <div class="clearing"></div>
	<div id="txtQuestion" name="txtQuestion"></div>
    <input type="hidden" name="txtTID" id="txtTID" value="<?php echo ($_SESSION['tid']);?>"/>
    <input type="hidden" name="txtUID" id="txtUID" value="<?php echo ($_SESSION['uid']);?>"/>
    <input type="hidden" name="txtTQ" id="txtTQ" value="<?php echo ($_SESSION['tq']);?>"/>
    <input type="hidden" name="txtQND" id="txtQND" value="<?php echo ($_SESSION['qd']);?>"/>
    <input name="btnNQ" id="btnNQ" type="button" value="Next Question" onclick="LoadQuestions ( );"/>
    <input type="submit" name="btnEndTest" id="btnEndTest" value="End Test" onclick="ClaculateResult ( );"/>
    </center>
</form>
</body>
</html>