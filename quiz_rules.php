<?php
	session_start ( );
	if ( ! isset ( $_SESSION ['uid' ] ) )
		header("location:index.php");

	if($_SESSION['uid']=="")
	{
		header("location:index.php");
	}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Quiz Rules</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
</head>

<body>
<div id="BodyWrapper">
	<div id="Header">
    </div>
	<div id="RulesWrapper">
    	<div class="Rule1">
        	<p>Correct Answer: +$1.<br />Wrong  Answer: -$2</p>
        </div>
        <div class="Rule2">
        	<p>Maximum money can be earned $30 per Round(Monthly). <br />Negative dollars will automatically converted to '0' at the end of the session.</p>
        </div>
        <div class="Rule3">
        	<p>One lucky Champion will earn the chance to have <br />discussion with CEO "Shahab Rizvi" (on quarter basis)</p>
        </div>
        <div class="ContinueButton">
        	<a href="DisplayTests.php">Continue...</a>
        </div>
    </div>
</div>
<div id="Footer"></div>
<embed src="finalAnswer.mp3" hidden="true" autostart="true" loop="false" />

</body>
</html>