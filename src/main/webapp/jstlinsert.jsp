<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/sql" prefix="sql"%>
<html>
<head>
<title>JSTL Demo</title>
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<sql:setDataSource var="dataSource" driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://127.0.0.1:3306/membership" user="root"
	password="9909" scope="session" />
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
	<center>

		<br> <a href="jstldisplay.jsp">JSTL Users</a>

	</center>
	<form method="post">
		<h1 class="text-danger">Get 100 bonus points just for signing up!</h1>
		<p class="h6">Tell us about yourself</p>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputEmail4"></label> <input type="text"
					class="form-control" id="firstname" name="firstname"
					placeholder="First Name*"> <span class="error_form"
					id="namecheck1"></span>
			</div>
			<div class="form-group col-md-6">
				<label for="inputPassword4"> </label> <input type="email"
					class="form-control" id="email" name="email"
					placeholder="Email Address*"> <span class="error_form"
					id="emailC"></span>
			</div>
		</div>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputEmail4"></label> <input type="text"
					class="form-control" id="lastname" name="lastname"
					placeholder="Last Name*"> <span class="error_form"
					id="namecheck"></span>
			</div>
			<div class="form-group col-md-6">
				<p class="h6">Your contact info</p>
				<label for="inputPassword4"></label> <input type="text"
					class="form-control" id="address" name="address"
					placeholder="Address*"> <span class="error_form"
					id="addressC"></span>
			</div>
		</div>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputEmail4"></label> <input type="text"
					class="form-control" id="gender" name="gender" placeholder="Gender">
				<span class="error_form" id="gendercheck"></span>
			</div>

			<div class="form-group col-md-6">
				<label for="inputPassword4"></label> <input type="text"
					class="form-control" id="mobile" name="mobile"
					placeholder="Mobile Number (Optional)"> <span
					class="error_form" id="mobilecheck"></span>
			</div>
		</div>
		<p class="h6">Create Password</p>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputEmail4"></label> <input type="password"
					class="form-control" id="password" name="password"
					placeholder="Password"> <span class="error_form" id="passC"></span>
			</div>
		</div>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputPassword4"></label> <input type="password"
					class="form-control" id="cpassword" name="cpassword"
					placeholder="Confirm Password"> <span class="error_form"
					id="passC"></span>
			</div>
		</div>
		<center>
			<button type="submit" id="btnid" onclick="formData()"
				class="btn btn-danger" value="submit">Become a Member</button>
		</center>

	</form>
	<c:if test="${pageContext.request.method=='POST'}">
		<c:catch var="exception">
			<sql:update dataSource="${dataSource}" var="updatedTable">
INSERT INTO MEMBER(firstname,lastname, email, address,gender,mobile, password, cpassword) VALUES(?,?,?,?,?,?,?,?)
<sql:param value="${param.firstname}" />
				<sql:param value="${param.lastname}" />
				<sql:param value="${param.email}" />
				<sql:param value="${param.address}" />
				<sql:param value="${param.gender}" />
				<sql:param value="${param.mobile}" />
				<sql:param value="${param.password}" />
				<sql:param value="${param.cpassword}" />
			</sql:update>
			<c:if test="${updatedTable>=1}">
				<font size="5" color='green'> Congratulations ! Data inserted
					successfully.</font>
			</c:if>
		</c:catch>
		<c:if test="${exception!=null}">
			<c:out value="Unable to insert data in database." />
		</c:if>
	</c:if>
</body>
</html>