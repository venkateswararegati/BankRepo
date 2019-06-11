<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<script type="text/javascript">
	function submitBtn() {
		// variable declarations
		var name = document.loginform.name.value;
		var fName = document.loginform.fname.value;
		var dob = document.loginform.date.value;
		var nation = document.loginform.nation.value;
		var gender = document.loginform.gender.value;
		var mstatus = document.loginform.mstatus.value;
		var mail = document.loginform.mail.value;
		var mnumber = document.loginform.mnumber.value;
		var cast = document.loginform.cast.value;
		var adharNumber = document.loginform.adharNumber.value;
		var pannumber = document.loginform.pannumber.value;
		var acType = document.loginform.acType.value;
		var village = document.loginform.village.value;
		var city = document.loginform.city.value;
		var district = document.loginform.district.value;
		var state = document.loginform.state.value;
		var pincode = document.loginform.pincode.value;
		var sscboard = document.loginform.sscboard.value;
		var passedyear = document.loginform.passedyear.value;
		var spercentage = document.loginform.spercentage.value;
		var interboard = document.loginform.interboard.value;
		var interpassedyear = document.loginform.interpassedyear.value;
		var interpercentage = document.loginform.interpercentage.value;
		var degree = document.loginform.degree.value;
		var institution = document.loginform.institution.value;
		var dpassingyear = document.loginform.dpassingyear.value;
		var dpercentage = document.loginform.dpercentage.value;
		var postgraduation = document.loginform.postgraduation.value;
		var pinstitution = document.loginform.pinstitution.value;
		var postpassingyear = document.loginform.postpassingyear.value;
		var postpercentage = document.loginform.postpercentage.value;
		var pfgraduation = document.loginform.pfgraduation.value;
		var pfinstitution = document.loginform.pfinstitution.value;
		var pfpassingyear = document.loginform.pfpassingyear.value;
		var pfpercentage = document.loginform.pfpercentage.value;
		var othergraduation = document.loginform.othergraduation.value;
		var otherinstitution = document.loginform.otherinstitution.value;
		var otherpassingyear = document.loginform.otherpassingyear.value;
		var otherpercentage = document.loginform.otherpercentage.value;
		// customer name validation
		if (name == "" || name.length == 0 || name == " ") {
			document.getElementById("custName").innerHTML = " please enter your name!";
			document.loginform.name.focus();
			return false;
		} else if ((name.length < 5) || (name.length > 20)) {
			document.getElementById("custName").innerHTML = " name should be between 5 to 20 charecters!";
			document.loginform.name.focus();
			return false;
		} else if (!isNaN(name)) {
			document.getElementById("custName").innerHTML = " please enter charecters only!";
			document.loginform.name.focus();
			return false;
		} else {
			document.getElementById("custName").innerHTML = " ";
		}

		// father name validation
		if (fName == "" || fName.length == 0 || fName == " ") {
			document.getElementById("fatherName").innerHTML = " please enter your Father name!";
			document.loginform.fname.focus();
			return false;
		} else if ((fName.length < 5) || (fName.length > 20)) {
			document.getElementById("fatherName").innerHTML = " name should be between 5 to 20 charecters!";
			document.loginform.fname.focus();
			return false;
		} else if (!isNaN(fName)) {
			document.getElementById("fatherName").innerHTML = " please enter charecters only!";
			document.loginform.fname.focus();
			return false;
		} else {
			document.getElementById("fatherName").innerHTML = " ";
		}

		// date validation
		var format = /^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$/;
		;
		if (dob == null || dob == "" || dob.length == 0) {
			document.getElementById("datevali").innerHTML = "invalid Date!"
			document.loginform.date.focus();
			return false;
		} else if (dob.match(format) == null) {
			document.getElementById("datevali").innerHTML = "invalid Date format!"
			document.loginform.date.focus();
			return false;
		} else {
			document.getElementById("datevali").innerHTML = "";
		}
		// nation validations
		if ((nation.toString()) == "select") {
			document.getElementById("Nation").innerHTML = " please select  your nation !";
			document.loginform.nation.focus();
			return false;
		} else {
			document.getElementById("Nation").innerHTML = " ";
		}
		//gender validation

		if (gender == "") {
			// nation validations
			document.getElementById("Gender").innerHTML = " Please select your gender  !";
			alert("Please select your gender !");
			return false;
		} else {
			document.getElementById("Gender").innerHTML = " ";
		}
		if (gender != "") {
			//marrital status validation
			if ((mstatus.toString()) == "select") {
				// nation validations
				document.getElementById("Mstatus").innerHTML = " please select your marrital status !";
				document.loginform.mstatus.focus();
				return false;
			} else {
				document.getElementById("Mstatus").innerHTML = " ";
			}
			// Email validation
			var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
			if (mail == "" || mail.length == 0 || mail == " ") {
				document.getElementById("email").innerHTML = " please enter your email!";
				document.loginform.mail.focus();
				return false;
			} else if (mail.match(mailformat) == null) {
				document.getElementById("email").innerHTML = "Invalid email please enter a valid email!";
				document.loginform.mail.focus();
				return false;
			} else if ((mail.length < 5) || (mail.length > 40)) {
				document.getElementById("email").innerHTML = "email must be between 5 to 20 charecters!";
				document.loginform.mail.focus();
				return false;
			} else if (!isNaN(mail)) {
				document.getElementById("email").innerHTML = "Email should be in charecters format!";
				document.loginform.mail.focus();
				return false;
			} else {
				document.getElementById("email").innerHTML = " ";
			}
			// mobile number validations
			if (mnumber == "" || mnumber.length == 0 || mnumber == " ") {
				document.getElementById("Mnumber").innerHTML = " please enter your Mobile number!";
				document.loginform.mnumber.focus();
				return false;
			} else if (isNaN(mnumber)) {
				document.getElementById("Mnumber").innerHTML = "Mobile number should be in numeric format!";
				document.loginform.mnumber.focus();
				return false;
			} else if (mnumber.length < 10) {
				document.getElementById("Mnumber").innerHTML = "Mobile number is too small please enter 10 digits number!";
				document.loginform.mnumber.focus();
				return false;
			} else {
				document.getElementById("Mnumber").innerHTML = " ";
			}

			//cast validations
			if (cast == "") {
				// nation validations
				document.getElementById("Cast").innerHTML = " Invalid Cast !";
				alert("Please select your cast !");
				return false;
			} else {
				document.getElementById("Cast").innerHTML = " ";
			}
			// aadharNumber validations

			if (adharNumber == "" || adharNumber.length == 0
					|| adharNumber == " ") {
				document.getElementById("adharnumber").innerHTML = " please enter your Aadhar number!";
				document.loginform.adharNumber.focus();
				return false;
			} else if (isNaN(adharNumber)) {
				document.getElementById("adharnumber").innerHTML = "Aadhar Number should be in numeric format !";
				document.loginform.adharNumber.focus();
				return false;
			} else if (adharNumber.length < 12) {
				document.getElementById("adharnumber").innerHTML = "Aadhar Number is too small please enter 12 digits number !";
				document.loginform.adharNumber.focus();
				return false;
			} else {
				document.getElementById("adharnumber").innerHTML = " ";
			}
			// PAN card number validations
			// validation regular exoression for pan card
			var panPattern = /^([A-Z]{5})(\d{4})([A-Z]{1})$/;

			if (pannumber == "" || pannumber.length == 0 || pannumber == " ") {
				document.getElementById("PanNumber").innerHTML = " please enter your PAN Nmuber !";
				document.loginform.pannumber.focus();
				return false;
			}

			else if (pannumber.toUpperCase().search(panPattern) == -1) {
				document.getElementById("PanNumber").innerHTML = " Invalid PAN No !";
				document.loginform.pannumber.focus();
				return false;
			} else if (pannumber.length < 10) {
				document.getElementById("PanNumber").innerHTML = "PAN Number should be combination of charecters and digits (10) !";
				document.loginform.pannumber.focus();
				return false;
			} else {
				document.getElementById("PanNumber").innerHTML = " ";
			}
			//acccount type validations
			if (acType == "") {
				// nation validations
				document.getElementById("AcType").innerHTML = " Invalid Account Type!";

				alert("Please select your Account Type !");
				return false;
			} else {
				document.getElementById("AcType").innerHTML = " ";
			}
			// check boxes validations
			/*
			 * var checkboxes = document.getElementsByTagName("input"); var jChecks =
			 * []; if(checkboxes.length != 0){ for (var i = 0; i <=checkboxes.length-1;
			 * i++) { if (checkboxes[i].id == "savingType" && checkboxes[i].checked) {
			 * jChecks.push( checkboxes[i] ); } else if(checkboxes[i].id ==
			 * "currentType" && checkboxes[i].checked){ jChecks.push( checkboxes[i] ); } }
			 * if (jChecks.length > 1) {
			 * document.getElementById("checkbox").innerHTML="please select either
			 * savingType (OR) currentType!"; document.loginform.acType.focus(); return
			 * false; } else if(jChecks.length == 0){
			 * document.getElementById("checkbox").innerHTML="please select atleast One
			 * checkbox!"; document.loginform.acType.focus(); return false; } else{
			 * document.getElementById("checkbox").innerHTML=" "; } }
			 */
			// village(or) street name validations
			if (village == "" || village.length == 0 || village == " ") {
				document.getElementById("villagename").innerHTML = " please enter your village name !";
				document.loginform.village.focus();
				return false;
			} else if ((village.length < 5) || (village.length > 200)) {
				document.getElementById("villagename").innerHTML = " village name should be between 5 to 200 charecters!";
				document.loginform.village.focus();
				return false;
			} else if (!isNaN(village)) {
				document.getElementById("villagename").innerHTML = " please enter charecters only!";
				document.loginform.village.focus();
				return false;
			} else {
				document.getElementById("villagename").innerHTML = " ";
			}
			// city validations
			if (city == "" || city.length == 0 || city == " ") {
				document.getElementById("cityname").innerHTML = " please enter your city name !";
				document.loginform.city.focus();
				return false;
			} else if ((city.length < 5) || (city.length > 30)) {
				document.getElementById("cityname").innerHTML = " city name should be between 5 to 20 charecters!";
				document.loginform.city.focus();
				return false;
			} else if (!isNaN(city)) {
				document.getElementById("cityname").innerHTML = " please enter charecters only!";
				document.loginform.city.focus();
				return false;
			} else {
				document.getElementById("cityname").innerHTML = " ";
			}
			// district validations
			if (district == "" || district.length == 0 || district == " ") {
				document.getElementById("districtname").innerHTML = " please enter your district name !";
				document.loginform.district.focus();
				return false;
			} else if ((district.length < 5) || (district.length > 30)) {
				document.getElementById("districtname").innerHTML = " district name should be between 5 to 20 charecters!";
				document.loginform.district.focus();
				return false;
			} else if (!isNaN(district)) {
				document.getElementById("districtname").innerHTML = " please enter charecters only!";
				document.loginform.district.focus();
				return false;
			} else {
				document.getElementById("districtname").innerHTML = " ";
			}
			// state validations
			if (state == "" || state.length == 0 || state == " ") {
				document.getElementById("State").innerHTML = " please enter your state name !";
				document.loginform.state.focus();
				return false;
			} else if ((state.length < 5) || (state.length > 30)) {
				document.getElementById("State").innerHTML = " state name should be between 5 to 20 charecters!";
				document.loginform.state.focus();
				return false;
			} else if (!isNaN(state)) {
				document.getElementById("State").innerHTML = " please enter charecters only!";
				document.loginform.state.focus();
				return false;
			} else {
				document.getElementById("State").innerHTML = " ";
			}
			// pin code validations
			var panPattern = /^(\d{6})$/;
			if (pincode == "" || pincode.length == 0 || pincode == " ") {
				document.getElementById("pinCode").innerHTML = " please enter your PinCode !";
				document.loginform.pincode.focus();
				return false;
			}

			else if (pincode.search(panPattern) == -1) {
				document.getElementById("pinCode").innerHTML = " Invalid PinCode !";
				document.loginform.pincode.focus();
				return false;
			} else {
				document.getElementById("pinCode").innerHTML = " ";
			}

			// ssc board validation
			if ((sscboard.toString()) != "select" || passedyear != ""
					|| spercentage != "") {
				// ssc board validation
				if (sscboard == "" || sscboard.length == 0
						|| sscboard == "select") {
					document.getElementById("sscBoard").innerHTML = " please select  your board !";
					document.loginform.sscboard.focus();
					return false;
				} else {
					document.getElementById("sscBoard").innerHTML = " ";
				}
				// date validation
				var format = /^([a-zA-Z]{3})-([0-9]{4})$/;
				if (passedyear == null || passedyear == ""
						|| passedyear.length == 0) {
					document.getElementById("passedYear").innerHTML = "invalid Date"
					document.loginform.passedyear.focus();
					return false;
				} else if (passedyear.match(format) == null) {
					document.getElementById("passedYear").innerHTML = "invalid Date format"
					document.loginform.passedyear.focus();
					return false;
				} else {
					document.getElementById("passedYear").innerHTML = " ";
				}
				// spercentage validation
				var digit = /^\d+(\.\d{1,2})?$/;
				if (spercentage == "" || spercentage.length == 0
						|| spercentage == " ") {
					document.getElementById("sPercentage").innerHTML = " please enter your percentage !";
					document.loginform.spercentage.focus();
					return false;
				} else if (!(spercentage > 0 && spercentage <= 100.00)) {
					document.getElementById("sPercentage").innerHTML = "please enter a valid percentage below 100.00 !";
					document.loginform.spercentage.focus();
					return false;
				} else if (!digit.test(spercentage)) {
					document.getElementById("sPercentage").innerHTML = " please enter valid percentage !";
					document.loginform.spercentage.focus();
					return false;
				} else {
					document.getElementById("sPercentage").innerHTML = " ";
				}
			}
			// interBoard validations
			if ((interboard.toString()) != "select" || interpassedyear != ""
					|| interpercentage != "") {
				// ssc board validation
				if (interboard == "" || interboard.length == 0
						|| interboard == "select") {
					document.getElementById("interBoard").innerHTML = " please select  your board !";
					document.loginform.interboard.focus();
					return false;
				} else {
					document.getElementById("interBoard").innerHTML = " ";
				}
				// date validation
				var format = /^([a-zA-Z]{3})-([0-9]{4})$/;
				if (interpassedyear == null || interpassedyear == ""
						|| interpassedyear.length == 0) {
					document.getElementById("interpassedYear").innerHTML = "invalid Date"
					document.loginform.interpassedyear.focus();
					return false;
				} else if (interpassedyear.match(format) == null) {
					document.getElementById("interpassedYear").innerHTML = "invalid Date format"
					document.loginform.interpassedyear.focus();
					return false;
				} else {
					document.getElementById("interpassedYear").innerHTML = " ";
				}
				// spercentage validation
				var digit = /^\d+(\.\d{1,2})?$/;
				if (interpercentage == "" || interpercentage.length == 0
						|| interpercentage == " ") {
					document.getElementById("interPercentage").innerHTML = " please enter ypur percentage !";
					document.loginform.interpercentage.focus();
					return false;
				} else if (!(interpercentage > 0 && interpercentage <= 100.00)) {
					document.getElementById("interPercentage").innerHTML = " please enter a valid percentage below 100.00 !!";
					document.loginform.interpercentage.focus();
					return false;
				} else if (!digit.test(interpercentage)) {
					document.getElementById("interPercentage").innerHTML = " please enter valid percentage !";
					document.loginform.interpercentage.focus();
					return false;
				} else {
					document.getElementById("interPercentage").innerHTML = " ";
				}
			}
			// graduation/degree validations
			if ((degree.toString()) != "select" || institution != ""
					|| dpassingyear != "" || dpercentage != "") {
				// ssc board validation
				if (degree == "" || degree.length == 0 || degree == "select") {
					document.getElementById("Degree").innerHTML = " please select  your board !";
					document.loginform.degree.focus();
					return false;
				} else {
					document.getElementById("Degree").innerHTML = " ";
				}
				if (institution == "" || institution.length == 0) {
					document.getElementById("Institution").innerHTML = " please enter your institution !";
					document.loginform.institution.focus();
					return false;
				} else if ((institution.length < 5)
						|| (institution.length > 30)) {
					document.getElementById("Institution").innerHTML = " name should be between 5 to 30 charecters!";
					document.loginform.institution.focus();
					return false;
				} else if (!isNaN(institution)) {
					document.getElementById("Institution").innerHTML = " please enter charecters only!";
					document.loginform.institution.focus();
					return false;
				} else {
					document.getElementById("Institution").innerHTML = " ";
				}
				// date validation
				var format = /^([a-zA-Z]{3})-([0-9]{4})$/;
				if (dpassingyear == null || dpassingyear == ""
						|| dpassingyear.length == 0) {
					document.getElementById("Dpassingyear").innerHTML = "invalid Date"
					document.loginform.dpassingyear.focus();
					return false;
				} else if (dpassingyear.match(format) == null) {
					document.getElementById("Dpassingyear").innerHTML = "invalid Date format"
					document.loginform.dpassingyear.focus();
					return false;
				} else {
					document.getElementById("Dpassingyear").innerHTML = " ";
				}
				// spercentage validation
				var digit = /^\d+(\.\d{1,2})?$/;
				if (dpercentage == "" || dpercentage.length == 0
						|| dpercentage == " ") {
					document.getElementById("Dpercentage").innerHTML = " please enter ypur percentage !";
					document.loginform.dpercentage.focus();
					return false;
				} else if (!(dpercentage > 0 && dpercentage <= 100.00)) {
					document.getElementById("Dpercentage").innerHTML = " please enter a valid percentage below 100.00 !";
					document.loginform.dpercentage.focus();
					return false;
				} else if (!digit.test(dpercentage)) {
					document.getElementById("Dpercentage").innerHTML = " please enter valid percentage !";
					document.loginform.dpercentage.focus();
					return false;
				} else {
					document.getElementById("Dpercentage").innerHTML = " ";
				}
			}
			// post graduation validations
			if (postgraduation != "" || pinstitution != ""
					|| postpassingyear != "" || postpercentage != "") {
				// ssc board validation
				if (postgraduation == "" || postgraduation.length == 0
						|| postgraduation == " ") {
					document.getElementById("postGraduation").innerHTML = " please select  your board !";
					document.loginform.postgraduation.focus();
					return false;
				} else {
					document.getElementById("postgraduation").innerHTML = " ";
				}
				if (pinstitution == "" || pinstitution.length == 0) {
					document.getElementById("pInstitution").innerHTML = " please enter your institution !";
					document.loginform.pinstitution.focus();
					return false;
				} else if ((pinstitution.length < 5)
						|| (pinstitution.length > 30)) {
					document.getElementById("pInstitution").innerHTML = " name should be between 5 to 30 charecters!";
					document.loginform.pinstitution.focus();
					return false;
				} else if (!isNaN(pinstitution)) {
					document.getElementById("pInstitution").innerHTML = " please enter charecters only!";
					document.loginform.pinstitution.focus();
					return false;
				} else {
					document.getElementById("pInstitution").innerHTML = " ";
				}
				// date validation
				var format = /^([a-zA-Z]{3})-([0-9]{4})$/;
				if (postpassingyear == null || postpassingyear == ""
						|| postpassingyear.length == 0) {
					document.getElementById("postPassingYear").innerHTML = "invalid Date"
					document.loginform.postpassingyear.focus();
					return false;
				} else if (postpassingyear.match(format) == null) {
					document.getElementById("postPassingYear").innerHTML = "invalid Date format"
					document.loginform.postpassingyear.focus();
					return false;
				} else {
					document.getElementById("postPassingYear").innerHTML = " ";
				}
				// spercentage validation
				var digit = /^\d+(\.\d{1,2})?$/;
				if (postpercentage == "" || postpercentage.length == 0
						|| postpercentage == " ") {
					document.getElementById("postPercentage").innerHTML = " please enter ypur percentage !";
					document.loginform.postpercentage.focus();
					return false;
				} else if (!(postpercentage > 0 && postpercentage <= 100.00)) {
					document.getElementById("postPercentage").innerHTML = " please enter valid percentage !";
					document.loginform.postpercentage.focus();
					return false;
				} else if (!digit.test(postpercentage)) {
					document.getElementById("postPercentage").innerHTML = " please enter valid percentage !";
					document.loginform.postpercentage.focus();
					return false;
				} else {
					document.getElementById("postPercentage").innerHTML = " ";
				}
			}
			// professional qualifications validations
			if (pfgraduation != "" || pfinstitution != ""
					|| pfpassingyear != "" || pfpercentage != "") {
				// ssc board validation
				if (pfgraduation == "" || pfgraduation.length == 0
						|| pfgraduation == " ") {
					document.getElementById("pfGraduation").innerHTML = " please select  your board !";
					document.loginform.pfgraduation.focus();
					return false;
				} else {
					document.getElementById("pfGraduation").innerHTML = " ";
				}
				if (pfinstitution == "" || pfinstitution.length == 0) {
					document.getElementById("pfInstitution").innerHTML = " please enter your institution !";
					document.loginform.pfinstitution.focus();
					return false;
				} else if ((pfinstitution.length < 5)
						|| (pfinstitution.length > 30)) {
					document.getElementById("pfInstitution").innerHTML = " name should be between 5 to 30 charecters!";
					document.loginform.pfinstitution.focus();
					return false;
				} else if (!isNaN(pfinstitution)) {
					document.getElementById("pfInstitution").innerHTML = " please enter charecters only!";
					document.loginform.pfinstitution.focus();
					return false;
				} else {
					document.getElementById("pfInstitution").innerHTML = " ";
				}
				// date validation
				var format = /^([a-zA-Z]{3})-([0-9]{4})$/;
				if (pfpassingyear == null || pfpassingyear == ""
						|| pfpassingyear.length == 0) {
					document.getElementById("pfPassingYear").innerHTML = "invalid Date"
					document.loginform.pfpassingyear.focus();
					return false;
				} else if (pfpassingyear.match(format) == null) {
					document.getElementById("pfPassingYear").innerHTML = "invalid Date format"
					document.loginform.pfpassingyear.focus();
					return false;
				} else {
					document.getElementById("pfPassingYear").innerHTML = " ";
				}

				// spercentage validation
				var digit = /^\d+(\.\d{1,2})?$/;
				if (pfpercentage == "" || pfpercentage.length == 0
						|| pfpercentage == " ") {
					document.getElementById("pfPercentage").innerHTML = " please enter ypur percentage !";
					document.loginform.pfpercentage.focus();
					return false;
				} else if (!(pfpercentage > 0 && pfpercentage <= 100.00)) {
					document.getElementById("pfPercentage").innerHTML = "please enter a valid percentage below 100.00 !";
					document.loginform.pfpercentage.focus();
					return false;
				} else if (!digit.test(pfpercentage)) {
					document.getElementById("pfPercentage").innerHTML = " please enter valid percentage !";
					document.loginform.pfpercentage.focus();
					return false;
				} else {
					document.getElementById("pfPercentage").innerHTML = " ";
				}
			}
			// other qualifications validations
			if (othergraduation != "" || otherinstitution != ""
					|| otherpassingyear != "" || otherpercentage != "") {
				// ssc board validation
				if (othergraduation == "" || othergraduation.length == 0
						|| othergraduation == " ") {
					document.getElementById("otherGraduation").innerHTML = " please select  your board !";
					document.loginform.othergraduation.focus();
					return false;
				} else {
					document.getElementById("otherGraduation").innerHTML = " ";
				}
				if (otherinstitution == "" || otherinstitution.length == 0) {
					document.getElementById("otherInstitution").innerHTML = " please enter your institution !";
					document.loginform.otherinstitution.focus();
					return false;
				} else if ((otherinstitution.length < 5)
						|| (otherinstitution.length > 30)) {
					document.getElementById("otherInstitution").innerHTML = " name should be between 5 to 30 charecters!";
					document.loginform.otherinstitution.focus();
					return false;
				} else if (!isNaN(otherinstitution)) {
					document.getElementById("otherInstitution").innerHTML = " please enter charecters only!";
					document.loginform.otherinstitution.focus();
					return false;
				} else {
					document.getElementById("otherInstitution").innerHTML = " ";
				}
				// date validation
				var format = /^([a-zA-Z]{3})-([0-9]{4})$/;
				if (otherpassingyear == null || otherpassingyear == ""
						|| otherpassingyear.length == 0) {
					document.getElementById("otherPassingYear").innerHTML = "invalid Date"
					document.loginform.otherpassingyear.focus();
					return false;
				} else if (otherpassingyear.match(format) == null) {
					document.getElementById("otherPassingYear").innerHTML = "invalid Date format"
					document.loginform.otherpassingyear.focus();
					return false;
				} else {
					document.getElementById("otherPassingYear").innerHTML = " ";
				}
				// spercentage validation
				var digit = /^\d+(\.\d{1,2})?$/;
				if (otherpercentage == "" || otherpercentage.length == 0
						|| otherpercentage == " ") {
					document.getElementById("otherPercentage").innerHTML = " please enter ypur percentage !";
					document.loginform.otherpercentage.focus();
					return false;
				} else if (!(otherpercentage > 0 && otherpercentage <= 100.00)) {
					document.getElementById("otherPercentage").innerHTML = " please enter a valid percentage below 100.00 !";
					document.loginform.otherpercentage.focus();
					return false;
				} else if (!digit.test(otherpercentage)) {
					document.getElementById("otherPercentage").innerHTML = " please enter valid percentage !";
					document.loginform.otherpercentage.focus();
					return false;
				} else {
					document.getElementById("otherPercentage").innerHTML = " ";
				}
			}
		}
	}
