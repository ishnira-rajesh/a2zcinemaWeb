<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en-US">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

<title>A2zcinema | Aboutus</title>
<!-- BOOTSTRAP STYLES-->
<link href="static/assets/css/bootstrap2.css" rel="stylesheet" />
<link href="static/assets/css/font-awesome.css" rel="stylesheet" />
<!-- CUSTOM STYLES-->
<link href="static/assets/css/custom.css" rel="stylesheet" />
<!-- TABLE STYLES-->
<link href="static/assets/js/dataTables/dataTables.bootstrap.css"
	rel="stylesheet" />
<script src="static/assets/js/jquery-1.10.2.js"></script>
<!-- BOOTSTRAP SCRIPTS -->
<script src="static/assets/js/bootstrap.min.js"></script>
<!-- DATA TABLE SCRIPTS -->
<script src="static/assets/js/dataTables/jquery.dataTables.js"></script>
<script src="static/assets/js/dataTables/dataTables.bootstrap.js"></script>

<script>
	$(document).ready(function() {
		$('#dataTables-example').dataTable();
	});
</script>
<script>
	function showhidenews() {
		var div = document.getElementById("latestNews");
		if (div.style.display !== "none") {
			div.style.display = "none";
		} else {
			div.style.display = "block";
		}
	}
	function showhideevents() {
		var div = document.getElementById("latestevents");
		if (div.style.display !== "none") {
			div.style.display = "none";
		} else {
			div.style.display = "block";
		}
	}
	function showhidemovie() {
		var div = document.getElementById("movie");
		if (div.style.display !== "none") {
			div.style.display = "none";
		} else {
			div.style.display = "block";
		}
	}
	function showhideaudition() {
		var div = document.getElementById("audition");
		if (div.style.display !== "none") {
			div.style.display = "none";
		} else {
			div.style.display = "block";
		}
	}
	function delete_rownews(no) {
		document.getElementById("rownew" + no + "").outerHTML = "";
	}
	function delete_rowevents(no) {
		document.getElementById("rowevent" + no + "").outerHTML = "";
	}
	function delete_rowmovies(no) {
		document.getElementById("rowmovie" + no + "").outerHTML = "";
	}
	function delete_rowaudition(no) {
		document.getElementById("rowaudition" + no + "").outerHTML = "";
	}
</script>
<link rel="stylesheet" href="static/assets/css/app.css" id="maincss">
<link rel="stylesheet" href="static/mainfiles/js/site-demos.css"></link>
<link rel="stylesheet" href="static/mainfiles/css/style.css">
<script type="text/javascript" src="static/mainfiles/js/angular.js"></script>
<script type="text/javascript" src="static/mainfiles/js/ngStorage.js"></script>
<script src="static/js/app.js"></script>

<script type="text/javascript" src="static/mainfiles/js/plugins.js"></script>
<script type="text/javascript" src="static/mainfiles/js/custom.js"></script>

<script src="static/admin/js/dashboard/adminDashboardController.js"></script>
<script src="static/admin/js/event/events.js"></script>

<link rel="stylesheet" href="static/components/toastr/toastr.min.css">
<script src="static/components/toastr/toastr.min.js"></script>
<link rel="stylesheet" href="static/components/css/style.css">
<script src="static/components/aws-sdk-js/dist/aws-sdk.min.js"></script>
<script src="static/js/aws/controllers.js"></script>
<script src="static/js/aws/directives.js"></script>

