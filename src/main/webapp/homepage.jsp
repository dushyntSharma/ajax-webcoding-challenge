<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

p:before {
	content: 'Fetching Data from Databse';
}

p.red:before {
	color: red;
}
</style>
</head>

<body>
	<button type="button" class="btn btn-outline-success">
		<a href='<c:url value="/register.jsp"/>'>Back</a>
	</button>
	<center>
		<button type="button" class="btn btn-outline-success">
			<a href='<c:url value="/aboutus.html"/>'> About US</a>
		</button>
		<button type="button" class="btn btn-outline-success">
			<a href='<c:url value="/animationpage.html"/>'> CSS3 Animations</a>
		</button>
		<button type="button" class="btn btn-outline-success">
			<a href='<c:url value="/jstlinsert.jsp"/>'>JSTL Demo</a>
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