</script>
</head>
<body>
	<form action="/BankMiniProject/addcustemerdetaills" id="loginform"
		name="loginform" method="post" onsubmit="return submitBtn(this);">
	<div id="links" style="background-color:green;width:1355px;
    font-size:25px; margin: 0 auto;">

	 <a href="/BankMiniProject/" style="margin-left: 190px;padding: 10px;" >Home </a> 
		<a href="/BankMiniProject/bankloginpage" style="display: inline-block;padding: 10px;">Account creation</a>
		<a href="/BankMiniProject/depositpage" style="display: inline-block;padding: 10px;"> Deposit</a>
		<a href="/BankMiniProject/withdrawpage" style="display: inline-block;padding: 10px;" >Withdraw</a>
		<a href="/BankMiniProject/credentialspage" style="display: inline-block;padding: 10px;" >Account info</a>
		<a href="/BankMiniProject/userValidationPage" style="display: inline-block; padding: 10px;" >Edit profile</a>
</div>
		<div class="Container"
			style="background-color: menu; margin-left:10px;width:1355px;">
			<p
				style="background-color:; text-align: center; font-size: xx-large;">Account
				Opening</p>

			<p style="background-color: rgb(238, 130, 238)">Personal Details</p>

			<div class="Customer-name" style="padding: 10px;">
				<label style="margin-right: 15px; margin-left: 486px;">CustomerName*
					:: </label><input type="text" id="name" name="name"
					placeholder="Your Full Name"><span id="custName"
					style="color: red; list-style-type: circle; font-size: large;"></span>
			</div>

			<div class="Father-name" style="padding: 10px;">
				<label style="margin-right: 35px; margin-left: 486px;">FatherName*
					:: </label><input type="text" id="fname" name="fname" checked="checked"
					placeholder="Father Name"><span id="fatherName"
					style="color: red; list-style-type: circle; font-size: large;"></span>
			</div>
			<div class="Date-of-birth" style="padding: 10px;">
				<label style="margin-right: 50px; margin-left: 486px;">DateOfBirth*
					:: </label><input type="text" id="date" name="date"
					placeholder="DD-MM-YYYY" style="width: 150px;"><span
					id="datevali"
					style="color: red; list-style-type: circle; font-size: large;"></span>
			</div>
			<div class="Nationality" style="padding: 10px;">
				<label style="margin-right: 55px; margin-left: 486px;">Nationality*
					:: </label> <select id="nation" name="nation" style="width: 160px;"><option
						value="select">--select--</option>
					<option value="indian">Indian</option>
					<option value="other">--OtherCountry--</option></select><span id="Nation"
					style="color: red; list-style-type: circle; font-size: large;"></span>
			</div>
			<div class="gender" style="padding: 10px;">
				<label style="margin-right: 30px; margin-left: 486px;">Gender*::
				</label> <input type="radio" id="gender" name="gender" value="male">Male
				&nbsp; <input type="radio" id="gender" name="gender" value="female">Female
				&nbsp; <input type="radio" id="gender" name="gender" value="other">Others
				&nbsp;<span id="Gender"
					style="color: red; list-style-type: circle; font-size: large;"></span>

			</div>
			<div class="marital-status" style="padding: 10px;">
				<label style="margin-right: 46px; margin-left: 486px;">MaritalStatus*
					:: </label> <select id="mstatus" name="mstatus" style="width: 160px;">
					<option value="select">--select--</option>
					<option value="married">Married</option>
					<option value="unMarried">UnMarried</option>
				</select><span id="Mstatus"
					style="color: red; list-style-type: circle; font-size: large;"></span>
			</div>
			<div class="Email-address" style="padding: 10px;">
				<label style="margin-right: 78px; margin-left: 486px;">Email*
					:: </label><input type="text" id="mail" name="mail"
					placeholder="Hexa@gmail.com"><span id="email"
					style="color: red; list-style-type: circle; font-size: large;"></span>
			</div>
			<div class="Mobile-number" style="padding: 10px;">
				<label style="margin-right: 23px; margin-left: 486px;">MobileNumber*
					::</label><input type="text" id="mnumber" name="mnumber"
					placeholder="9999666677" maxlength="10"><span id="Mnumber"
					style="color: red; list-style-type: circle; font-size: large;"></span>
			</div>
			<p style="background-color: rgb(238, 130, 238)">Basic Details</p>

			<div class="cast" style="padding: 10px;">
				<label style="margin-right: 30px; margin-left: 486px;">Category*::
				</label> <input type="radio" id="sc" name="cast" value="sc" />SC &nbsp; <input
					type="radio" id="st" name="cast" value="st" />ST &nbsp; <input
					type="radio" id="Obc" name="cast" value="obc" />OBC &nbsp; <input
					type="radio" id="oc" name="cast" value="oc" />OC &nbsp; <input
					type="radio" id="other" name="cast" value="others" />Others
				&nbsp;<span id="Cast"
					style="color: red; list-style-type: circle; font-size: large;"></span>
			</div>

			<div class="adharnumber" style="padding: 10px;">
				<label style="margin-right: 35px; margin-left: 486px;">AdharNumber*
					:: </label><input type="text" id="adharNumber" name="adharNumber"
					checked="checked" placeholder="Adhar Number" maxlength="12"><span
					id="adharnumber"
					style="color: red; list-style-type: circle; font-size: large;"></span>
			</div>
			<div class="pannumber" style="padding: 10px;">
				<label style="margin-right: 35px; margin-left: 486px;">PAN(Number)*
					:: </label><input type="text" id="pannumber" name="pannumber"
					placeholder="PAN Number" maxlength="10"
					style="text-transform: uppercase;"> <span id="PanNumber"
					style="color: red; list-style-type: circle; font-size: large;"></span>
			</div>

			<!-- <div class="accountType" id="accountType" style="padding: 10px">
			<label style="margin-right: 35px">AccountType* :: </label><input
				type="checkbox"  id="savingType" name="acType" value="savings"/>Savings
			&nbsp;<input type="checkbox" id="currentType" name="acType"
			value="current" >Current<span id="checkbox" style="color:red;list-style-type: circle;font-size:large;"></span>
		</div> -->
			<div class="accountType" id="accountType" style="padding: 10px;">
				<label style="margin-right: 60px; margin-left: 486px;">AccountType*
					:: </label><input type="radio" id="savingType" name="acType"
					value="savings" />Savings &nbsp;<input type="radio"
					id="currentType" name="acType" value="current">Current <span
					id="AcType"
					style="color: red; list-style-type: circle; font-size: large;"></span>
			</div>
			<p style="background-color: rgb(238, 130, 238)">Correspondence
				Address(Current Residential/Office)</p>
			<div class="Address" style="padding: 10px">
				<label style="margin-right: 16px">Street/Village* :: </label><input
					type="text" id="village" name="village" placeholder="Village"
					style="margin-right: 30px"><span id="villagename"
					style="color: red; list-style-type: circle; font-size: small;"></span>
				<label style="margin-right: 16px">City(Mondel)* :: </label><input
					type="text" id="city" name="city" placeholder="City"
					style="margin-right: 30px"> <span id="cityname"
					style="color: red; list-style-type: circle; font-size: small;"></span><label
					style="margin-right: 16px; margin-left: 10px;"> District*
					:: </label><input type="text" id="district" name="district"
					placeholder="District"><span id="districtname"
					style="color: red; list-style-type: circle; font-size: small;"></span>
				<div class="Child-address" style="padding: 10px">
					<label style="margin-right: 62px">State* :: </label><input
						type="text" id="state" name="state" placeholder="State"
						style="margin-right: 30px"><span id="State"
						style="color: red; list-style-type: circle; font-size: small;"></span>
					<label style="margin-right: 78px">PIN* :: </label><input
						type="text" id="pincode" name="pincode" placeholder="Pin Code"
						style="margin-right: 30px" maxlength="6"><span
						id="pinCode"
						style="color: red; list-style-type: circle; font-size: small;"></span>
				</div>

			</div>
			<p style="background-color: rgb(238, 130, 238)">Additional
				Details (Educational Qualification Details)</p>
			<div class="educational ssc">
				<p style="background-color: rgb(60, 179, 113)">S.S.C (10th)</p>
				<label style="margin-right: 52px">StateBoard* :: </label><select
					id="sscboard" name="sscboard" style="margin-right: 18px"><option
						value="select">--select--</option>
					<option value="ap">AP(Andhra pradesh)</option>
					<option value="up">Up(Uthara pradesh)</option>
					<option value="ts">Ts(telangana)</option>
					<option value="others">--Others.</option></select> <span id="sscBoard"
					style="color: red; list-style-type: circle; font-size: small;"></span><label
					style="margin-right: 52px">YearOf Passing* :: </label><input
					type="text" id="passedyear" name="passedyear"
					placeholder="MMM-YYYY" style="margin-right: 18px"><span
					id="passedYear"
					style="color: red; list-style-type: circle; font-size: small;"></span>
				<label style="margin-right: 52px">PercentageOfMarks* :: </label><input
					type="text" id="spercentage" name="spercentage"
					placeholder="percentage(%)"><span id="sPercentage"
					style="color: red; list-style-type: circle; font-size: small;"></span>
			</div>
			<div class="educational inter">
				<p style="background-color: rgb(60, 179, 113)">InterMediate
					(12th)</p>
				<label style="margin-right: 52px">InterBoard* :: </label><select
					id="interboard" name="interboard" style="margin-right: 18px"><option
						value="select">--select--</option>
					<option value="ap">AP(Andhra pradesh)</option>
					<option value="up">Up(Uthara pradesh)</option>
					<option value="ts">Ts(telangana)</option>
					<option value="others">--Others</option></select><span id="interBoard"
					style="color: red; list-style-type: circle; font-size: small;"></span>
				<label style="margin-right: 52px">YearOf Passing* :: </label><input
					type="text" id="interpassedyear" name="interpassedyear"
					placeholder="MMM-YYYY" style="margin-right: 18px"> <span
					id="interpassedYear"
					style="color: red; list-style-type: circle; font-size: small;"></span>
				<label style="margin-right: 52px">PercentageOfMarks* :: </label><input
					type="text" id="interpercentage" name="interpercentage"
					placeholder="Percentage(%)"> <span id="interPercentage"
					style="color: red; list-style-type: circle; font-size: small;"></span>
			</div>
			<div class="higherEducationDetails">
				<p style="background-color: rgb(60, 179, 113)">HigherQualificationDetails</p>
				<table style="border-bottom: inset;">
					<tr>
						<th
							style="background-color: rgb(60, 179, 113); padding-right: 70px">Exam
							Passed</th>
						<th
							style="background-color: rgb(60, 179, 113); padding-right: 70px">Degree/subject/stream</th>
						<th
							style="background-color: rgb(60, 179, 113); padding-right: 70px">Name
							Of institution</th>
						<th
							style="background-color: rgb(60, 179, 113); padding-right: 70px">Date
							Of Passing</th>
						<th
							style="background-color: rgb(60, 179, 113); padding-right: 70px">%
							Of Marks</th>
					</tr>

					<tr>
						<td><label style="margin-right: 52px">Graduation/Degree*
								:: </label></td>
						<td><select id="degree" name="degree"
							style="margin-right: 18px; width: 173px;"><option
									value="select">--select--</option>
								<option value="degree">Degree</option>
								<option value="btech">B.Tech</option>
								<option value="others">--Others.</option>
						</select><span id="Degree"
							style="color: red; list-style-type: circle; font-size: small;"></span></td>
						<td><input type="text" id="institution" name="institution"
							placeholder="Name Of College" style="text-align: center;"><span
							id="Institution"
							style="color: red; list-style-type: circle; font-size: small;"></span></td>
						<td><input type="text" id="dpassingyear" name="dpassingyear"
							placeholder="MMM-YYYY" style="text-align: center;"><span
							id="Dpassingyear"
							style="color: red; list-style-type: circle; font-size: small;"></span></td>
						<td><input type="text" id="dpercentage" name="dpercentage"
							placeholder="Percentage(%)" style="text-align: center;"><span
							id="Dpercentage"
							style="color: red; list-style-type: circle; font-size: small;"></span></td>
					</tr>
					<tr>
						<td><label style="margin-right: 52px">PostGraduation*
								:: </label></td>
						<td><input type="text" id="postgraduation"
							name="postgraduation" style="text-align: center;"><span
							id="postGraduation"
							style="color: red; list-style-type: circle; font-size: small;"></span></td>
						<td><input type="text" id="pinstitution" name="pinstitution"
							placeholder="Name Of College" style="text-align: center;"><span
							id="pInstitution"
							style="color: red; list-style-type: circle; font-size: small;"></span></td>
						<td><input type="text" id="postpassingyear"
							name="postpassingyear" placeholder="MMM-YYYY"
							style="text-align: center;"><span id="postPassingYear"
							style="color: red; list-style-type: circle; font-size: small;"></span></td>
						<td><input type="text" id="postpercentage"
							name="postpercentage" placeholder="Percentage(%)"
							style="text-align: center;"><span id="postPercentage"
							style="color: red; list-style-type: circle; font-size: small;"></span></td>
					</tr>
					<tr>
						<td><label style="margin-right: 52px">ProfessionalQualifications*
								:: </label></td>
						<td><input type="text" id="pfgraduation" name="pfgraduation"
							style="text-align: center;"><span id="pfGraduation"
							style="color: red; list-style-type: circle; font-size: small;"></span></td>
						<td><input type="text" id="pfinstitution"
							name="pfinstitution" placeholder="Name Of College"
							style="text-align: center;"><span id="pfInstitution"
							style="color: red; list-style-type: circle; font-size: small;"></span></td>
						<td><input type="text" id="pfpassingyear"
							name="pfpassingyear" placeholder="MMM-YYYY"
							style="text-align: center;"><span id="pfPassingYear"
							style="color: red; list-style-type: circle; font-size: small;"></span></td>
						<td><input type="text" id="pfpercentage" name="pfpercentage"
							placeholder="Percentage(%)" style="text-align: center;"><span
							id="pfPercentage"
							style="color: red; list-style-type: circle; font-size: small;"></span></td>
					</tr>
					<tr>
						<td><label style="margin-right: 52px">Others :: </label></td>
						<td><input type="text" id="othergraduation"
							name="othergraduation" style="text-align: center;"><span
							id="otherGraduation"
							style="color: red; list-style-type: circle; font-size: small;"></span></td>
						<td><input type="text" id="otherinstitution"
							name="otherinstitution" checked="checked"
							placeholder="Name Of College" style="text-align: center;"><span
							id="otherInstitution"
							style="color: red; list-style-type: circle; font-size: small;"></span></td>
						<td><input type="text" id="otherpassingyear"
							name="otherpassingyear" placeholder="MMM-YYYY"
							style="text-align: center;"><span id="otherPassingYear"
							style="color: red; list-style-type: circle; font-size: small;"></span></td>
						<td><input type="text" id="otherpercentage"
							name="otherpercentage" checked="checked"
							placeholder="Percentage(%)" style="text-align: center;"><span
							id="otherPercentage"
							style="color: red; list-style-type: circle; font-size: small;"></span></td>
					</tr>
				</table>
			</div>
			<div class="buttons" style="padding: 10px; text-align: center">
				<button type="submit" id="submit"
					style="text-align: center; padding: 5px 25px; background-color: rgb(255, 165, 0)"
					value="Submit">Submit</button>
				<button type="reset" id="reset"
					style="text-align: center; padding: 5px 25px; background-color: rgb(255, 165, 0)"
					value="Reset">Reset</button>
			</div>
		</div>
	</form>
</body>
</html>