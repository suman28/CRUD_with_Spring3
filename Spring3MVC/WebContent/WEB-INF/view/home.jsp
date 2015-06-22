<html ng-app="cisco_capital">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css">
    <!--  <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/angular_material/0.8.3/angular-material.min.css"> -->
	<!--  <link rel="stylesheet" href="bower_components/lumx/dist/lumx.css">-->
	<!-- <link rel="stylesheet" href="bower_components/mdi/materialdesignicons.css">
	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700"> -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/angular-material.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/mfb.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/index.css">
   <!--  <link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css"> -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css">
    <link href="<%=request.getContextPath()%>/resources/css/nsPopover.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/styles.css">
</head>

 <body>
 
	<%@include file="header.jsp" %>

<div ng-controller="TabCtrl" class="demo">
 <md-tabs md-center-tabs md-stretch-tabs md-border-bottom md-selected="selectedIndex" >
     <md-tab>  <a href="#/login" ng-class="{ active: isActive('/login')}">Home</a> </md-tab> 
     <md-tab>  <a href="#/profile"  ng-class="{ active: isActive('/profile')}">About</a> </md-tab>
   <md-tab>  <a href="#/registration"  ng-class="{ active: isActive('/registration')}">Contact</a> </md-tab>
     
   <!--   <md-tab>  <a href="#/registration"  ng-class="{ active: isActive('/registration')}">Registration</a> </md-tab> -->
  </md-tabs>
</div>

<!-- <div ng-controller="TabCtrl">
<md-tabs md-stretch-tabs md-selected="0">
    <md-tab ng-repeat="tab in tabs" md-on-select="switchTab($index)" label="{{tab}}">
    
     </md-tab>
</md-tabs>
</div> -->
 
<!-- ng-view for displaying content -->

<md-content layout-padding>

	<div id="contentWrapper" ng-view>
	
	</div>
</md-content>

  <%@include file="mfb.jsp" %>
  <script src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>
  <!-- <script src="js/velocity.min.js"></script>
  <script src="js/moment.min.js"></script> -->
  <script src="<%=request.getContextPath()%>/resources/js/angular.min.js"></script>
<!--  <script src="js/lumx.js"></script> -->
 <script src="<%=request.getContextPath()%>/resources/js/angular-aria.js"></script>
 <script src="<%=request.getContextPath()%>/resources/js/mfb-directive.js"></script>
  <script src="<%=request.getContextPath()%>/resources/js/angular-animate.js"></script>
  <!-- <script src="js/fsm-sticky-header.js"></script> -->
  <script src="<%=request.getContextPath()%>/resources/js/angular-material.js"></script>
  <script src="<%=request.getContextPath()%>/resources/js/angular-route.js"></script>
  <!-- <script src="js/nsPopover.js"></script> -->
  <script src="<%=request.getContextPath()%>/resources/js/controllers.js"></script>
  <script src="<%=request.getContextPath()%>/resources/js/app.js"></script>
  </body>
</html>
