<!-- Start of Login page -->

 <div flex="100" class="md-padding md-margin" id="login" 
 layout="row" layout-align="center center" layout-padding data-ng-controller="loginCtrl">
  <div class="md-whiteframe-z2" flex="30" flex-sm="100" style="background:#fff;">
    <div  layout="row" layout-align="center">
      <h2 class="md-display-4">Login</h2>
     </div>
     <form novalidate name="loginForm" >
    <div layout="column">
      <md-input-container flex>
        <label>User Name</label>
        <input type="text" name="userName" ng-model="user.userName" id="userName" ng-minlength="3" ng-maxlenghth="20" required />
        <div ng-show="lognForm.$submitted || loginForm.userName.$touched">
        	<small ng-show="loginForm.userName.$error.required">UserName is required</small>
        </div>
      </md-input-container>
      <md-input-container flex>
        <label>Password</label>
        <input type="password" name="password" ng-model="user.password" id="password" required/>
      </md-input-container>
     </div>
    <div layout="row" flex layout-align="center" layout-padding>
      <md-button class="md-primary md-raised" ng-click="submitUser()">Submit</md-button> &nbsp;&nbsp;
      <md-button class="md-accent md-raised" ng-click="resetUser()">Reset</md-button>&nbsp;&nbsp;
    </div>
   
    <div layout="row" flex layout-align="space-around">
    	<a href="#/registration">New User? Register</a>
    	<a href="getRegisteredUsers">Forgot Password?</a>
    </div>
  </form>
</div>
</div>
 
<!-- <table border=2>
   <tr>
   	  <th>User ID</th>
      <th>FirstName</th>
      <th>Last Name</th>
	  <th>User Name</th>
   </tr>
   <tr data-ng-repeat="user in names">
   	  <td>{{ user.userId }}</td>
      <td>{{ user.firstName }}</td>
      <td>{{ user.lastName }}</td>
      <td>{{user.userName}}</td>
	  
   </tr>
</table> -->
<!-- <div ng-controller = "parentCtrl" >
    		<input type="text" ng-init="message = 'test'"/>
    		<md-button ng-click = "notifyMe(message)">click</md-button>
    	</div>
    	
</div> -->
    	
 
<!-- End of login page -->
