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
/*===============================Controller for login page=============================================*/
/*By using then() */

function loginCtrl($scope, $http, $mdToast, $mdDialog) {

	$scope.url = "submitUser";
	$scope.method = "POST";
	$scope.submitUser = function() {
		$http.post({
			url : $scope.url,
			method : $scope.method
		}).then(function(response) {

			var data = response.data;
			var status = response.status;
			$mdDialog.show($mdDialog.alert().title('congratulations'))

		}), function(response) {
			var status = response.status;
		}
		/* 
		 var url = "/Spring3MVC/resources/json/users.json";
		$scope.submitUser = function(){
			//$scope.names={};
			$http.get(url).success(function(myData){
				 //alert(JSON.stringify(myData.users));
				//$scope.names =  $.parseJSON(JSON.parse(thisdata));
				$scope.names = myData.users;
				//console.log("data displayed" + myData.users);
			})
			.error(function(response){
				console.log("no data found");
			})
		 */

	}

	$scope.resetUser = function() {
		$scope.user.userName = undefined;
		$scope.user.password = undefined;
		$mdToast.showSimple('data is cleared');
	}

};

/*By using success and error*/
/*angular.module('cisco_capital').controller('loginCtrl' , ['$scope','$http',function($scope,$http){
 $scope.submitUser = function(){
 $scope.method = 'GET';
 $scope.url = "/Spring3MVC/resources/json/users.json";
 $http({method:$scope.method,url:$scope.url})
 .success(function(data,status){
 $scope.data = data;
 $scope.status = status;
 console.log(data);
 console.log(status);
 }).error(function(data,status){
 $scope.data = data;
 $scope.status = status;
 console.log(status);
 });
 } }])*/

/*===============================End of Controller for login page=============================================*/

function regCtrl($scope, $http, $mdToast) {
	$scope.toastPosition = {
		bottom : false,
		top : true,
		left : false,
		right : true
	};
	$scope.message = "hi";
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
					$scope.status = status;
					console.log("retrieved data" + data);
					console.log("status" + status);
					$mdToast.show($mdToast.simple().content('data is saved')
							.hideDelay(1000))
				}).error(function(data, status) {
			console.log("error occurred" + status);
		})
	}
	
	$scope.reset = function(){
		//alert(params);
		$scope.newUser = undefined;
	}
}

/*=======================Controller for edit page======================*/

function editController($scope, $http) {
	$scope.editForm = function() {
		$scope.message = "Its working fine";
		alert("working");
		$scope.url = "editDetails";
		$scope.method = "POST";
		$scope.editUser = {};
		$http({
			method : $scope.method,
			url : $scope.url,
			params : $scope.editUser
		}).success(function(data, status) {
			$scope.data = data;
			$scope.status = status;

		}).error(function(data, status) {
			console.log("error while retrieving");
		})
	}
}

function profileCtrl($scope, $mdDialog) {
	$scope.alert = '';
	$scope.showAlert = function(ev) {
		$mdDialog.show($mdDialog.alert().title('Congratulations!').content(
				'You have successfully registered for the event.').ariaLabel(
				'Alert Dialog Demo').ok('Got it!').targetEvent(ev));
	};
}
