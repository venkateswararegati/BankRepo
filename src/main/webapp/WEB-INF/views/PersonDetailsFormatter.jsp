<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fu" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$(".customerDetails").hide();
		$(".customerAddress").hide();
		$(".educationalDetails").hide();
		$("#basicDetails").click(function() {
			$(".customerDetails").toggle();
		});
		$("#address").click(function() {
			$(".customerAddress").toggle();
		});
		$("#educationalInfo").click(function() {
			$(".educationalDetails").toggle();
			$(".sscDetails").hide();
			$(".interDetails").hide();
			$(".btechDetails").hide();
			$(".postgraduationDetails").hide();
			$(".professionalgraduation").hide();
			$(".othergraduation").hide();
		});
		$("#ssc").click(function() {
			$(".sscDetails").toggle();
		});
		$("#inter").click(function() {
			$(".interDetails").toggle();
		});
		$("#Btech").click(function() {
			$(".btechDetails").toggle();
		});
		$("#postgraduation").click(function() {
			$(".postgraduationDetails").toggle();
		});
		$("#professional").click(function() {
			$(".professionalgraduation").toggle();
		});
		$("#other").click(function() {
			$(".othergraduation").toggle();
		});
	});
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<c:choose>
		<c:when test="${pDetails ne null}">
<div id="links" style="background-color:green;width:1355px;
    font-size:25px; margin: 0 auto;">

	 <a href="/BankMiniProject/" style="margin-left: 190px;padding: 10px;">Home</a> 
		<a href="/BankMiniProject/bankloginpage" style="display: inline-block;padding: 10px;" >Account creation</a>
		<a href="/BankMiniProject/depositpage" style="display: inline-block;padding: 10px;" > Deposit</a>
		<a href="/BankMiniProject/withdrawpage" style="display: inline-block;padding: 10px;" >Withdraw</a>
		<a href="/BankMiniProject/credentialspage" style="display: inline-block;padding: 10px;">Account info</a>
		<a href="/BankMiniProject/userValidationPage" style="display: inline-block; padding: 10px;" >Edit profile</a>
