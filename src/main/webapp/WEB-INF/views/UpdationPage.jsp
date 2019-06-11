
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
<script type="text/javascript">
	function submitBtn() {
		// variable declarations
		var name = document.updateform.name.value;
		var fName = document.updateform.fname.value;
		var dob = document.updateform.date.value;
		var mail = document.updateform.mail.value;
		var mnumber = document.updateform.mnumber.value;
		var adharNumber = document.updateform.adharNumber.value;
		var pannumber = document.updateform.pannumber.value;
		var village = document.updateform.village.value;
		var city = document.updateform.city.value;
		var district = document.updateform.district.value;
		var state = document.updateform.state.value;
		var pincode = document.updateform.pincode.value;
		// customer name validation
		if (name != "" || name.length != 0) {
			if ((name.length < 5) || (name.length > 30)) {
				document.getElementById("custName").innerHTML = " name should be between 5 to 30 charecters!";
				document.updateform.name.focus();
				return false;
			} else if (!isNaN(name)) {
				document.getElementById("custName").innerHTML = " please enter charecters only!";
				document.updateform.name.focus();
				return false;
			} else {
				document.getElementById("custName").innerHTML = " ";
			}
		}
		// father name validation
		if (fName != "" || fName.length != 0 ) {
			if ((fName.length < 5) || (fName.length > 20)) {
				document.getElementById("fatherName").innerHTML = " name should be between 5 to 20 charecters!";
				document.updateform.fname.focus();
				return false;
			} else if (!isNaN(fName)) {
				document.getElementById("fatherName").innerHTML = " please enter charecters only!";
				document.updateform.fname.focus();
				return false;
			} else {
				document.getElementById("fatherName").innerHTML = " ";
			}
		}
		// date validation
		var format = /^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$/;
		
		if (dob != "" || dob.length != 0) {
			if (dob.match(format) == null) {
				document.getElementById("datevali").innerHTML = "invalid Date format!"
				document.updateform.date.focus();
				return false;
			} else {
				document.getElementById("datevali").innerHTML = "";
			}
		}
		// Email validation
		var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		if (mail != "" || mail.length != 0) {
			if (mail.match(mailformat) == null) {
				document.getElementById("email").innerHTML = "Invalid email please enter a valid email!";
				document.updateform.mail.focus();
				return false;
			} else if ((mail.length < 5) || (mail.length > 40)) {
				document.getElementById("email").innerHTML = "email must be between 5 to 20 charecters!";
				document.updateform.mail.focus();
				return false;
			} else if (!isNaN(mail)) {
				document.getElementById("email").innerHTML = "Email should be in charecters format!";
				document.updateform.mail.focus();
				return false;
			} else {
				document.getElementById("email").innerHTML = " ";
			}
		}
		// mobile number validations
		if (mnumber != "" || mnumber.length != 0) {
			if (isNaN(mnumber)) {
				document.getElementById("Mnumber").innerHTML = "Mobile number should be in numeric format!";
				document.updateform.mnumber.focus();
				return false;
			} else if (mnumber.length < 10) {
				document.getElementById("Mnumber").innerHTML = "Mobile number is too small please enter 10 digits number!";
				document.updateform.mnumber.focus();
				return false;
			} else {
				document.getElementById("Mnumber").innerHTML = " ";
			}
		}
		// aadharNumber validations

		if (adharNumber != "" || adharNumber.length != 0) {
			if (isNaN(adharNumber)) {
				document.getElementById("adharnumber").innerHTML = "Aadhar Number should be in numeric format !";
				document.updateform.adharNumber.focus();
				return false;
			} else if (adharNumber.length < 12) {
				document.getElementById("adharnumber").innerHTML = "Aadhar Number is too small please enter 12 digits number !";
				document.updateform.adharNumber.focus();
				return false;
			} else {
				document.getElementById("adharnumber").innerHTML = " ";
			}
		}
		// PAN card number validations
		// validation regular exoression for pan card
		var panPattern = /^([A-Z]{5})(\d{4})([A-Z]{1})$/;

		if (pannumber != "" || pannumber.length != 0) {
			if (pannumber.toUpperCase().search(panPattern) == -1) {
				document.getElementById("PanNumber").innerHTML = " Invalid PAN No !";
				document.updateform.pannumber.focus();
				return false;
			} else if (pannumber.length < 10) {
				document.getElementById("PanNumber").innerHTML = "PAN Number should be combination of charecters and digits (10) !";
				document.updateform.pannumber.focus();
				return false;
			} else {
				document.getElementById("PanNumber").innerHTML = " ";
			}
		}
		// village(or) street name validations
		if (village != "" || village.length != 0) {
			if ((village.length < 15) || (village.length > 100)) {
				document.getElementById("villagename").innerHTML = " village name should be between 15 to 100 charecters!";
				document.updateform.village.focus();
				return false;
			} else if (!isNaN(village)) {
				document.getElementById("villagename").innerHTML = " please enter charecters only!";
				document.updateform.village.focus();
				return false;
			} else {
				document.getElementById("villagename").innerHTML = " ";
			}
		}

		// city validations
		if (city != "" || city.length != 0 ) {
			if ((city.length < 5) || (city.length > 30)) {
				document.getElementById("cityname").innerHTML = " city name should be between 5 to 20 charecters!";
				document.updateform.city.focus();
				return false;
			} else if (!isNaN(city)) {
				document.getElementById("cityname").innerHTML = " please enter charecters only!";
				document.updateform.city.focus();
				return false;
			} else {
				document.getElementById("cityname").innerHTML = " ";
			}
		}
		// district validations
		if (district != "" || district.length != 0) {
			if ((district.length < 5) || (district.length > 30)) {
				document.getElementById("districtname").innerHTML = " district name should be between 5 to 20 charecters!";
				document.updateform.district.focus();
				return false;
			} else if (!isNaN(district)) {
				document.getElementById("districtname").innerHTML = " please enter charecters only!";
				document.updateform.district.focus();
				return false;
			} else {
				document.getElementById("districtname").innerHTML = " ";
			}
		}
		// state validations
		if (state != "" || state.length != 0) {
			if ((state.length < 5) || (state.length > 30)) {
				document.getElementById("State").innerHTML = " state name should be between 5 to 20 charecters!";
				document.updateform.state.focus();
				return false;
			} else if (!isNaN(state)) {
				document.getElementById("State").innerHTML = " please enter charecters only!";
				document.updateform.state.focus();
				return false;
			} else {
				document.getElementById("State").innerHTML = " ";
			}
		}
		// pin code validations
		var panPattern = /^(\d{6})$/;
		if (pincode != "" || pincode.length != 0) {
			if (pincode.search(panPattern) == -1) {
				document.getElementById("pinCode").innerHTML = " Invalid PinCode !";
				document.updateform.pincode.focus();
				return false;
			} else {
				document.getElementById("pinCode").innerHTML = " ";
			}
		}
	}