<style type="text/css">
.myrow-container {
	margin: 5px;
}
</style>
</head>
<body ng-app="profileApp">
	<div class="sidebar-menu-container" id="sidebar-menu-container">


		<div class="sidebar-menu-inner">
			<header class="site-header">
				<div id="main-header" class="main-header header-sticky">
					<div class="inner-header clearfix" id="wrapper">
						<nav class="main-navigation pull-left hidden-xs hidden-sm">
							<ul>
							    <li><a rel="nofollow" href="#"><img src="static/mainfiles/images/logo2.png" /></a></li>
								<li><a href="${pageContext.request.contextPath}/index">Home</a></li>
								<li><a href="${pageContext.request.contextPath}/aboutus">About
										US</a></li>
								<li><a href="#" class="has-submenu">Services</a>
									<ul class="sub-menu">
										<li><a
											href="${pageContext.request.contextPath}/moviemaking">Movie
												Making</a></li>
										<li><a
											href="${pageContext.request.contextPath}/scriptwriting">Script
												Writing</a></li>
										<li><a
											href="${pageContext.request.contextPath}/storyboarding">Story
												Boarding</a></li>
										<li><a
											href="${pageContext.request.contextPath}/bannerposting">Poster
												and Banner Designing</a></li>
										<li><a
											href="${pageContext.request.contextPath}/onlinedistribution">Online
												Distribution</a></li>
									</ul></li>
								<li><a
									href="${pageContext.request.contextPath}/crowdfunding">Crowd
										Funding</a></li>
								<li><a
									href="${pageContext.request.contextPath}/moviebooking">Movie
										Tickets Booking</a></li>
								<li><a
									href="${pageContext.request.contextPath}/onlineaudition">Online
										Audition</a></li>
								<li><a href="${pageContext.request.contextPath}/contact">Contact
										us</a></li>
								<li>
									<div class="text-center" ng-controller="AdminDashController">
										<div ng-if="aboutus == 1">
										     <span ng-if="loginAsId == 4">
												<button type="submit" class="btn btn-success mt-lg"
													title="Profile">
													<a href="${pageContext.request.contextPath}/adminDashboard">Admin</a>
												</button>
									         </span>&nbsp;
									         
									         <button type="submit" class="btn btn-success mt-lg"
									              ng-click="logout()" title="Logout">
									              <a href="javascript:()"> Logout</a>
									         </button>
										</div>
										
									</div>
								</li>
							</ul>
						</nav>
					</div>
				</div>
			</header>
		</div>

		<div class="panel panel-default">
			<nav class="navbar navbar-default navbar-cls-top " role="navigation"
				style="margin-bottom: 0">
				<div class="navbar-header">
				</div>
			</nav><br><br>
			<!-- /. NAV TOP  -->
			<nav class="navbar-default navbar-side" role="navigation">
				<div class="sidebar-collapse">
					
					<ul class="nav" id="main-menu">
					   <li><a class="active-menu text-center" 
					   href="${pageContext.request.contextPath}/adminDashboard">Admin</a></li>
						<li class="text-center"><img
							src="static/mainfiles/img/mSanviSundar.jpg"
							class="user-image img-responsive" /></li>
						<li> <a href="${pageContext.request.contextPath}/adminDashboard"
							><i class="fa fa-dashboard fa-2x"></i>
								Dashboard</a></li>
						<li><a   href="${pageContext.request.contextPath}/adminProfileupload"><i
								class="fa fa-desktop fa-2x"></i> Profile Upload</a></li>

						<li><a  href="${pageContext.request.contextPath}/adminUrllink"><i
								class="fa fa-qrcode fa-2x"></i> Create Event</a></li>
						<li><a
							href="${pageContext.request.contextPath}/adminPostervideo"><i
								class="fa fa-desktop fa-2x"></i>Poster & Trailer Upload</a></li>
								<li><a 
							href="${pageContext.request.contextPath}/adminCrowfunding"><i
								class="fa fa-desktop fa-2x"></i>Crowd Funding</a></li>
								<li><a
							href="${pageContext.request.contextPath}/adminMovieDistribution"><i
								class="fa fa-desktop fa-2x"></i>Movie Distribution</a></li>
						<li><a class="active-menu" href="${pageContext.request.contextPath}/adminReport"><i
								class="fa fa-bar-chart-o fa-2x"></i> Report Generation</a></li>
					</ul>
				</div>
			</nav>
			<!-- /. NAV SIDE  -->
			<div id="page-wrapper">

				<div class="row">
					<div class="col-md-12">
						<!-- Advanced Tables -->
						<div class="panel panel-default">
							<div class="panel-heading ">
								Generate Excel Sheet
							</div>
							<div style="height:500px">
							         
										<div>
										<div class="form-group col-md-3">
                                            <label>Export Data :</label>
                                            </div>
                                            <div class="form-group col-md-6">
                                            <select class="form-control" >
                                                 <option value="Daily">Daily</option>
												<option value="Weekly">Weekly</option>
												<option value="Monthly">Monthly</option>
                                            </select>
                                            
                                        </div>
                                        </div>
							<div class="col-md-12">
								<form action="excel.php" method="post">

									<div class="control-group" >
										<div class="controls">
											<a type="submit" id="export" name="export"
												class="btn btn-success" data-loading-text="Loading...">Export
												MySQL Data to CSV/Excel File</a>
										</div>
									</div>
								</form>

							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /. PAGE INNER  -->
		</div>
		<!-- /. PAGE WRAPPER  -->
	</div>


	<nav class="sidebar-menu slide-from-left">
		<div class="nano">
			<div class="content">
				<nav class="responsive-menu">
					<ul>
						<li><a href="${pageContext.request.contextPath}/index">Home</a></li>
						<li><a href="${pageContext.request.contextPath}/aboutus">About
								US</a></li>
						<li class="menu-item-has-children"><a href="#">Services</a>
							<ul class="sub-menu">
								<li><a
									href="${pageContext.request.contextPath}/moviemaking">Movie
										Making</a></li>
								<li><a
									href="${pageContext.request.contextPath}/scriptwriting">Script
										Writing</a></li>
								<li><a
									href="${pageContext.request.contextPath}/storyboarding">Story
										Boarding</a></li>
								<li><a
									href="${pageContext.request.contextPath}/bannerposting">Poster
										and Banner Designing</a></li>
								<li><a
									href="${pageContext.request.contextPath}/onlinedistribution">Online
										Distribution</a></li>
							</ul></li>
						<li><a href="${pageContext.request.contextPath}/crowdfunding">Crowd
								Funding</a></li>
						<li><a href="${pageContext.request.contextPath}/moviebooking">Movie
								Tickets Booking</a></li>
						<li><a
							href="${pageContext.request.contextPath}/onlineaudition">Online
								Audition</a></li>
						<li><a href="${pageContext.request.contextPath}/contact">Contact</a></li>
						<li><div class="text-center">
								<button type="submit" class="btn btn-success mt-lg"
									id="loginPop" title="Login">Login</button>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<button type="submit" class="btn btn-success mt-lg"
									id="registerSocial" title="Register">Register</button>
							</div></li>
					</ul>
				</nav>
			</div>
		</div>
	</nav>

	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="spacing"></div>
					<div class="col-md-7">
						<!-- <div class="three spacing"></div> -->
						<p>
								Copyright &copy; 2016 A2ZCinemaWorld | Powered By : <a rel="nofollow" target="_blank" href="http://www.ishnira.com/">Ishnira Technologies Pvt. Ltd.</a>
									 <a target="_blank" href="http://www.ishnira.com/"></a>
							</p>
					</div>
					<div class="col-md-3">
						<!-- <div class="three spacing"></div> -->
						<p>
						<a rel="nofollow" target="_blank" href="${pageContext.request.contextPath}/privacypolicy">Privacy Policy </a>| <a target="_blank" href="${pageContext.request.contextPath}/termconditions">Terms And Conditions</a>
						</p>
					</div>
					<div class="col-md-2">
						<ul class="socials">
							<li><a href="http://facebook.com"> <i
									class="fa fa-facebook"></i>
							</a></li>
							<li><a href="http://twitter.com"> <i
									class="fa fa-twitter"></i>
							</a></li>
							<li><a href="http://dribbble.com"> <i
									class="fa fa-dribbble"></i>
							</a></li>
							<li><a href="http://tumblr.com"> <i class="fa fa-tumblr"></i>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer>
	</div>

	<div class="modal fade width20" id="LoginModal">
		<div class="col-lg-5">&nbsp;</div>
		<div class="col-lg-6">
			<div class="block-center mt-xl wd-xl1">
				<!-- START panel-->
				<div class="panel panel-dark panel-flat">

					<button type="button" class="close popupForgotPasswordClose"
						style="margin: 5px 7px 0px 0px;" data-dismiss="modal"
						aria-hidden="true">&times;</button>

					<div class="panel-heading-active">
						<p class="text-center pv">Login</p>

						<!-- <img src="assets/img/logo.png" alt="Image" class="block-center img-rounded" width="200"> -->
					</div>



					<div class="panel-body">
						<form class="mb-lg" name="loginform"
							ng-controller="LoginController as ctrlLogin"
							ng-submit="ctrlLogin.submit()">
							<div class="form-group has-feedback">
								<span style="color: red">{{errorMessege}}</span>
							</div>
							<div class="form-group has-feedback"
								ng-class="{ 'has-error' : loginform.userName.$invalid && !loginform.userName.$pristine }">
								<input ng-model="ctrlLogin.ulogin.userName" name="userName"
									type="text" placeholder="Username or Email" autocomplete="off"
									required class="form-control" ng-minlength="3"
									ng-maxlength="20">
								<!-- <p
									ng-show="loginform.userName.$touched && loginform.userName.$invalid "
									class="help-block">Username is required.</p>
								<p ng-show="loginform.userName.$error.minlength"
									class="help-block">Username is too short minlength 3.</p>
								<p ng-show="loginform.userName.$error.maxlength"
									class="help-block">Username is too long maxlength 30.</p	> -->
							</div>

							<div class="form-group has-feedback"
								ng-class="{ 'has-error' : loginform.password.$invalid && !loginform.password.$pristine }">
								<input ng-model="ctrlLogin.ulogin.password" name="password"
									type="password" placeholder="Password" autocomplete="off"
									required class="form-control" ng-minlength="6"
									ng-maxlength="10">
								<!-- <p
									ng-show="loginform.password.$touched && loginform.password.$invalid"
									class="help-block">Password is required.</p>
								<p ng-show="loginform.password.$error.minlength"
									class="help-block">Password is too short minlength 6.</p>
								<p ng-show="loginform.password.$error.maxlength"
									class="help-block">Password is too long maxlength 10.</p> -->
							</div>

							<div class="clearfix">
								<div class="checkbox c-checkbox pull-left mt0">
									<label> <input id="remember_me" type="checkbox"
										name="remember" value="1"> <span class="fa fa-check"></span>Remember
										Me
									</label>
								</div>

								<div class="pull-right">
									<a href="javascript:void(0)" id="lnkButtonForgotPassword"
										class="text-muted">Forgot your password?</a>
								</div>
							</div>

							<div class="text-center">
								<button type="submit" class="btnf btn-success mt-lg">Login</button>
							</div>
						</form>
						<p class="pt-lg text-center">Need to Signup?</p>
						<div class="text-center">
							<!-- <a href="signup.html" class="btn btn-info">Register Now</a> -->
							<a href="javascript:void(0)" id="registrewithEmail"
								class="btnf btn-info">Register Now</a>
						</div>
					</div>
				</div>
				<!-- END panel-->
				<div class="p-lg text-center text-white"></div>
			</div>
		</div>
	</div>

	<!--Register Modal Popup Dialog with Social   -->
	<div class="modal fade width20" id="registerSocialModal">
		<div class="col-lg-7">&nbsp;</div>
		<div class="col-lg-5">
			<div class="block-center mt-xl wd-xl1">
				<!-- START panel-->
				<div class="panel panel-dark panel-flat">
					<button type="button" class="close popupForgotPasswordClose"
						style="margin: 5px 7px 0px 0px;" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<div class="panel-heading-active">
						<p class="text-center pv">Register</p>
					</div>
					<label class="text-muted text-thin ">Register Me As</label>
					<div class="panel-body">

						<form name="proForm" id="proForm">
							<div class="form-group has-feedback">
								<select name="profession" id="profession"
									ng-model="ctrlUser.userdetails.profession" class="form-control"
									required title="Please select profession."
									oninvalid="this.setCustomValidity('Please select your profession.')"
									oninput="setCustomValidity('')">
									<option value="">Select Your profession</option>
									<option value="actors">Actor/Actress/Model</option>
									<option value="backSupports">Back Support Team</option>
									<option value="regAgencys">Agency</option>
								</select>
							</div>

							<div class="form-group has-feedback actor box">
								<select name="actorType" id="actorType"
									ng-model="ctrlUser.userdetails.actorType"
									ng-init="ctrlUser.userdetails.actorType='LeadActor'"
									class="form-control" required
									title="Please select profession type."
									oninvalid="this.setCustomValidity('Please select profession type.')"
									oninput="setCustomValidity('')">
									<option value="LeadActor">Lead Actor</option>
									<option value="LeadActress">Lead Actress</option>
									<option value="SupportingActor">Supporting Actor</option>
									<option value="SupportingActress">Supporting Actress</option>
									<option value="Modelling">Modelling</option>
								</select>
							</div>

							<div class="form-group has-feedback backSupport box">
								<select name="backSupportTeam" id="backSupportTeam"
									ng-model="ctrlUser.userdetails.backSupportTeam"
									ng-init="ctrlUser.userdetails.backSupportTeam='Director'"
									class="form-control" required
									title="Please select profession type."
									oninvalid="this.setCustomValidity('Please select profession type.')"
									oninput="setCustomValidity('')">
									<option value="Director">Director</option>
									<option value="Producer">Producer</option>
									<option value="Distributor">Distributor</option>
									<option value="StoryWriter">Story Writer</option>
									<option value="MusicDirector">Music Director</option>
									<option value="Lyrist">Lyrist</option>
									<option value="PlaybackSinger">Playback Singer</option>
									<option value="LightDept">Light Dept</option>
									<option value="HairMakeup">Hair and Make Up</option>
									<option value="CostumerDesigner">Costumer Designer</option>
									<option value="Editor">Editor</option>
									<option value="StuntGuru">Stunt Guru</option>
									<option value="ScreenPlay">Screen Play Writer</option>
									<option value="CinemaAutograpgher">Cinema Autograpgher</option>
									<option value="ArtDirector">Art Director</option>
									<option value="Choreographer">Choreographer</option>
									<option value="ScriptWriter">Script Writer</option>
									<option value="ProductionManager">Production Manager</option>
									<option value="Public">Public</option>
								</select>
							</div>
							<div class="form-group has-feedback agency box">
								<select name="regAgency" id="regAgency"
									ng-model="ctrlUser.userdetails.regAgency"
									ng-init="ctrlUser.userdetails.regAgency='Studios'"
									class="form-control" required
									title="Please select profession type."
									oninvalid="this.setCustomValidity('Please select profession type.')"
									oninput="setCustomValidity('')">
									<option value="Studios">Studios</option>
									<option value="VFXGraphics">VFX - Graphics Companies</option>
									<option value="JrArtists">Jr. Artists Agency</option>
									<option value="DanceTroop">Dance Troop Agency</option>
									<option value="CarryVan">Carry Van</option>
									<option value="PosterBannerDesign">Poster,Banner
										Design & Printing</option>
									<option value="Equipments">Equipments</option>
									<option value="WaterSupplleir">Water Supplleir for
										Articial Rain</option>
									<option value="Vehicles">Vehicles</option>
									<option value="Catering">Catering</option>
									<option value="Threatres">Threatres</option>
									<option value="Other">Other Agencies</option>
								</select>
							</div>
							<div class="text-center">
								<button type="submit" class="btnf btn-info mt-lg">EMAIL</button>
							</div>
						</form>
						<div class="text-center">
							<button id="regGoogle" class="btnf btn-danger mt-lg">GOOGLE
								+</button>
						</div>

						<div class="text-center">
							<button id="regGoogle" class="btnf btn-info mt-lg">FACEBOOK</button>
						</div>
					</div>

				</div>
				<!-- END panel-->
				<div class="p-lg text-center text-white"></div>
			</div>
		</div>
	</div>
	<!-- Register Modal Popup Dialog  -->
	<!-- <div class="modal fade width20" id="registreModal">  
    <div class="block-center mt-xl wd-xl">
         START panel
         
         END panel
          <div class="p-lg text-center">
          </div>
      </div>
  </div> -->

	<!-- ========================================================== -->
	<div class="modal fade width20" id="registreModal">
		<div class="col-lg-3">&nbsp;</div>
		<div class="col-lg-5">
			<div class="block-center mt-xl wd-xl">
				<div class="panel panel-dark panel-flat">
					<button type="button" class="close popupForgotPasswordClose"
						style="margin: 5px 7px 0px 0px;" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<div class="panel-heading-active">
						<p class="text-center pv">Register</p>
					</div>
					<div class="panel-body">
						<form name="userForm"
							ng-controller="UserRegisterController as ctrlUser"
							ng-submit="ctrlUser.submit()" class="mb-lg">
							<div class="col-md-6">
								<input type="hidden" ng-model="ctrlUser.userdetails.signupId"
									id="signupId" />

								<div class="form-group has-feedback"
									ng-class="{ 'has-error' : userForm.firstName.$invalid && !userForm.firstName.$pristine }">
									<label for="firstName" class="text-muted">First Name<span
										style="color: red">*</span></label> <input
										ng-model="ctrlUser.userdetails.firstName" name="firstName"
										type="text" placeholder="First Name" class="form-control"
										onChange="this.value=this.value.substring(0, 1).toUpperCase() + this.value.substring(1);"
										autocomplete="off" required ng-minlength="3" ng-maxlength="20">
									<p ng-show="userForm.firstName.$error.minlength"
										class="help-block">First name is too short minlength 3.</p>
									<p ng-show="userForm.firstName.$error.maxlength"
										class="help-block">First name is too long maxlength 20.</p>
								</div>

								<div class="form-group has-feedback"
									ng-class="{ 'has-error' : userForm.lastName.$invalid && !userForm.lastName.$pristine }"">
									<label for="lastName" class="text-muted">Last Name<span
										style="color: red">*</span></label> <input
										ng-model="ctrlUser.userdetails.lastName" name="lastName"
										type="text" placeholder="Last Name" class="form-control"
										autocomplete="off" required ng-minlength="3" ng-maxlength="20">
									<p ng-show="userForm.lastName.$error.minlength"
										class="help-block">First name is too short minlength 3.</p>
									<p ng-show="userForm.lastName.$error.maxlength"
										class="help-block">First name is too long maxlength 20.</p>
								</div>

								<div class="form-group has-feedback"
									ng-class="{ 'has-error' : userForm.mobile.$invalid && !userForm.mobile.$pristine }">
									<label for="mobile" class="text-muted">Mobile<span
										style="color: red">*</span></label> <input
										ng-model="ctrlUser.userdetails.mobile" name="mobile"
										type="text" placeholder="Mobile" class="form-control"
										autocomplete="off" required ng-maxlength="15">
									<p ng-show="userForm.mobile.$error.maxlength"
										class="help-block">Mobile is too long maxlength 15.</p>
								</div>

								<div class="form-group has-feedback">
									<label for="professionCat" class="text-muted">Profession
										Category<span style="color: red">*</span>
									</label> <input ng-model="ctrlUser.userdetails.professionCat"
										name="profession" class="form-control" disabled>
								</div>

								<div class="form-group has-feedback">
									<label for="profession" class="text-muted">Profession<span
										style="color: red">*</span></label> <input
										ng-model="ctrlUser.userdetails.actorType" name="actorType"
										class="form-control" disabled> <input
										ng-model="ctrlUser.userdetails.backSupportTeam"
										name="backSupportTeam" class="form-control" disabled>
									<input ng-model="ctrlUser.userdetails.regAgency"
										name="regAgency" class="form-control" disabled>
								</div>
							</div>

							<div class="col-md-6" style="border-left: 1px solid #c8c8c8">

								<div class="form-group has-feedback"
									ng-class="{ 'has-error' : userForm.userName.$invalid && !userForm.userName.$pristine }">
									<label for="userName" class="text-muted">Username<span
										style="color: red">*</span></label> <input
										ng-model="ctrlUser.userdetails.userName" name="userName"
										type="text" ng-minlength="3" ng-maxlength="20"
										placeholder="Username"
										onChange="this.value=this.value.toLowerCase();"
										class="form-control" autocomplete="off" required>
									<p ng-show="userForm.userName.$error.minlength"
										class="help-block">Username is too short minlength 3.</p>
									<p ng-show="userForm.userName.$error.maxlength"
										class="help-block">Username is too long maxlength 20.</p>
								</div>

								<div class="form-group has-feedback">
									<label for="email" class="text-muted"
										ng-class="{ 'has-error' : userForm.email.$invalid && !userForm.email.$pristine }">Email<span
										style="color: red">*</span></label> <input
										ng-model="ctrlUser.userdetails.email" type="email"
										name="email" autocomplete="off" placeholder="Email"
										maxlength="100" class="form-control" required ng-minlength="2">
									<p ng-show="userForm.email.$error.minlength" class="help-block"
										style="color: red">Email is too short minlength 2. '@'
										format.</p>
								</div>

								<div class="form-group has-feedback"
									ng-class="{ 'has-error' : userForm.password.$invalid && !userForm.password.$pristine }">
									<label for="password" class="text-muted">Password<span
										style="color: red">*</span></label> <input
										ng-model="ctrlUser.userdetails.password" name="password"
										type="password" placeholder="Password" class="form-control"
										ng-minlength="6" ng-maxlength="20">
									<p ng-show="userForm.password.$error.minlength"
										class="help-block">Password is too short minlength 6.</p>
									<p ng-show="userForm.password.$error.maxlength"
										class="help-block">Password is too long maxlength 20.</p>
								</div>

								<div class="form-group has-feedback"
									ng-class="{ 'has-error' : userForm.rePassword.$invalid && !userForm.rePassword.$pristine }">
									<label for="rePassword" class="text-muted">Re-type
										password<span style="color: red">*</span>
									</label> <input ng-model="ctrlUser.userdetails.rePassword"
										name="rePassword" type="password"
										placeholder="Re-type password" ng-minlength="6"
										ng-maxlength="20" class="form-control">
									<p
										ng-show="ctrlUser.userdetails.password !== ctrlUser.userdetails.rePassword"
										style="color: red">Passwords do not match.</p>
									<!-- <p ng-show="userForm.rePassword.$error.match">Passwords do not match.</p> -->
									<p ng-show="userForm.rePassword.$error.minlength"
										class="help-block">Password is too short minlength 6.</p>
									<p ng-show="userForm.rePassword.$error.maxlength"
										class="help-block">Password is too long maxlength 20.</p>
								</div>

							</div>
							<div class="clearfix"></div>

							<div class="text-center">
								<button type="submit" id="btnRegister" ng-click="regitration()"
									class="btnf btn-info" ng-disabled="userForm.$invalid">Register</button>
							</div>

						</form>

						<div class="text-center">
							<a href="javascript:void(0)" id="backtoLogin">Back To Login</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade width30" id="ForgotPasswordModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close popupForgotPasswordClose"
						data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">Forgot Password</h4>
				</div>
				<form class="mb-lg" method="post" role="form"
					id="ForgotPasswordForm" name="ForgotPasswordForm">
					<div class="modal-body">
						<div class="form-group has-feedback">
							<input id="txtForgotPasswordEmail" name="txtForgotPasswordEmail"
								type="text" placeholder="Enter e-mail to recover your password!"
								onChange="this.value=this.value.toLowerCase();"
								autocomplete="off" required class="form-control"> <span
								class="icon-envelope form-control-feedback text-muted"></span>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button"
							class="btn btn-sm btn-danger popupForgotPasswordClose"
							data-dismiss="modal">Cancel</button>
						<button type="button" id="btnForgotPasswordSend"
							class="btn btn-sm btn-primary">Send</button>
					</div>
				</form>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /End.modal -->
</body>
</html>