<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Home Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">

<style>
.btn btn-primary {
	text-color: black;
}
</style>
</head>

<body>
	<button type="button" class="btn btn-outline-success">
		<a href="register.jsp">Back</a>
	</button>
	<center>
		<button type="button" class="btn btn-outline-success">
			<a href="aboutus.html">About US</a>
		</button>
	</center>

	<br>
	<button type="button" class="btn btn-danger" id="values-btn">Get
		Members</button>
	<br>

	<table class="table">
		<thead>
			<tr>
				<th scope="col">First Name</th>
				<th scope="col">Last Name</th>
				<th scope="col">Email</th>
				<th scope="col">Address</th>
				<th scope="col">Gender</th>
				<th scope="col">Mobile</th>
			</tr>
		</thead>
		<tbody id="display">
		</tbody>
	</table>
	<script type="text/javascript" src="json.js"></script>


</body>
</html>