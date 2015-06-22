
 angular.module('cisco_capital', ['ngRoute','ngMaterial','ng-mfb']);
 
 angular.module('cisco_capital').controller('AppCtrl', AppCtrl);
 angular.module('cisco_capital').controller('LeftCtrl', LeftCtrl);
 angular.module('cisco_capital').controller('RightCtrl', RightCtrl);
 angular.module('cisco_capital').controller('TabCtrl', TabCtrl);
 angular.module('cisco_capital').controller('loginCtrl' , loginCtrl);
 angular.module('cisco_capital').controller('regCtrl' , regCtrl);
 angular.module('cisco_capital').controller('profileCtrl' , profileCtrl);
 angular.module('cisco_capital').controller('editController' , editController);
 /*angular.module('cisco_capital').factory('basket',basket);*/
 /*angular.module('cisco_capital').controller('parentCtrl',parentCtrl);
 angular.module('cisco_capital').factory('notify',notify);*/
 angular.module('cisco_capital').config(function($routeProvider) {
		$routeProvider
		.when("/login", {templateUrl : "login" })
		.when("/profile", {templateUrl : "userProfile"})
		.when("/registration", {templateUrl : "userRegistration"})
		.when("/signin",{templateUrl:"login"})
		.otherwise({redirectTo : '/login'});
	});

angular.module('cisco_capital').config(function($mdThemingProvider){
	/*$mdThemingProvider.theme('default')
	.primaryPalette("indigo")
	.accentPalette("pink")
	.warnPalette("red")
	*/

    var inboxBlue = $mdThemingProvider.extendPalette('blue', {'500': '3c80f6'});
  // Register the new color palette
  $mdThemingProvider.definePalette('inboxBlue', inboxBlue);
  // Use that theme for the primary intentions
  $mdThemingProvider.theme('default')
    .primaryPalette('inboxBlue')
    .accentPalette("pink")
	.warnPalette("red")
});
 
