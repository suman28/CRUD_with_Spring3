/*Controller for sidenavs*/

function AppCtrl($scope, $timeout, $mdSidenav, $mdUtil, $log) {
	$scope.toggleLeft = buildToggler('left');
	$scope.toggleRight = buildToggler('right');
	/**
	 * Build handler to open/close a SideNav; when animation finishes
	 * report completion in console
	 */
	function buildToggler(navID) {
		var debounceFn = $mdUtil.debounce(function() {
			$mdSidenav(navID).toggle().then(function() {
				$log.debug("toggle " + navID + " is done");
			});
		}, 300);
		return debounceFn;
	}
};

/*controller for left sidenav*/
function LeftCtrl($scope, $timeout, $mdSidenav, $log) {
	$scope.close = function() {
		$mdSidenav('left').close().then(function() {
			$log.debug("close LEFT is done");
		});
	};
};

/*controller for right sidenav*/
function RightCtrl($scope, $timeout, $mdSidenav, $log) {
	$scope.close = function() {
		$mdSidenav('right').close().then(function() {
			$log.debug("close RIGHT is done");
		});
	};
};

/*==============================End of controllers for sidenav==========================*/


/*===============================controller for tab switching=============================================*/

function TabCtrl($scope, $location, $log) {
	//$scope.selectedIndex = 0;
	$scope.isActive = function(viewLocation) {
		return viewLocation === $location.path();
	};
	$scope.$watch('selectedIndex', function(current, old) {
		switch (current) {
		case 0:
			$location.url("/login");
			break;
		case 1:
			$location.url("/profile");
			break;
		case 2:
			$location.url("/registration");
			break;
		case 3:
			$location.url("/list");
			break;
		case 4:
			$location.url("/details");
			break;

		}
	});
};
/*function TabCtrl($scope,$location){
 //Define the titles of your tabs
 $scope.tabs = ["AboutUs", "Profile","Registration"];

 // Change the tab
 $scope.switchTab = function(index) {
 switch(index) {
 case 0: $location.path('/login');break;
 case 1: $location.path('/profile');break;
 case 2: $location.url('/registration'); break;
 }
 }
 };*/

function profileCtrl($scope, $mdDialog) {
	$scope.alert = '';
	$scope.showAlert = function(ev) {
		$mdDialog.show($mdDialog.alert().title('Congratulations!').content(
				'You have successfully registered for the event.').ariaLabel(
				'Alert Dialog Demo').ok('Got it!').targetEvent(ev));
	};
}



/*===============================Controller for login page=============================================*/
/*By using then() */

function loginCtrl($scope, $http, $mdToast, $mdDialog) {

	$scope.url = "submitUser";
	$scope.method = "POST";
	$scope.user = {};
	$scope.submitUser = function() {
		alert("submit clicked")
		$http.post({
			url : $scope.url,
			method : $scope.method,
			params : $scope.user
		}).then(function(response) {
			var data = response.user;
			alert("inside then");
			$mdDialog.show($mdDialog.alert().title('congratulations'))

		}), function(response) {
			var status = response.status;
			alert("inside error");
		}
	}	 
		/* var url = "/Spring3MVC/resources/json/users.json";
		$scope.submitUser = function(){
			$scope.names={};
			$http.get(url).success(function(myData){
				 alert(JSON.stringify(myData.users));
				//$scope.names =  $.parseJSON(JSON.parse(thisdata));
				$scope.names = myData.users;
				console.log("data displayed" + myData.users[0].firstName);
			})
			.error(function(response){
				console.log("no data found");
			})
		}
*/
		$scope.resetUser = function() {
			$scope.user.userName = undefined;
			$scope.user.password = undefined;
			$mdToast.showSimple('data is cleared');
		}

};



/*===============================End of Controller for login page=============================================*/