</script>
</head>
<body>
	<form action="/BankMiniProject/updatedetails" id="updateform"
		name="updateform" method="post" onsubmit="return submitBtn(this);">
	<div id="links" style="background-color:green;width:1355px;
    font-size:25px; margin: 0 auto;">

	 <a href="/BankMiniProject/" style="margin-left: 190px;padding: 10px;" >Home</a> 
		<a href="/BankMiniProject/bankloginpage" style="display: inline-block;padding: 10px;" >Account creation</a>
		<a href="/BankMiniProject/depositpage" style="display: inline-block;padding: 10px;" > Deposit</a>
		<a href="/BankMiniProject/withdrawpage" style="display: inline-block;padding: 10px;">Withdraw</a>
		<a href="/BankMiniProject/credentialspage" style="display: inline-block;padding: 10px;" >Account info</a>
		<a href="/BankMiniProject/userValidationPage" style="display: inline-block; padding: 10px;">Edit profile</a>
</div>
		<div class="Container"
			style="background-color: #FFA500; margin: 10px 10px;width:1355px">
			<p
				style="background-color:; text-align: center; font-size: xx-large;">Update
				Account details</p>

			<div class="Customer-name" style="padding: 10px;">

				<input type="hidden" id="id" name="id" value="${pDetails.id}">

				<label style="margin-right: 15px; margin-left: 486px;">Existed
					customerName :: </label><input type="text" placeholder="Your Full Name"
					value="${pDetails.name}" style="padding: 7px 20px"
					readonly="readonly">
			</div>
			<div class="Customer-name" style="padding: 10px;">
				<label style="margin-right: 15px; margin-left: 486px;">customerName
					:: </label><input type="text" id="name" name="name"
					placeholder="Your Full Name" style="padding: 7px 20px"><span
					id="custName"
					style="color: black; list-style-type: circle; font-size: large;"></span>
			</div>

			<div class="Father-name" style="padding: 10px;">
				<label style="margin-right: 35px; margin-left: 486px;">Existed
					fatherName :: </label><input type="text" placeholder="Father Name"  value="${pDetails.fname}"
					style="padding: 7px 20px" readonly="readonly">
			</div>
			<div class="Father-name" style="padding: 10px;">
				<label style="margin-right: 35px; margin-left: 486px;">
					Father Name:: </label><input type="text" id="fname" name="fname"
					placeholder="Father Name" style="padding: 7px 20px"><span
					id="fatherName"
					style="color: black; list-style-type: circle; font-size: large;"></span>
			</div>
			<div class="Date-of-birth" style="padding: 10px;">
				<label style="margin-right: 50px; margin-left: 486px;">Existed
					DateOfBirth:: </label><input type="text" placeholder="DD-MM-YYYY"  value="${pDetails.date}"
					style="padding: 7px 20px" readonly="readonly">
			</div>
			<div class="Date-of-birth" style="padding: 10px;">
				<label style="margin-right: 50px; margin-left: 486px;">DateOfBirth
					:: </label><input type="text" id="date" name="date"
					placeholder="DD-MM-YYYY" style="padding: 7px 20px"><span
					id="datevali"
					style="color: black; list-style-type: circle; font-size: large;"></span>
			</div>
			<div class="Email-address" style="padding: 10px;">
				<label style="margin-right: 78px; margin-left: 486px;">Existed
					Email :: </label><input type="text" placeholder="Hexa@gmail.com"  style="padding: 7px 20px"
					value="${pDetails.mail}" readonly="readonly">
			</div>
			<div class="Email-address" style="padding: 10px;">
				<label style="margin-right: 78px; margin-left: 486px;">
					Email :: </label><input type="text" id="mail" name="mail"
					placeholder="Hexa@gmail.com" style="padding: 7px 20px"><span
					id="email"
					style="color: black; list-style-type: circle; font-size: large;"></span>
			</div>
			<div class="Mobile-number" style="padding: 10px;">
				<label style="margin-right: 23px; margin-left: 486px;">Existed
					MobileNumber ::</label><input type="text" placeholder="9999666677" value="${pDetails.mnumber}"
					style="padding: 7px 20px" readonly="readonly">
			</div>
			<div class="Mobile-number" style="padding: 10px;">
				<label style="margin-right: 23px; margin-left: 486px;">MobileNumber
					::</label><input type="text" id="mnumber" name="mnumber"
					placeholder="9999666677" maxlength="10" style="padding: 7px 20px"><span
					id="Mnumber"
					style="color: black; list-style-type: circle; font-size: large;"></span>
			</div>
			<div class="adharnumber" style="padding: 10px;">
				<label style="margin-right: 35px; margin-left: 486px;">AdharNumber
					:: </label><input type="text" placeholder="Adhar Number" value="${pDetails.adharNumber}"
					style="padding: 7px 20px" readonly="readonly">
			</div>
			<div class="adharnumber" style="padding: 10px;">
				<label style="margin-right: 35px; margin-left: 486px;">AdharNumber::
				</label><input type="text" id="adharNumber" name="adharNumber"
					checked="checked" placeholder="Adhar Number" maxlength="12"
					style="padding: 7px 20px"><span id="adharnumber"
					style="color: black; list-style-type: circle; font-size: large;"></span>
			</div>
			<div class="pannumber" style="padding: 10px;">
				<label style="margin-right: 35px; margin-left: 486px;">Existed
					PAN(Number) :: </label><input type="text" 	placeholder="PAN Number" value="${pDetails.pannumber}"
					style="padding: 7px 20px" readonly="readonly">
			</div>
			<div class="pannumber" style="padding: 10px;">
				<label style="margin-right: 35px; margin-left: 486px;">PAN(Number)
					:: </label><input type="text"  id="pannumber" name="pannumber"
					placeholder="PAN Number" maxlength="10"
					style="text-transform: uppercase; padding: 7px 20px"> <span
					id="PanNumber"
					style="color: black; list-style-type: circle; font-size: large;"></span>
			</div>

			<p style="background-color: yellow;">Existed Correspondence
				Address(Current Residential/Office)</p>
			<div class="Address" style="padding: 10px">
				<label style="margin-right: 16px">Street/Village* :: </label><input
					type="text"  placeholder="Village" style="margin-right: 30px; padding: 7px 20px"
					value="${pDetails.getPersonAddressDetials().village}"
					readonly="readonly"> <label style="margin-right: 16px">City(Mondel)*
					:: </label><input type="text" placeholder="City" style="margin-right: 30px; padding: 7px 20px"
					value="${pDetails.getPersonAddressDetials().city}"
					readonly="readonly"> <label
					style="margin-right: 16px; margin-left: 10px;"> District*
					:: </label><input type="text" placeholder="District"
					value="${pDetails.getPersonAddressDetials().district}"
					style="padding: 7px 20px" readonly="readonly">
				<div class="Child-address" style="padding: 10px">
					<label style="margin-right: 62px">State* :: </label><input
						type="text" placeholder="State" style="margin-right: 30px; padding: 7px 20px"
						value="${pDetails.getPersonAddressDetials().state}"
						readonly="readonly"> <label style="margin-right: 78px">PIN*
						:: </label><input type="text" placeholder="Pincode"
						style="margin-right: 30px; padding: 7px 20px"
						value="${pDetails.getPersonAddressDetials().pincode}"
						readonly="readonly">
				</div>

			</div>
			<p style="background-color: yellow;">Correspondence
				Address(Current Residential/Office)</p>
			<div class="Address" style="padding: 10px">
				<label style="margin-right: 16px">Street/Village* :: </label><input
					type="text" id="village" name="village" placeholder="Village"
					style="margin-right: 30px; padding: 7px 20px"><span
					id="villagename"
					style="color: black; list-style-type: circle; font-size: small;"></span>
				<label style="margin-right: 16px">City(Mondel)* :: </label><input
					type="text" id="city" name="city" placeholder="City"
					style="margin-right: 30px; padding: 7px 20px"> <span
					id="cityname"
					style="color: black; list-style-type: circle; font-size: small;"></span><label
					style="margin-right: 16px; margin-left: 10px;"> District*
					:: </label><input type="text" id="district" name="district"
					placeholder="District" style="padding: 7px 20px"><span
					id="districtname"
					style="color: black; list-style-type: circle; font-size: small;"></span>
				<div class="Child-address" style="padding: 10px">
					<label style="margin-right: 62px">State* :: </label><input
						type="text" id="state" name="state" placeholder="State"
						style="margin-right: 30px; padding: 7px 20px"><span
						id="State"
						style="color: black; list-style-type: circle; font-size: small;"></span>
					<label style="margin-right: 78px">PIN* :: </label><input
						type="text" id="pincode" name="pincode" placeholder="Pin Code"
						style="margin-right: 30px; padding: 7px 20px" maxlength="6"><span
						id="pinCode"
						style="color: black; list-style-type: circle; font-size: small;"></span>
				</div>

			</div>
			<div class="buttons" style="padding: 10px; text-align: center">
				<button type="submit" id="submit"
					style="text-align: center; padding: 5px 25px; background-color: rgb(255, 165, 0)"
					value="Submit">update</button>
				<button type="reset" id="reset"
					style="text-align: center; padding: 5px 25px; background-color: rgb(255, 165, 0)"
					value="Reset">Reset</button>
			</div>
		</div>
	</form>
	<div>
		<h1
			style="color: blue; text-align: center; font-size: xx-large; bottom: 100px;">
			<a href="/BankMiniProject/userValidationPage">Back credentials page</a>
		</h1>
	</div>
</body>
</html>