</div>
			<h1
				style="color: blue; text-align: center; font-size: xx-large; background-color: #FFA500; padding-bottom: 10px;">Customer
				Details</h1>
				
			<div class="container">
				<div id="basicInfo" class="BasicInfo">
					<button type="submit" id="basicDetails"
						style="text-align: center; padding: 5px 34px; background-color: rgb(255, 165, 0);">+PersonalDetails</button>
					<div id="customerDetails" class="customerDetails">
						<h1
							style="color: blue; text-align: left; font-size: large; background-color: #FFA500; padding-bottom: 10px;">Basic
							info about customer</h1>
						<table>
							<tr>
								<td>Full name</td>
								<td><c:out value="${pDetails.name}"></c:out></td>
							</tr>
							<tr>
								<td>Father name</td>
								<td><c:out value="${pDetails.fname}"></c:out></td>
							</tr>
							<tr>
								<td>Date of birth</td>
								<td><c:out value="${pDetails.date}"></c:out></td>
							</tr>
							<tr>
								<td>Nationality</td>
								<td><c:out value="${pDetails.nation}"></c:out></td>
							</tr>
							<tr>
								<td>Gender</td>
								<td><c:out value="${pDetails.gender}"></c:out></td>
							</tr>
							<tr>
								<td>Marital status</td>
								<td><c:out value="${pDetails.mstatus}"></c:out></td>
							</tr>
							<tr>
								<td>E-mail</td>
								<td><c:out value="${pDetails.mail}"></c:out></td>
							</tr>
							<tr>
								<td>Mobile number</td>
								<td><c:out value="${pDetails.mnumber}"></c:out></td>
							</tr>
							<tr>
								<td>Cast</td>
								<td><c:out value="${pDetails.cast}"></c:out></td>
							</tr>
							<tr>
								<td>Aadhar number</td>
								<td><c:out value="${pDetails.adharNumber}"></c:out></td>
							</tr>
							<tr>
								<td>Pan number</td>
								<td><c:out value="${pDetails.pannumber}"></c:out></td>
							</tr>
							<tr>
								<td>Account type</td>
								<td><c:out value="${pDetails.acType}"></c:out></td>
							</tr>
						</table>
					</div>

				</div>
				<div id="addressInfo" class="AddressInfo">
					<br></br>
					<button type="submit" id="address"
						style="text-align: center; padding: 5px 25px; background-color: rgb(255, 165, 0);">+Customer
						Address</button>
					<div id="customerAddress" class="customerAddress">
						<h1
							style="color: blue; text-align: left; font-size: large; background-color: #FFA500; padding-bottom: 10px;">Customer
							address</h1>
						<table>
							<tr>
								<td>Village/Street</td>
								<td><c:out
										value="${pDetails.getPersonAddressDetials().village}"></c:out>
								</td>
							</tr>
							<tr>
								<td>City(Mandal)</td>
								<td><c:out
										value="${pDetails.getPersonAddressDetials().city}"></c:out></td>
							</tr>
							<tr>
								<td>District</td>
								<td><c:out
										value="${pDetails.getPersonAddressDetials().district}"></c:out>
								</td>
							</tr>
							<tr>
								<td>State</td>
								<td><c:out
										value="${pDetails.getPersonAddressDetials().state}"></c:out></td>
							</tr>
							<tr>
								<td>Pin code</td>
								<td><c:out
										value="${pDetails.getPersonAddressDetials().pincode}"></c:out>
								</td>
							</tr>
						</table>
					</div>
				</div>

			</div>
		</c:when>
	</c:choose>

	<c:choose>
		<c:when test="${pDetails.getPersonEducationalDetails() ne null}">
			<div class="container1">
				<br></br>
				<button type="submit" id="educationalInfo"
					style="text-align: center; padding: 5px 25px; background-color: rgb(255, 165, 0);">+EducationalDetails</button>
				<div id="educationalDetails" class="educationalDetails">
					<h1
						style="color: blue; text-align: left; font-size: large; background-color: #FFA500; padding-bottom: 10px;">Educational
						Details</h1>

					<div class="innerconatinerforssc">
						<button type="submit" id="ssc"
							style="text-align: center; padding: 5px 70px; background-color: rgb(255, 165, 0); float: left;">+SSC</button>
						<br></br>
						<div class="sscDetails">
							<h1
								style="color: blue; text-align: center; font-size: large; background-color: #FFA500; padding: 5px 5px;">SSC</h1>
							<c:choose>
								<c:when
									test="${pDetails.getPersonEducationalDetails().sscboard ne 'SELECT'}">
									<table>
										<tr>
											<td>SSC board</td>
											<td><c:out
													value="${pDetails.getPersonEducationalDetails().sscboard}"></c:out>
											</td>
										</tr>
										<tr>
											<td>SSC passed year</td>
											<td><c:out
													value="${pDetails.getPersonEducationalDetails().passedyear}"></c:out>
											</td>
										</tr>
										<tr>
											<td>SSC percentage</td>
											<td><c:out
													value="${pDetails.getPersonEducationalDetails().spercentage}"></c:out>
											</td>
										</tr>
									</table>
								</c:when>
							</c:choose>
						</div>
						<br></br>
					</div>


					<div class="innerconatinerforinter">
						<button type="submit" id="inter"
							style="text-align: center; padding: 5px 58px; background-color: rgb(255, 165, 0); float: left;">+12(Inter)</button>
						<br></br>
						<div class="interDetails">
							<h1
								style="color: blue; text-align: center; font-size: large; background-color: #FFA500; padding: 5px 5px;">(12+)Inter</h1>
							<c:choose>
								<c:when
									test="${pDetails.getPersonEducationalDetails().interboard ne 'SELECT'}">

									<table>
										<tr>
											<td>Inter board</td>
											<td><c:out
													value="${pDetails.getPersonEducationalDetails().interboard}"></c:out>
											</td>
										</tr>
										<tr>
											<td>Inter passed year</td>
											<td><c:out
													value="${pDetails.getPersonEducationalDetails().interpassedyear}"></c:out>
											</td>
										</tr>
										<tr>
											<td>Inter percentage</td>
											<td><c:out
													value="${pDetails.getPersonEducationalDetails().interpercentage}"></c:out>
											</td>
										</tr>

									</table>
								</c:when>
							</c:choose>
						</div>
						<br></br>
					</div>



					<div class="innerconatinerforbtech">
						<button type="submit" id="Btech"
							style="text-align: center; padding: 5px 40px; background-color: rgb(255, 165, 0); float: left;">+B.Tech/Degree</button>
						<br></br>
						<div class="btechDetails">
							<h1
								style="color: blue; text-align: center; font-size: large; background-color: #FFA500; padding: 5px 5px;">B.Tech/Degree</h1>
							<c:choose>
								<c:when
									test="${pDetails.getPersonEducationalDetails().degree ne 'SELECT'}">
									<table>
										<tr>
											<td>B.Tech/Degree board</td>
											<td><c:out
													value="${pDetails.getPersonEducationalDetails().degree}"></c:out>
											</td>
										</tr>
										<tr>
											<td>B.Tech/Degree College</td>
											<td><c:out
													value="${pDetails.getPersonEducationalDetails().institution}"></c:out>
											</td>
										</tr>
										<tr>
											<td>B.Tech/Degree passed year</td>
											<td><c:out
													value="${pDetails.getPersonEducationalDetails().dpassingyear}"></c:out>
											</td>
										</tr>
										<tr>
											<td>B.Tech/Degree percentage</td>
											<td><c:out
													value="${pDetails.getPersonEducationalDetails().dpercentage}"></c:out>
											</td>
										</tr>

									</table>
								</c:when>
							</c:choose>
						</div>
						<br></br>
					</div>



					<div class="innerconatinerforpostgraduation">
						<button type="submit" id="postgraduation"
							style="text-align: center; padding: 5px 35px; background-color: rgb(255, 165, 0); float: left;">+Post
							Graduation</button>
						<br></br>
						<div class="postgraduationDetails">
							<h1
								style="color: blue; text-align: center; font-size: large; background-color: #FFA500; padding: 5px 5px;">Post
								Graduation</h1>
							<c:choose>
								<c:when
									test="${pDetails.getPersonEducationalDetails().postgraduation ne null}">
									<table>
										<tr>
											<td>Post Graduation(University)</td>
											<td><c:out
													value="${pDetails.getPersonEducationalDetails().postgraduation}"></c:out>
											</td>
										</tr>
										<tr>
											<td>Post Graduation College</td>
											<td><c:out
													value="${pDetails.getPersonEducationalDetails().pinstitution}"></c:out>
											</td>
										</tr>
										<tr>
											<td>Post Graduation passed year</td>
											<td><c:out
													value="${pDetails.getPersonEducationalDetails().postpassingyear}"></c:out>
											</td>
										</tr>
										<tr>
											<td>Post Graduation percentage</td>
											<td><c:out
													value="${pDetails.getPersonEducationalDetails().postpercentage}"></c:out>
											</td>
										</tr>

									</table>
								</c:when>
							</c:choose>
						</div>
						<br></br>
					</div>



					<div class="innerconatinerforprofessionalgraduation">
						<button type="submit" id="professional"
							style="text-align: center; padding: 5px 12px; background-color: rgb(255, 165, 0); float: left;">+professional
							Graduation</button>
						<br></br>
						<div class="professionalgraduation">
							<h1
								style="color: blue; text-align: center; font-size: large; background-color: #FFA500; padding: 5px 5px;">professional
								Graduation</h1>
							<c:choose>
								<c:when
									test="${pDetails.getPersonEducationalDetails().pfgraduation ne null}">
									<table>
										<tr>
											<td>professional Graduation(University)</td>
											<td><c:out
													value="${pDetails.getPersonEducationalDetails().pfgraduation}"></c:out>
											</td>
										</tr>
										<tr>
											<td>professional Graduation College</td>
											<td><c:out
													value="${pDetails.getPersonEducationalDetails().pfinstitution}"></c:out>
											</td>
										</tr>
										<tr>
											<td>professional Graduation passed year</td>
											<td><c:out
													value="${pDetails.getPersonEducationalDetails().pfpassingyear}"></c:out>
											</td>
										</tr>
										<tr>
											<td>professional Graduation percentage</td>
											<td><c:out
													value="${pDetails.getPersonEducationalDetails().pfpercentage}"></c:out>
											</td>
										</tr>

									</table>
								</c:when>
							</c:choose>
						</div>
						<br></br>
					</div>



					<div class="innerconatinerforothergraduation">
						<button type="submit" id="other"
							style="text-align: center; padding: 5px 30px; background-color: rgb(255, 165, 0); float: left;">+Other
							Graduation</button>
						<br></br>
						<div class="othergraduation">
							<h1
								style="color: blue; text-align: center; font-size: large; background-color: #FFA500; padding: 5px 5px;">Other
								Graduation</h1>
							<c:choose>
								<c:when
									test="${pDetails.getPersonEducationalDetails().othergraduation ne null}">
									<table>
										<tr>
											<td>Other Graduation(University)</td>
											<td><c:out
													value="${pDetails.getPersonEducationalDetails().othergraduation}"></c:out>
											</td>
										</tr>
										<tr>
											<td>Other Graduation College</td>
											<td><c:out
													value="${pDetails.getPersonEducationalDetails().otherinstitution}"></c:out>
											</td>
										</tr>
										<tr>
											<td>Other Graduation passed year</td>
											<td><c:out
													value="${pDetails.getPersonEducationalDetails().otherpassingyear}"></c:out>
											</td>
										</tr>
										<tr>
											<td>Other Graduation percentage</td>
											<td><c:out
													value="${pDetails.getPersonEducationalDetails().otherpercentage}"></c:out>
											</td>
										</tr>

									</table>
								</c:when>
							</c:choose>
						</div>
						<br></br>
					</div>


				</div>

			</div>
		</c:when>
		<c:otherwise>
			<div class="container"
				style="background-color: #FFA500; text-align: center;">

				<h1 style="color: blue; font-size: large;">
					<i class="material-icons"> sentiment_very_satisfied </i> Invalid
					User name please enter a valid user name !!
				</h1>
			</div>
		</c:otherwise>
	</c:choose>
	<h1 style="color: blue; text-align: center; font-size: xx-large;">
		<a href="/BankMiniProject/successpage">Back to success page</a>
	</h1>

</body>
</html>