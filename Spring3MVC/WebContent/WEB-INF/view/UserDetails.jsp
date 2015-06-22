<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Submitted User Information</h2>
	<c:if test="${not empty regUser}">
		<table border=1>
			<thead>
				<tr>
					<th>ID</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>contact Number</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${regUser.userId}</td>
					<td>${regUser.firstName}</td>
					<td>${regUser.lastName}</td>
					<td>${regUser.email}</td>
					<td>${regUser.contactNo}</td>
				</tr>
			</tbody>

		</table>
	</c:if>
</body>
</html>