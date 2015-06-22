<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Spring MVC Form Handling</title>
</head>
<body>
	<table border=1>
		<thead>
			<tr>
				<th>USER ID</th>
				<th>First Name</th>
				<th colspan=2>  </th>
				<th colspan=2>  </th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="regUsers" items="${registeredUsers}">
				<tr>
					<td><a href="getRegisteredUsers/${regUsers.userId}"> 
					<c:out value="${regUsers.userId}" /></a></td>
					<td><c:out value="${regUsers.firstName}" /></td>
					<td colspan=2><a href="getRegisteredUsers/${regUsers.userId}/edit">Edit</a></td>
					<td colspan=2><a href="getRegisteredUsers/${regUsers.userId}/delete">Delete</a></td>
				</tr>
			</c:forEach>
			
		</tbody>
	</table>
	<%-- <c:forEach var="user" items="${usersList}">
		<c:out value="${user.firstName}" />
	</c:forEach> --%>
	<%--    <table border="2">
	    <thead> 
	    	<th>ID</th>
	    	<th>First Name</th>
	   		<th>Last Name</th>
	    	<th>User Name</th>
	   </thead>
    	
    	
    	<tr>
			<td>${users.userId}</td>
			<td>${users.firstName}</td>
			<td>${users.lastName}</td>
			<td>${users.userName}</td> 
    	</tr>
	</table>  
	 --%>




	<%-- <c:forEach var="user" items="${registeredUsers}">
 	<c:out value="${user.userId}"/>
 </c:forEach> --%>
<%-- <c:if test="${not empty regUser}">
	<table border=1>
		<thead>
			<th>ID</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>User Name</th>
			<th>Email</th>
		</thead>
		<tbody>
			<tr>
				<td>${regUser.userId}</td>
				<td>${regUser.firstName}</td>
				<td>${regUser.lastName}</td>
				<td>${regUser.userName}</td>
				<td>${regUser.email }</td>
			</tr>
		</tbody>

	</table>
	</c:if> --%>
	<%-- <table border=1>
		<thead>
		<tr>
			<th>USER ID</th>
			<th>FIRST NAME</th>
			<th>LAST NAME</th>
			<th>USER NAME</th>
			<th>EMAIL</th>
		</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${registeredUsers}">
				<tr>
					<td><c:out value="${user.userId}" /></td>
					<td><c:out value="${user.firstName}" /></td>
					<td><c:out value="${user.lastName}" /></td>
					<td><c:out value="${user.userName}" /></td>
					<td><c:out value="${user.email}" /></td>
				</tr>
			</c:forEach>


			<td>${registeredUsers.userId}</td>
				<td>${registeredUsers.firstName}</td>
				<td>${registeredUsers.lastName}</td>
				<td>${registeredUsers.userName}</td>
				<td>${registeredUsers.email}</td>
		</tbody>
	</table> --%>
</body>
</html>