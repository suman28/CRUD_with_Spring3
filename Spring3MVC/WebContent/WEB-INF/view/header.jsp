
	<div ng-controller="AppCtrl">
        <md-toolbar>
          <div class="md-toolbar-tools" flex layout="row">
            <div flex="20">
              <md-button ng-click="toggleLeft()" class="md-primary md-mini" 
              layout-padding style="border-radius:50%;" aria-label="leftMenu">
                <i class="fa fa-bars white"></i>
              </md-button>
          </div>
          <div layout="row" flex="60" layout-align="center center" hide-sm>
             <div><h2>
              <!-- <span>CISCO CAPITAL</span> -->
              <img src="<%=request.getContextPath()%>/resources/images/ciscologo.png"/>
            </h2>
            <span flex></span></div>
          </div>
              <div flex="20">
               <md-button class="md-fab md-mini md-primary" aria-label="signin" hide-sm>
                <a href="#/signin"><i class="fa fa-sign-in"></i></a>
                <md-tooltip>sign in</md-tooltip>
              </md-button>
               <md-button>
               <img src="<%=request.getContextPath()%>/resources/images/avatar5.png" 
               height="40px" width="40px" class="img-circle">
               <span class="md-display-1">Suman</span>
                </md-button>
              </div>
       	 </div>
        </md-toolbar>
      <div layout="column">
  <section layout="row" flex>
    <md-sidenav class="md-sidenav-left md-whiteframe-z2" id="sidenav" md-component-id="left" style="width:270px;min-width:250px;">
      <md-toolbar class="md-theme-indigo" layout-padding>
        <!-- <h2 class="md-display-1">CISCO CAPITAL</h2> -->
        <div layout="row" layout-align="center"layout-padding>
        <img src="<%=request.getContextPath()%>/resources/images/capitallogo.png" width="100px"/>
        </div>
        <div layout="row" flex class="space-around">
	        <div flex="30" layout-padding >
	        <img src="<%=request.getContextPath()%>/resources/images/avatar04.png" 
	        class="img-circle" height="80px" width="80px"/></div>
	        <div flex="70" style="padding-left:20px;">
	        <h3 class="md-headline">Suman K</h3>
	        <h4 class="md-subhead" style="font-size:14px;">Designation</h4></div>
        </div>
         <md-content ng-controller="LeftCtrl">
	        <md-button ng-click="close()" class="md-primary md-fab md-mini md-raised md-fab-top-right" 
	        aria-label="close">
		          <i class="fa fa-close" style="color:white;"></i>
		        </md-button>
	      </md-content> 
        
      </md-toolbar>
      <ul class="nav nav-pills nav-stacked" layout-padding>
        <li><a href="#/login"><span class="fa fa-home "></span><span class="sidemenu" layout-padding>Home</span></a></li>
        <li><a href="#/profile"><span class="fa fa-user"></span><span class="sidemenu" layout-padding>Profile</span></a></li>
        <li><a href="#/registration"><span class="fa fa-table"></span><span class="sidemenu" layout-padding>Contact Us</span></a></li>
      </ul>
   	 </md-sidenav>
 	</section>
	</div>    <!-- End of sidenav -->
 </div>
