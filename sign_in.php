<?php
	session_start ( );
	session_destroy ( );
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
<div id="BodyWrapper">
    	<div id="Signin">
        <h2>User Sign In</h2>
          <form name="form1" method="post" action="user_sign_in.php" onsubmit="return verify()">
          <table align="center">
          	<tr>
                <td align="left"><label "username" class="Signin_Label">User Name:</label></td>
            </tr>
            <tr>
            	<td><input class="TextField" type="text" name="txtName" size="30" /></td>
            </tr>
            <tr>
                <td align="left"><label "password" class="Signin_Label">Password:</label></td>
            </tr>
            <tr>
            	<td><input class="TextField" type="password" name="txtPassword" size="30" /></td>
            </tr>
            <tr>
            	<td align="right"><input type="submit" class="Signin_Button" value="Sign-in" /></td>
            </tr>
          </table>
          </form>
          
          <div class="Signup_Link"><a class="Signup_Button" href="pwd_rec.php">Forgot Password ? Click Here</a></div>
        </div>
    
</div>
<div id="Footer"></div>
</body>
</html>
