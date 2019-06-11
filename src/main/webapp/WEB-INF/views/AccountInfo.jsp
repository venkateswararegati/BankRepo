<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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

/* selected  */
a:active {
  color: white;
  text-decoration:none; 
}
</style>
</head>
<body>
	<form method="get">
	<div id="links" style="background-color:green;width:1355px;
    font-size:25px; margin: 0 auto;">

	 <a href="/BankMiniProject/" style="margin-left: 190px;padding: 10px;" >Home </a> 
		<a href="/BankMiniProject/bankloginpage" style="display: inline-block;padding: 10px;" >Account creation</a>
		<a href="/BankMiniProject/depositpage" style="display: inline-block;padding: 10px;" > Deposit</a>
		<a href="/BankMiniProject/withdrawpage" style="display: inline-block;padding: 10px;">Withdraw</a>
		<a href="/BankMiniProject/credentialspage" style="display: inline-block;padding: 10px;" >Account info</a>
		<a href="/BankMiniProject/userValidationPage" style="display: inline-block; padding: 10px;">Edit profile</a>
</div>
		<div class="container"
			style="background-color: #FFA500; text-align: center;">
			<h1 style="text-align: center;">Account Info
				</h1>
			<table>
				<tr>
					<c:if test="${accountdetails.accNo ne null}">
						<td>Account Number ::</td>
						<td><c:out value="${accountdetails.accNo}"></c:out></td>
					</c:if>
				</tr>
				<tr>
					<c:if test="${accountdetails.name ne null}">
						<td>Account holder name ::</td>
						<td><c:out value="${accountdetails.name}"></c:out></td>
					</c:if>
				</tr>
				<tr>

					<td>Withdraw date::</td>
					<td><c:out value="${accountdetails.depositedTime}"></c:out></td>

				</tr>
				<tr>

					<td>Total Amount ::</td>
					<td><c:out value="${accountdetails.amount}"></c:out></td>

				</tr>
			</table>
		</div>
		<h1
			style="color: blue; text-align: center; font-size: xx-large; bottom: 100px;">
			<a href="/BankMiniProject/credentialspage">Account
				info</a>
		</h1>
	</form>
</body>
</html>