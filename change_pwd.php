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
<link rel="stylesheet" type="text/css" href="style.css"/>
<title>Change Password</title>
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
        <h2>Change Password</h2>
          <form name="form1" method="post" action="ch_pwd.php" onsubmit="return verify()">
          <table align="center">
          	<tr>
                <td align="left"><label "username" class="Signin_Label">New Password:</label></td>
            </tr>
            <tr>
            	<td><input class="TextField" type="password" name="txtPwd" size="30" /></td>
            </tr>
            <tr>
                <td align="left"><label "password" class="Signin_Label">Re-Type New Password:</label></td>
            </tr>
            <tr>
            	<td><input class="TextField" type="password" name="txtRPwd" size="30" /></td>
            </tr>
            <tr>
            	<td align="right"><input type="submit" class="Signin_Button" value="Change Password" /></td>
            </tr>
          </table>
          </form>
        </div>
    
</div>
<div id="Footer"></div>
</body>
</html>
