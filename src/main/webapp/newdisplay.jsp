<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP List Users Records</title>
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>

</head>
<body>
	<sql:setDataSource var="myDS" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/membership" user="root"
		password="9909" />

	<sql:query var="listUsers" dataSource="${myDS}">
        SELECT * FROM member;
    </sql:query>

	<div align="center">
		<caption>
			<h2 class="display-3">List of Members</h2>
		</caption>
		<table border="1" cellpadding="5" class="table">

			<tr>
				<th scope="col">ID</th>
				<th scope="col">FirstName</th>
				<th scope="col">LastName</th>
				<th scope="col">Email</th>
				<th scope="col">Address</th>
				<th scope="col">Gender</th>
				<th scope="col">Mobile</th>
				<th scope="col">Pass</th>
				<th scope="col">Cp</th>
			</tr>
			<c:forEach var="user" items="${listMembers.rows}">
				<tr>
					<td><c:out value="${user.id}" /></td>
					<td><c:out value="${user.firstname}" /></td>
					<td><c:out value="${user.lastname}" /></td>
					<td><c:out value="${user.email}" /></td>
					<td><c:out value="${user.address}" /></td>
					<td><c:out value="${user.gender}" /></td>
					<td><c:out value="${user.mobile}" /></td>
					<td><c:out value="${user.password}" /></td>
					<td><c:out value="${user.cpassword}" /></td>

				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>