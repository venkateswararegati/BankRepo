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
	<form method="get">
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
			style="background-color: #FFA500; text-align: center;width:1355px">
			<h1 style="text-align: center;">Updated successfully with below
				details</h1>
			<table>
				<tr>
					<c:if test="${updatedDetails.id ne null}">
						<td>Account Number ::</td>
						<td><c:out value="${updatedDetails.id}"></c:out></td>
					</c:if>
				</tr>
				<tr>
					<c:if test="${updatedDetails.name ne null}">
						<td>Account holder name ::</td>
						<td><c:out value="${updatedDetails.name}"></c:out></td>
					</c:if>
				</tr>
				<tr>
					<c:if test="${updatedDetails.fname ne null}">
						<td>Father name::</td>
						<td><c:out value="${updatedDetails.fname}"></c:out></td>
					</c:if>
				</tr>
				<tr>
					<c:if test="${updatedDetails.date ne null}">
						<td>Date Of Birth::</td>
						<td><c:out value="${updatedDetails.date}"></c:out></td>
					</c:if>
				</tr>
				<tr>
					<c:if test="${updatedDetails.mail ne null}">
						<td>Email ::</td>
						<td><c:out value="${updatedDetails.mail}"></c:out></td>
					</c:if>
				</tr>
				<tr>
					<c:if test="${updatedDetails.mnumber ne null}">
						<td>Mobile number :;</td>
						<td><c:out value="${updatedDetails.mnumber}"></c:out></td>
					</c:if>
				</tr>
				<tr>
					<c:if test="${updatedDetails.adharNumber ne null}">
						<td>Aadhar number::</td>
						<td><c:out value="${updatedDetails.adharNumber}"></c:out></td>
					</c:if>
				</tr>
				<tr>
					<c:if test="${updatedDetails.pannumber ne null}">
						<td>Pan number::</td>
						<td><c:out value="${updatedDetails.pannumber}"></c:out></td>
					</c:if>
				</tr>
				<tr>
					<c:if test="${updatedDetails.village ne null}">
						<td>Village/Street::</td>
						<td><c:out value="${updatedDetails.village}"></c:out></td>
					</c:if>
				</tr>
				<tr>
					<c:if test="${updatedDetails.city ne null}">
						<td>City ::</td>
						<td><c:out value="${updatedDetails.city}"></c:out></td>
					</c:if>
				</tr>
				<tr>
					<c:if test="${updatedDetails.district ne null}">
						<td>District ::</td>
						<td><c:out value="${updatedDetails.district}"></c:out></td>
					</c:if>
				</tr>
				<tr>
					<c:if test="${updatedDetails.state ne null}">
						<td>State ::</td>
						<td><c:out value="${updatedDetails.state}"></c:out></td>
					</c:if>
				</tr>
				<tr>
					<c:if test="${updatedDetails.pincode ne null}">
						<td>Pincode ::</td>
						<td><c:out value="${updatedDetails.pincode}"></c:out></td>
					</c:if>
				</tr>
				<tr>
					<c:if test="${afterupdatedDetails.accountModifiedDate ne null}">
						<td>Account updated date ::</td>
						<td><c:out value="${afterupdatedDetails.accountModifiedDate}"></c:out>
						</td>
					</c:if>
				</tr>
			</table>
		</div>
		<h1
			style="color: blue; text-align: center; font-size: xx-large; bottom: 100px;">
			<a href="/BankMiniProject/userValidationPage">EditPage</a>
		</h1>
	</form>
</body>
</html>