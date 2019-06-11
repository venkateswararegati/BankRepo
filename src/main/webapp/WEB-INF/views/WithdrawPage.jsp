<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
a:link {
  color: white;
  text-decoration:none; 
}
/* visited link */
a:visited {
  color: white;
  text-decoration:none; 
}

/* mouse over link */
a:hover {
  color: red;
  text-decoration:none; 
}

/* selected link */
a:active {
  color: white;
  text-decoration:none; 
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js</script>
<script type="text/javascript">
	function formValidation() {
		var name = document.validForm.holderName.value;
		var accountNo = document.validForm.accNo.value;
		var money = document.validForm.money.value;
		
		if (name == "" || name.length == 0 || name == " ") {
			document.getElementById("holdername").innerHTML = " please enter your name!";
			document.validForm.holderName.focus();
			return false;
		} else if ((name.length < 5) || (name.length > 30)) {
			document.getElementById("holdername").innerHTML = " name should be between 5 to 30 charecters!";
			document.validForm.holderName.focus();
			return false;
		} else if (!isNaN(name)) {
			document.getElementById("holdername").innerHTML = " please enter charecters only!";
			document.validForm.holderName.focus();
			return false;
		} else {
			document.getElementById("holdername").innerHTML = " ";
		}
		
		if (accountNo == "" || accountNo.length == 0 || accountNo == " ") {
			document.getElementById("accno").innerHTML = " please enter your name!";
			document.validForm.accNo.focus();
			return false;
		} else if (!(accountNo.trim().length==16)) {
			document.getElementById("accno").innerHTML = " account number should be 16 digists";
			document.validForm.accNo.focus();
			return false;
		} else if (isNaN(accountNo)) {
			document.getElementById("accno").innerHTML = " Account number should be number format !";
			document.validForm.accNo.focus();
			return false;
		} else {
			document.getElementById("accno").innerHTML = " ";
		}
		if (money == "" || money.length == 0 || money == " ") {
			document.getElementById("Money").innerHTML = " please enter a valid withdraw amount !";
			document.validForm.money.focus();
			return false;
		} else if (money <=0 ) {
			document.getElementById("Money").innerHTML = "To withdrawl amount should be greater than 0 ";
			document.validForm.money.focus();
			return false;
		} else if (isNaN(money)) {
			document.getElementById("Money").innerHTML = " amount should be number format !";
			document.validForm.money.focus();
			return false;
		} else {
			document.getElementById("Money").innerHTML = " ";
		}
	}
</script>
</head>
<body>
	<form method="get" action="/BankMiniProject/withdrawing"
		name="validForm" onsubmit="return formValidation(this);"
		style="padding-top: 10px">
	<div id="links" style="background-color:green;width:1355px;
    font-size:25px; margin: 0 auto;">

	 <a href="/BankMiniProject/" style="margin-left: 190px;padding: 10px;" >Home</a> 
		<a href="/BankMiniProject/bankloginpage" style="display: inline-block;padding: 10px;" >Account creation</a>
		<a href="/BankMiniProject/depositpage" style="display: inline-block;padding: 10px;" > Deposit</a>
		<a href="/BankMiniProject/withdrawpage" style="display: inline-block;padding: 10px;" >Withdraw</a>
		<a href="/BankMiniProject/credentialspage" style="display: inline-block;padding: 10px;">Account info</a>
		<a href="/BankMiniProject/userValidationPage" style="display: inline-block; padding: 10px;">Edit profile</a>
</div>
					
		<div class="container"
			style="background-color: #FFA500; padding-top: 10px;">
			<p
				style="background-color:; text-align: center; font-size: xx-large;">For Withdraw</p>
			<label style="margin-right: 20px; margin-left: 414px;">Account
				number*::</label> <input type="text" id="accNo" name="accNo"
				placeholder="Account number" style="padding: 10px 25px;"><span
				id="accno" style="color: black; font-size: large;"></span>
		</div>
		<div class="container"
			style="background-color: #FFA500; padding-top: 10px;">
			<label style="margin-right: 5px; margin-left: 400px;">Account
				holder name*::</label> <input type="text" id="holderName" name="holderName"
				placeholder="Account holder name" style="padding: 10px 25px;"><span
				id="holdername" style="color: black; font-size: large;"></span>
		</div>
		<div class="container"
			style="background-color: #FFA500; padding-top: 10px;">
			<label style="margin-right: 5px; margin-left: 400px;">Enter
				money *::</label> <input type="text" id="money" name="money"
				placeholder="Enter Money" style="padding: 10px 25px;"><span
				id="Money" style="color: black; font-size: large;"></span>
		</div>
		<div class="container"
			style="background-color: #FFA500; padding-top: 10px; text-align: center;">
			<button type="submit" name="save"
				style="padding: 5px 25px; background-color: rgb(255, 165, 0); color: black;"
				value="Submit">Withdraw</button>
		</div>
	</form>
	<div class="container" style="background-color: #FFA500;">
		<h1
			style="color: blue; text-align: center; font-size: xx-large; bottom: 100px;">
			<a href="/BankMiniProject/">Back to Home page</a>
		</h1>
	</div>
</body>
</html>