function regCtrl($scope, $http, $mdToast) {
	$scope.toastPosition = {
		bottom : false,
		top : true,
		left : false,
		right : true
	};
	$scope.url = "saveUsersData";
	$scope.method = "POST";
	$scope.newUser = {};
	$scope.submitForm = function() {

		$http({
			method : $scope.method,
			url : $scope.url,
			params : $scope.newUser
		}).success(
				function(data, status, headers, config) {
					$scope.data = data;
					$scope.firstName = data.firstName;
					//$scope.names = data.newUser;
					console.log("retrieved data" + data);
					console.log("data from names" + data.params);
					console.log("status" + status);
					$mdToast.show($mdToast.simple()
							.content('data is saved')
							.hideDelay(1000))
				}).error(function(data, status) {
			console.log("error occurred" + status);
		})
	}
	
	$scope.reset = function(){
		$scope.newUser = undefined;
	}
}

/*================Controller for getting the individual user details==============*/




function sharedService(){
	
	return {};
}


function resultController($scope,$http,$rootScope,$location,$routeParams,sharedService){
	$scope.message = "List Of Users";
	$scope.users = {};
	$scope.visible = 'true';
	$scope.users = sharedService;
	
	$scope.$routeParams = $routeParams;
	$http({
			url: "getListOfUsers",
			method:"POST",
			params : $scope.users
			}).success(function(data,status){
				$scope.users = data;
				console.log("inside success block");
			}).error(function(){
				console.log("error");
			})
	
			
	$rootScope.getUserInfo = function(userId){
		//alert(userId);
		$scope.visible = true;
		$http({
			method:"POST",
			url :"getDetailsOfUser/"+userId,
		}).success(function(data,status){
		
			$scope.usersData = data;
			$scope.visible = true;
			console.log($scope.usersData);
			console.log("success");
		}).error(function(data,status){
			console.log("error");
			$scope.visible = false;
		})
	}
	
	$scope.editUserData = function(userId){
		//alert(userId);
		//$location.path("/formData");
		
		$scope.editMessage ="Edit the Information of User";
		$http({
			method:"POST",
			url :"getEditableUsersData/"+userId,
		}).success(function(data,status){
		
			$scope.editedUser = data;
			$scope.visible = true;
			console.log($scope.editedUser);
			console.log("success");
		}).error(function(data,status){
			console.log("error");
			$scope.visible = false;
		})
	}
	
	
	$scope.url = "saveEditedDetails";
	$scope.method = "POST";
	$scope.editedUser = {};
	$scope.saveEditedData = function(){
		
		$http({
			method:$scope.method,
			url:$scope.url,
			params:$scope.editedUser
		}).success(function(data){
			$scope.data = data;
			alert("data is successfully updated");
			//$location.path("/list");
			console.log("saved data after editing"+data);
		}).error(function(data,status){
			console.log(status);
		})
	}
	
	//$scope.url = "deleteUserDetails";
	$scope.method = "POST";
	$scope.editedUser = {};
	$scope.deleteUserData = function(userId){
		alert('delete');
		$http({
			method:$scope.method,
			url:"deleteUserDetails/"+userId,
			params:$scope.editedUser
		}).success(function(data){
			$scope.data = data;
			console.log("data is deleted");
		}).error(function(data,status){
			console.log(status);
		})
	}
	$scope.clearEditedData = function(){
		$scope.editedUser = {};
	}
	
}



/*=======================Controller for edit page======================*/

function editController($scope, $http,$routeParams) {
	$scope.params = $routeParams;
	
	alert($routeParams.params);
	/*console.log("user id from routeParams" + $routeParams.userId);
	console.log("user id "+$scope.userId);
	$scope.message = "Edit the Details of user";
	$scope.userId = $routeParams.userId;
	$http({
			
			url: "getEditableUsersData/"+$scope.userId,
			method:"POST",
			}).success(function(data,status){
				$scope.editUser = data;
				console.log(data);
				console.log("inside success block");
			}).error(function(){
				console.log("error");
			})
	*/
}

