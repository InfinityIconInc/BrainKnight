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
<br/><br/><br/><br/><br/><br/>
<table align="center">
<form name="form1" method="POST" action="user_sign_up.php" onsubmit="return verify()">
<tr><td colspan=2 class="signin"><b>Signup</b></td></tr>
<tr><td class="text">First Name:</td> <td class="box"><input type="text" name="txtfirst" /></td></tr>
<tr><td class="text">Last Name:</td><td class="box"> <input type="text" name="txtlast" /></td></tr>
<tr><td class="text">Email:</td><td class="box"><input type="text" name="txtemail" /></td></tr>
<tr><td class="text">City:</td><td class="box"><input type="text" name="txtcity" /></td></tr>
<tr><td class="text">Phone Number:</td><td class="box"><input type="text" name="txtphone" maxlength="12"   onblur="return number(this);"/></td></tr>
<tr><td class="text">CNIC:</td><td class="box"><input type="text" name="txtcnic" /></td></tr>
<tr><td class="text">User Name:</td><td class="box"><input type="text" name="txtuser" /></td></tr>
<tr><td class="text">Password:</td><td class="box"><input type="text" name="txtpassword" /></td></tr>
<tr><td colspan="2" class="text" align="center"><input type="submit" value="Sign Up" /></td></tr>
</form>
</table>
</body>
</html>
