<?php
	session_start ( );
	session_destroy ( );
	include "data.php";
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css"/>
<title>Sign In</title>
<script language="javascript">
function verify(){ 
if(document.form1.txtName.value=="") 
   { 
      alert("Plz enter your User Name!"); 
      document.form1.txtName.focus(); 
      return false; 
   }
   if(document.form1.txtPassword.value=="") 
   { 
      alert("Plz enter your Password!"); 
      document.form1.txtPassword.focus(); 
      return false; 
   }   
	return true;
 }
</script> 
</head>

<body>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<table align="center">
<form name="form1" method="post" action="user_sign_in.php" onsubmit="return verify()">
<tr><td colspan=2 class="signin"><b>User Sign In</b></td></tr>
<tr><td class="text">User Name:<input type="text" name="txtName" /></td></tr>
<tr><td class="text">Password:&nbsp;&nbsp;&nbsp;<input type="password" name="txtPassword" /></td></tr>
<tr><td colspan=3 align="center" class="text"><input type="submit" value="Sign In" /></td></tr>
</form>
</table>
</body>
</html>