<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css"/>
<title>SignUp Form</title>
<script language="javascript">
function echeck(str) {

		var at="@"
		var dot="."
		var lat=str.indexOf(at)
		var lstr=str.length
		var ldot=str.indexOf(dot)
		if (str.indexOf(at)==-1){
		   alert("Invalid E-mail ID")
		   return false
		}

		if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
		   alert("Invalid E-mail ID")
		   return false
		}

		if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
		    alert("Invalid E-mail ID")
		    return false
		}

		 if (str.indexOf(at,(lat+1))!=-1){
		    alert("Invalid E-mail ID")
		    return false
		 }

		 if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
		    alert("Invalid E-mail ID")
		    return false
		 }

		 if (str.indexOf(dot,(lat+2))==-1){
		    alert("Invalid E-mail ID")
		    return false
		 }
		
		 if (str.indexOf(" ")!=-1){
		    alert("Invalid E-mail ID")
		    return false
		 }

 		 return true					
	}

function verify(){
	var emailID=document.form1.txtemail
	
	if ((emailID.value==null)||(emailID.value=="")){
		alert("Please Enter your Email ID")
		emailID.focus()
		return false
	}
	if (echeck(emailID.value)==false){
		emailID.value=""
		emailID.focus()
		return false
	}
	if(document.form1.txtuser.value=="") 
   { 
      alert("Plz enter your User Name!"); 
      document.form1.txtuser.focus(); 
      return false; 
   } 
   if(document.form1.txtfirst.value=="") 
   { 
      alert("Plz enter your First Name!"); 
      document.form1.txtfirst.focus(); 
      return false; 
   } 
   if(document.form1.txtlast.value=="") 
   { 
      alert("Plz enter your Last Name!"); 
      document.form1.txtlast.focus(); 
      return false; 
   } 
   if(document.form1.txtpassword.value=="") 
   { 
      alert("Plz enter your Password!"); 
      document.form1.txtpassword.focus(); 
      return false; 
   } 
   if(document.form1.txtcity.value=="") 
   { 
      alert("Plz enter your City!"); 
      document.form1.txtcity.focus(); 
      return false; 
   }
   if(document.form1.txtcnic.value=="") 
   { 
      alert("Plz enter your CNIC!"); 
      document.form1.txtcnic.focus(); 
      return false; 
   }  
      if(document.form1.txtemp.value=="") 
   { 
      alert("Plz enter your Emp ID!"); 
      document.form1.txtemp.focus(); 
      return false; 
   }  

   if(document.form1.txtphone.value=="") 
   { 
      alert("Plz enter your Mobile Number!"); 
      document.form1.txtphone.focus(); 
      return false; 
   } 
   
	return true;
 }
 

</script>
<script language="javascript">
function number(data) {
   		var checkStr = data.value;
		if(checkStr.length<10 || isNaN(checkStr))
		{
		alert("Please enter a valid Mobile Number!");
		 data.value= "";
      document.form.mobile.focus(); 
      return false; 
	  }
	   data.value= checkStr;
	  return true;
	  } 

function checknumber(data) {
    var checkOK = "0123456789";
    var checkStr = data.value;
    var allValid = true;
    var allNum = "";
    
      for (i = 0;  i < checkStr.length;  i++) {
        ch = checkStr.charAt(i);
      for (j = 0;  j < checkOK.length;  j++)
        if (ch == checkOK.charAt(j))
          break;
        if (j == checkOK.length) {
          allValid = false;
          break;
        }
        if (ch != ",")
          allNum += ch;
        }
        if (!allValid) {
          alert("Please enter a valid number");
          data.value = "";
		  data.value.focus();
        return (false);
      }
	  else
	  return (true);
    }
</script>
</head>

<body>
<div id="BodyWrapper">
<div id="BodyArea">
<div id="Content">
<div id="Signup">
<h2>User Sign Up</h2>
<form name="form1" method="POST" action="user_sign_up.php" onsubmit="return verify()">
<table align="center">
<tr><td align="left"><label "txtfirst" class="Signin_Label">Firstname:</label></td><td><input class="TextField" type="text" name="txtfirst" size="25" /></td></tr>
<tr><td align="left"><label "txtlast" class="Signin_Label">Last Name:</label></td><td><input class="TextField" type="text" name="txtlast" size="25"/></td></tr>
<tr><td align="left"><label "email" class="Signin_Label">Email:</label></td>
<td> <input class="TextField" type="text" name="txtemail" size="25" /></td></tr>
<tr><td align="left"><label "city" class="Signin_Label">City:</label></td><td>  <input type="text" class="TextField" name="txtcity" size="25"/></td></tr>
<tr><td align="left"><label "phone" class="Signin_Label">Phone Number:</label></td><td><input type="text" name="txtphone" class="TextField" maxlength="12" 
size="25"onblur="return number(this);"/></td></tr>
<tr><td align="left"><label "cnic" class="Signin_Label">CNIC:      </label></td><td><input type="text"  class="TextField"name="txtcnic"  size="25"/></td></tr>
<tr><td align="left"><label "id" class="Signin_Label">Employee ID:      </label></td><td><input type="text"  class="TextField" name="txtemp" size="25" /></td></tr>
<tr><td align="left"><label "username" class="Signin_Label">User Name: </label></td><td><input type="text" class="TextField" name="txtuser" size="25"/></td></tr>
<tr><td align="left"><label "password" class="Signin_Label">Password:  </label></td><td><input type="password" name="txtpassword" class="TextField" size="25" /></td></tr>
<tr><td colspan="2"><input type="submit" class="Signup_Button" value="Sign Up" /></td>
</td></tr>
</table>   
</form>
</div>
</div>
</div>
</div>
<div id="Footer"></div>
</body>
</html>
