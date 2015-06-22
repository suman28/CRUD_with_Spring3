<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div data-ng-controller="editController">
	<h1>Edit Details</h1> 
	<form name="editForm" method="POST" action="<%=request.getContextPath()%>/editDetails">
		<table>
			<thead>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>User ID</th>
					<th>Password</th>
					<th>Re Password</th>
					<th>Email ID</th>
					<th>Contact Number</th>
					<th>User Name</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="text" name="firstName" value="${editUser.firstName}"
						data-ng-model="editUser.firstName"></td>
					<td><input type="text" name="lastName" value="${editUser.lastName}"
						data-ng-model="editUser.lastName"></td>
					<td><input type="text" name="userId" value="${editUser.userId}"
						data-ng-model="editUser.userId"></td>
					<td><input type="text" name="password" value="${editUser.password}"
						data-ng-model="editUser.password"></td>
					<td><input type="text" name="rePassword" value="${editUser.rePassword}"
						data-ng-model="editUser.rePassword"></td>
					<td><input type="text" name="email" value="${editUser.email}"
						data-ng-model="editUser.email"></td>
					<td><input type="text" name="contactNo" value="${editUser.contactNo}"
						data-ng-model="editUser.contactNo"></td>
					<td><input type="text" name="userName" value="${editUser.userName}"
						data-ng-model="editUser.userName"></td>
				</tr>
			</tbody>
		</table>
		
		<input type="submit" value="Save"  />
	</form>
</div>