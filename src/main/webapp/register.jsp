<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./style.css" />
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<style>
form {
	display: inline-block;
	margin-left: 25%;
	margin-right: 25%;
	width: 50%;
}
</style>
</head>
<body>

	<form>
		<h1 class="text-danger">Get 100 bonus points just for signing up!</h1>
		<p class="h6">Tell us about yourself</p>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputEmail4"></label> <input type="text"
					class="form-control" id="firstname" placeholder="First Name*">
				<span class="error_form" id="namecheck1"></span>
			</div>
			<div class="form-group col-md-6">
				<label for="inputPassword4"> </label> <input type="email"
					class="form-control" id="email" placeholder="Email Address*">
				<span class="error_form" id="emailC"></span>
			</div>
		</div>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputEmail4"></label> <input type="text"
					class="form-control" id="lastname" placeholder="Last Name*">
				<span class="error_form" id="namecheck"></span>
			</div>
			<div class="form-group col-md-6">
				<p class="h6">Your contact info</p>
				<label for="inputPassword4"></label> <input type="text"
					class="form-control" id="address" placeholder="Address*"> <span
					class="error_form" id="addressC"></span>
			</div>
		</div>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputEmail4"></label> <input type="text"
					class="form-control" id="gender" placeholder="Gender"> <span
					class="error_form" id="namecheck"></span>
			</div>

			<div class="form-group col-md-6">
				<label for="inputPassword4"></label> <input type="text"
					class="form-control" id="mobile"
					placeholder="Mobile Number (Ooptional)"> <span
					class="error_form" id="namecheck"></span>
			</div>
		</div>


		<p class="h6">Create Password</p>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputEmail4"></label> <input type="password"
					class="form-control" id="password" placeholder="Password">
				<span class="error_form" id="passC"></span>
			</div>
		</div>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputPassword4"></label> <input type="password"
					class="form-control" id="cpassword" placeholder="Confirm Password">
				<span class="error_form" id="passC"></span>
			</div>
		</div>

	</form>
	<center>
		<button type="button" id="btnid" onclick="formData()"
			class="btn btn-danger">Become a Member</button>
	</center>

	<script type="text/javascript">
		$(function() {

			$("#namecheck1").hide();
			$("#namecheck").hide();
			$("#ageC").hide();
			$("#addressC").hide();
			$("#cityC").hide();
			$("#stateC").hide();
			$("#countryC").hide();
			$("#emailC").hide();

			var errorName = false;
			var errorAge = false;
			var errorAddress = false;
			var errorCity = false;
			var errorState = false;
			var errorCountry = false;
			var errorEmail = false;

			$("#firstname").focusout(function() {
				nameCheck1();
			});
			function nameCheck1() {

				var name = $("#firstname").val();
				if (name !== '') {
					$("#namecheck1").hide();
					$("#firstname").css("border-bottom", "2px solid #34F458");
				} else {
					$("#namecheck1").html("FirstName can't be blank");
					$("#namecheck1").show();
					$("#firstname").css("border-bottom", "2px solid #F90A0A");
					errorName = true;
				}
			}
			$("#lastname").focusout(function() {
				nameCheck();
			});
			function nameCheck() {

				var name = $("#lastname").val();
				if (name !== '') {
					$("#namecheck").hide();
					$("#lastname").css("border-bottom", "2px solid #34F458");
				} else {
					$("#namecheck").html("LastName can't be blank");
					$("#namecheck").show();
					$("#lastname").css("border-bottom", "2px solid #F90A0A");
					errorName = true;
				}
			}

			$("#address").focusout(function() {
				addressC();
			});
			function addressC() {
				var addresss = $("#address").val();
				if (addresss !== '') {
					$("#addressC").hide();
					$("#address").css("border-bottom", "2px solid #34F458");
				} else {
					$("#addressC").html("Address can't be blank");
					$("#addressC").show();
					$("#address").css("border-bottom", "2px solid #F90A0A");
					errorAddress = true;
				}
			}

			$("#email").focusout(function() {
				emailC();
			});
			function emailC() {
				var emails = $("#email").val();
				if (emails !== '') {
					$("#emailC").hide();
					$("#email").css("border-bottom", "2px solid #34F458");
				} else {
					$("#emailC").html("Email should be filled");
					$("#emailC").show();
					$("#email").css("border-bottom", "2px solid #F90A0A");
					errorEmail = true;
				}
			}
			$("#btnid").click(function() {
				var password = $("#password").val();
				var confirmPassword = $("#cpassword").val();
				if (password != confirmPassword) {
					alert("Passwords do not match.");
					return false;
				}
				return true;
			});

			$("#myForm").submit(
					function() {
						errorName = false;
						errorAge = false;
						errorAddress = false;
						errorEmail = false;

						nameCheck();
						ageC();
						addressC();
						emailC();
						if (firstname == false && lastname == false
								&& ages == false && addresss == false
								&& countries == false && emails == false) {
							alert("Registration Successfull");
							return true;
						} else {
							alert("Please Fill the form Correctly");
							return false;
						}

					});
		});
	</script>
	<script type="text/javascript"
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
	<script type="text/javascript" src="script.js"></script>


</body>
</html>