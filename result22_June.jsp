<md-content>
<div data-ng-controller="resultController" layout-padding>
	<h1>{{message}}</h1>
	<form>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>USER ID</th>
					<th>First Name</th>
					<th colspan=2></th>
					<th colspan=2></th>
				</tr>
			</thead>
			<tbody>
				<tr data-ng-repeat="user in users">
					<td><a href="" data-ng-click="getUserInfo(user.userId)"> <span
							data-ng-model="users.userId">{{ user.userId }}</span></a></td>
					<td><span data-ng-model="users.firstName">{{
							user.firstName }}</span></td>
					<td><a href="" data-ng-click="editUserData(user.userId)">Edit</a></td>
					<td><a data-ng-click="deleteUserData(user.userId)" href="">Delete</a></td>
				</tr>

			</tbody>
		</table>
	</form>
	<div data-ng-show='{{visible}}'>
		<h2>Submitted User Information</h2>
		<table class="table table-striped">
			<tbody>
				<tr>
				<td>First Name</td>
					<td>{{usersData.userId}}</td></tr>
				<tr><td>Last Name</td>
					<td>{{usersData.firstName}}</td></tr>
				<tr>
					<td>Last Name</td>
					<td>{{usersData.lastName}}</td></tr>
				<tr>
					<td>Email ID</td>
					<td>{{usersData.email}}</td></tr>
				<tr>
					<td>Contact Number</td>
					<td>{{usersData.contactNo}}</td>
				</tr>
			</tbody>
		</table>
	</div>
	
	<div>
	<h1>{{editMessage}}</h1>
	{{editedUser}}
	<form name="editForm">
		<table class="table table-striped">
			<tbody>
				<tr>
					<td>First Name</td>
					<td><input type="text" name="firstName" data-ng-model="editedUser.firstName"></td>
				<tr>
					<td>Last Name</td>
					<td><input type="text" name="lastName" data-ng-model="editedUser.lastName"></td>
				</tr>
				<tr>
					<td>User ID</td>
					<td><input disabled type="text" name="userId" data-ng-model="editedUser.userId"></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="text" name="password" data-ng-model="editedUser.password"></td>
				</tr>
				<tr>
					<td>Re Password</td>
					<td><input type="text" name="rePassword" data-ng-model="editedUser.rePassword"></td>
				</tr>
				<tr>
					<td>Email ID</td>
					<td><input type="text" name="email" data-ng-model="editedUser.email"></td>
				</tr>
				<tr>
					<td>Contact Number</td>
					<td><input type="text" name="contactNo" data-ng-model="editedUser.contactNo"></td>
				</tr>
				<tr>
					<td><label>User Name</label></td>
					<td><md-input-container> <input
							type="text" name="userName" 
							data-ng-model="editedUser.userName"></td>
					</md-input-container>
				</tr>
			</tbody>
		</table>

		<md-button ng-click="saveEditedData()">Save</md-button>&nbsp;&nbsp;
		<md-button ng-click="clearEditedData()">Reset</md-button>
	</form>
</div>
</div>
</md-content>