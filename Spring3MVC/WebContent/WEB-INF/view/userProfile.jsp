<!-- Code for Personal Details -->


	<div flex="100" layout="row" class="md-padding md-margin" id="profile"
		layout-align="center center" layout-padding ng-controller="profileCtrl">
		<div flex="30" flex-sm="100" class="md-whiteframe-z2"
			style="background: #fff;">
			<div layout-align="center">
				<div layout="row" layout-align="center center">
					<h2 class="md-display-4">Profile</h2>
				</div>
				<md-content class="md-padding">
				<div layout="column">
					<form ng-submit="$event.preventDefault()" name="searchForm">
						<md-input-container flex> <label>Name</label>
						<input type="text" /> </md-input-container>
						<p>
							<span style="font-weight: 700">Gender:</span> <span
								class="radioValue">{{ data.group1 }}</span>
						</p>
						<md-radio-group ng-model="data.group1"> <md-radio-button
							value="Male" class="md-primary">Male</md-radio-button> <md-radio-button
							value="Female"> Female </md-radio-button> </md-radio-group>
						<md-input-container flex> <label>Email</label>
						<input type="email" /> </md-input-container>
						<md-input-container flex> <label>Contact
							Number</label> <input type="text" /> </md-input-container>
						<md-input-container flex> <label>Address</label>
						<textarea ng-model="user.biography" columns="1" md-maxlength="150"></textarea>
						</md-input-container>
					</form>
					<div layout="row" flex layout-align="center center" layout-padding>
						<md-button class="md-primary md-raised" ng-click = "showAlert($event)">Submit</md-button>
					</div>

				</div>
				</md-content>
			</div>
		</div>
	</div>
	<md-content layout-padding style="padding: 24px;">
    <p>Lorem ipsum dolor sit amet, ne quod novum mei. Sea omnium invenire mediocrem at, in lobortis conclusionemque nam. Ne deleniti appetere reprimique pro, inani labitur disputationi te sed. At vix sale omnesque, id pro labitur reformidans accommodare, cum labores honestatis eu. Nec quem lucilius in, eam praesent reformidans no. Sed laudem aliquam ne.</p>
    <p>
Facete delenit argumentum cum at. Pro rebum nostrum contentiones ad. Mel exerci tritani maiorum at, mea te audire phaedrum, mel et nibh aliquam. Malis causae equidem vel eu. Noster melius vis ea, duis alterum oporteat ea sea. Per cu vide munere fierent.
    </p>
    <p>
Ad sea dolor accusata consequuntur. Sit facete convenire reprehendunt et. Usu cu nonumy dissentiet, mei choro omnes fuisset ad. Te qui docendi accusam efficiantur, doming noster prodesset eam ei. In vel posse movet, ut convenire referrentur eum, ceteros singulis intellegam eu sit.
    </p>
    <p>
Sit saepe quaestio reprimique id, duo no congue nominati, cum id nobis facilisi. No est laoreet dissentias, idque consectetuer eam id. Clita possim assueverit cu his, solum virtute recteque et cum. Vel cu luptatum signiferumque, mel eu brute nostro senserit. Blandit euripidis consequat ex mei, atqui torquatos id cum, meliore luptatum ut usu. Cu zril perpetua gubergren pri. Accusamus rationibus instructior ei pro, eu nullam principes qui, reque justo omnes et quo.
    </p>
    <p>
Sint unum eam id. At sit fastidii theophrastus, mutat senserit repudiare et has. Atqui appareat repudiare ad nam, et ius alii incorrupte. Alii nullam libris his ei, meis aeterno at eum. Ne aeque tincidunt duo. In audire malorum mel, tamquam efficiantur has te.
    </p>
    <p>
Qui utamur tacimates quaestio ad, quod graece omnium ius ut. Pri ut vero debitis interpretaris, qui cu mentitum adipiscing disputationi. Voluptatum mediocritatem quo ut. Fabulas dolorem ei has, quem molestie persequeris et sit.
    </p>
    <p>
Est in vivendum comprehensam conclusionemque, alia cetero iriure no usu, te cibo deterruisset pro. Ludus epicurei quo id, ex cum iudicabit intellegebat. Ex modo deseruisse quo, mel noster menandri sententiae ea, duo et tritani malorum recteque. Nullam suscipit partiendo nec id, indoctum vulputate per ex. Et has enim habemus tibique. Cu latine electram cum, ridens propriae intellegat eu mea.
    </p>
    <p>
Duo at aliquid mnesarchum, nec ne impetus hendrerit. Ius id aeterno debitis atomorum, et sed feugait voluptua, brute tibique no vix. Eos modo esse ex, ei omittam imperdiet pro. Vel assum albucius incorrupte no. Vim viris prompta repudiare ne, vel ut viderer scripserit, dicant appetere argumentum mel ea. Eripuit feugait tincidunt pri ne, cu facilisi molestiae usu.
    </p>
    <p>
Qui utamur tacimates quaestio ad, quod graece omnium ius ut. Pri ut vero debitis interpretaris, qui cu mentitum adipiscing disputationi. Voluptatum mediocritatem quo ut. Fabulas dolorem ei has, quem molestie persequeris et sit.
    </p>
    <p>
Est in vivendum comprehensam conclusionemque, alia cetero iriure no usu, te cibo deterruisset pro. Ludus epicurei quo id, ex cum iudicabit intellegebat. Ex modo deseruisse quo, mel noster menandri sententiae ea, duo et tritani malorum recteque. Nullam suscipit partiendo nec id, indoctum vulputate per ex. Et has enim habemus tibique. Cu latine electram cum, ridens propriae intellegat eu mea.
    </p>
    <p>
Duo at aliquid mnesarchum, nec ne impetus hendrerit. Ius id aeterno debitis atomorum, et sed feugait voluptua, brute tibique no vix. Eos modo esse ex, ei omittam imperdiet pro. Vel assum albucius incorrupte no. Vim viris prompta repudiare ne, vel ut viderer scripserit, dicant appetere argumentum mel ea. Eripuit feugait tincidunt pri ne, cu facilisi molestiae usu.
    </p>
  </md-content>
<!-- End of Personal Details page -->
