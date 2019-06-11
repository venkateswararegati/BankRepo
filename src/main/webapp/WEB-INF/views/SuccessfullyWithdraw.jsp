<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
</head>
<body>
	<form>
	<div id="links" style="background-color:green;width:1355px;
    font-size:25px; margin: 0 auto;">

	 <a href="/BankMiniProject/" style="margin-left: 190px;padding: 10px;" >Home</a> 
		<a href="/BankMiniProject/bankloginpage" style="display: inline-block;padding: 10px;" >Account creation</a>
		<a href="/BankMiniProject/depositpage" style="display: inline-block;padding: 10px;" > Deposit</a>
		<a href="/BankMiniProject/withdrawpage" style="display: inline-block;padding: 10px;" >Withdraw</a>
		<a href="/BankMiniProject/credentialspage" style="display: inline-block;padding: 10px;" >Account info</a>
		<a href="/BankMiniProject/userValidationPage" style="display: inline-block; padding: 10px;">Edit profile</a>
</div>
		<div class="container"
			style="background-color: #FFA500; text-align: center;width:1355px;">
			<c:choose>
				<c:when test="${withdrawinfo ne null}">
					<pre
						style="color: black; text-align: center; font-size: xx-large; bottom: 100px;"> On your account no <strong><c:out
								value="${withdrawinfo.accNo}"></c:out></strong> Mr/Mis <c:out
							value="${withdrawinfo.name}"></c:out> 
		<c:out value="${beforewithdrawdetails.money}"></c:out>rupees was debited on <c:out
							value="${withdrawinfo.withdrawTime}"></c:out>  and the total amount is <c:out
							value="${withdrawinfo.amount}"></c:out>
					</pre>
				</c:when>
			</c:choose>
		</div>
		<div class="container" style="background-color: #FFA500;">
			<h1
				style="color: blue; text-align: center; font-size: xx-large; bottom: 100px;">
				<a href="/BankMiniProject/withdrawpage">Back to withdraw page</a>
			</h1>
		</div>
	</form>
</body>
</html>