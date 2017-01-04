<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en-US">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

<title>A2zcinema | UserOneDetails</title>

<link rel="stylesheet" href="static/assets/css/bootstrap.css" id="bscss">
<link rel="stylesheet" href="static/assets/css/app.css" id="maincss">
<link rel="stylesheet" href="static/mainfiles/js/bootstrap.min.css"></link>
<script type="text/javascript" src="static/mainfiles/js/jquery.min.js"></script>
<script type="text/javascript" src="static/mainfiles/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="static/mainfiles/js/site-demos.css"></link>
<link href="static/css/useroneslider/ninja-slider.css" rel="stylesheet"></link>
<script src="static/css/useroneslider/ninja-slider.js"></script>
<link href="static/css/useroneslider/thumbnail-slider.css" rel="stylesheet"></link>
<script src="static/css/useroneslider/thumbnail-slider.js"></script>
<link rel="stylesheet" type="text/css" href="static/css/useroneslider/thumbs.css" />
<script type="text/javascript" src="static/mainfiles/js/angular.js"></script>
<script type="text/javascript" src="static/mainfiles/js/ngStorage.js"></script>
<script src="static/js/app.js"></script>
<link rel="stylesheet" href="static/mainfiles/css/whirl.css">
<script src="static/js/homecontroller/home_service.js"></script>
<script src="static/js/homecontroller/home_controller.js"></script>
<script src="static/js/auditioncontroller/aud_controller.js"></script>
<script src="static/js/aboutcontroller/aboutuscontroller.js"></script>
<script src="static/js/loginjs/login.js"></script>
<link rel="stylesheet" href="static/mainfiles/css/simple-line-icons.css">
<link rel="stylesheet" href="static/mainfiles/css/font-awesome.min.css">
<link rel="stylesheet" href="static/mainfiles/css/style.css">
<script type="text/javascript" src="static/mainfiles/js/plugins.js"></script>
<script type="text/javascript" src="static/mainfiles/js/custom.js"></script>
<link rel="stylesheet" type="text/css"
	href="static/mainfiles/css/useroneprofile.css" />

<script src="static/js/loginjs/forgotPasswordSend.js"></script>	
	
<script src="static/js/aws/controllers.js"></script>
<script src="static/js/aws/directives.js"></script>	
<link rel="stylesheet" href="static/components/toastr/toastr.min.css">
<script src="static/components/toastr/toastr.min.js"></script>
	
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
										<li><a href="${pageContext.request.contextPath}/moviebooking">Movie
								        Tickets Booking</a></li>
									</ul>
								</li>
								<li><a href="${pageContext.request.contextPath}/crowdfunding">Crowd
										Funding</a></li>
								<li><a href="${pageContext.request.contextPath}/onlinedistribution">Online
												Distribution</a></li>
								<li><a
									href="${pageContext.request.contextPath}/onlineaudition">Online
										Auditions</a></li>
								<li><a href="${pageContext.request.contextPath}/contact">Contact us</a></li>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<li>
									<div class="text-center"
										ng-controller="AboutusController as ctrl">
										<div ng-if="aboutus == 1">
											<span ng-if="loginAsId ==1">
												<button type="submit" class="btn btn-success mt-lg"
													title="Profile">
													<a href="${pageContext.request.contextPath}/actorProfile">Profile</a>
												</button>
											</span> <span ng-if="loginAsId == 2">
												<button type="submit" class="btn btn-success mt-lg"
													title="Profile">
													<a
														href="${pageContext.request.contextPath}/backSupportProfile">Profile</a>
												</button>
											</span> <span ng-if="loginAsId == 3">
												<button type="submit" class="btn btn-success mt-lg"
													title="Profile">
													<a href="${pageContext.request.contextPath}/agencyProfile">Profile</a>
												</button>
											</span> &nbsp;&nbsp;
											<span ng-if="loginAsId == 4">
												<button type="submit" class="btn btn-success mt-lg"
													title="Profile">
													<a href="${pageContext.request.contextPath}/adminDashboard">Admin</a>
												</button>
											</span>&nbsp;&nbsp; 
											<button type="submit" class="btn btn-success mt-lg"
										ng-click="logout()" title="Logout">
									      <a href="javascript:()"> Logout</a> 
									    </button>
										</div>
										<div ng-if="aboutus != 1">
											<button type="submit" class="btn btn-success mt-lg"
												id="loginPop" title="Login">
												<a>Login</a>
											</button>
											&nbsp;&nbsp;
											<button type="submit" class="btn btn-success mt-lg"
												id="registerSocial" title="Register">
												<a>Register</a>
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

		<section>

			<div class="myrow-container"
				ng-controller="UserOneController as userone">
				<div class="panel panel-success">

					<div class="row" ng-repeat="u in userone.users">
						<div class="col-lg-12" ng-if="u.profile_type=='Public'">
							<div class="col-lg-7" ng-repeat="u in userone.users">

								<div class="panel panel-default">
									<h4 class="text-muted text-thin text-center">Personal
										Details</h4>
										<span ng-if="u.profession=='actors'">
									<fieldset>
										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4"> Name</label> <label class="text-thin col-lg-4" ng-bind-template="{{u.first_name}} {{u.last_name}}"></label>
										</div>
										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Gender</label> <label
												class="text-thin col-lg-4"><span ng-bind="u.gender"></span></label>
										</div>
										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Age</label> <label
												class="text-thin col-lg-4"><span ng-bind="u.age"></span></label>
										</div>
										<!-- <div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4"> Email</label> <label
												class="text-thin col-lg-4"><span
												ng-bind="u.email_id"></span></label>
										</div> -->
										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Language</label> <label
												class="text-thin col-lg-4"><span
												ng-bind="u.language"></span></label>
										</div>
										<div>
											<label for="" class="text-muted col-lg-4">City</label> <label
												class="text-thin col-lg-4"><span
												ng-bind="u.pr_district"></span></label> <label for=""
												class="text-muted col-lg-4">Country</label> <label
												class="text-thin col-lg-4"><span
												ng-bind="u.pr_country"></span></label>
										</div>

									</fieldset>
									</span>
									<span ng-if="u.profession=='backSupports'">
									<fieldset>
										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4"> Name</label> <label class="text-thin col-lg-4" ng-bind-template="{{u.first_name}} {{u.last_name}}"></label>
										</div>
										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Gender</label> <label
												class="text-thin col-lg-4"><span ng-bind="u.gender"></span></label>
										</div>
										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Age</label> <label
												class="text-thin col-lg-4"><span ng-bind="u.age"></span></label>
										</div>
										<!-- <div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4"> Email</label> <label
												class="text-thin col-lg-4"><span
												ng-bind="u.email_id"></span></label>
										</div> -->
										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Language</label> <label
												class="text-thin col-lg-4"><span
												ng-bind="u.language"></span></label>
										</div>
										<div>
											<label for="" class="text-muted col-lg-4">City</label> <label
												class="text-thin col-lg-4"><span
												ng-bind="u.pr_district"></span></label> <label for=""
												class="text-muted col-lg-4">Country</label> <label
												class="text-thin col-lg-4"><span
												ng-bind="u.pr_country"></span></label>
										</div>

									</fieldset>
									</span>
									<span ng-if="u.profession=='regAgencys'">
										<fieldset>
											<div class="form-group has-feedback">
												<label for="" class="text-muted col-lg-4"> Name</label> <label class="text-thin col-lg-4" ng-bind-template="{{u.first_name}} {{u.last_name}}"></label>
											</div>
											<!-- <div class="form-group has-feedback">
												<label for="" class="text-muted col-lg-4"> Email</label> <label
													class="text-thin col-lg-4"><span
													ng-bind="u.email_id"></span></label>
											</div> -->
											<div>
												<label for="" class="text-muted col-lg-4">City</label> <label
													class="text-thin col-lg-4"><span
													ng-bind="u.pr_district"></span></label> <label for=""
													class="text-muted col-lg-4">Country</label> <label
													class="text-thin col-lg-4"><span
													ng-bind="u.pr_country"></span></label>
											</div>
	
										</fieldset>
									</span>
								</div>

                           <span ng-if="u.profession=='actors'">
								<div class="panel panel-default">
									<h4 class="text-muted text-thin text-center">Physical
										Details</h4>
									<form id="userPhyDetailsForm" Class="form-horizontal"
										modelAttribute="userPhyDetails" method="post"
										action="saveUserPhyDetailsInfo">
										<fieldset>

											<div>
												<label for="" class="text-muted col-lg-2 ">Complexion</label>
												<label class="text-thin col-lg-3"><span
													ng-bind="u.complexion" /></label> <label for=""
													class="text-muted col-lg-2">SkinQuality</label> <label
													class="text-thin col-lg-3"><span
													ng-bind="u.skin_quality" /></label>
											</div>
											<div>
												<label for="" class="text-muted col-lg-2 ">Weight</label> <label
													class="text-thin col-lg-3"><span
													ng-bind="u.weight_unit" /></label> <label for=""
													class="text-muted col-lg-2">Height</label> <label
													class="text-thin col-lg-3"><span
													ng-bind="u.height_unit" /></label>
											</div>
											<div>
												<label for="" class="text-muted col-lg-2 ">Eye Color</label>
												<label class="text-thin col-lg-3"><span
													ng-bind="u.eye_color" /></label> <label for=""
													class="text-muted col-lg-2">Physique</label> <label
													class="text-thin col-lg-3"><span
													ng-bind="u.physique" /></label>
											</div>
											<div>
												<label for="" class="text-muted col-lg-2">Hair
													Style</label> <label class="text-thin col-lg-3"><span
													ng-bind="u.hair_style" /></label> <label for=""
													class="text-muted col-lg-2">HairLength</label> <label
													class="text-thin col-lg-3"><span
													ng-bind="u.hair_length" /></label>
											</div>
											<div>
												<label for="" class="text-muted col-lg-2 ">Hair
													Color</label> <label class="text-thin col-lg-3"><span
													ng-bind="u.hair_color" /></label> <label for=""
													class="text-muted col-lg-2 ">FacialHair</label> <label
													class="text-thin col-lg-3"><span
													ng-bind="u.facial_hair" /></label>
											</div>
										</fieldset>
									</form>
								</div>
								</span>

								<div class="panel panel-default">
									<h4 class="text-muted text-thin text-center">Work
										Experience Details</h4>
									<form id="userPhyExpForm" class="form-horizontal"
										modelAttribute="userExpDetails" method="post"
										action="saveUserExpDetailsInfo">
										<fieldset>
											<div class="form-group has-feedback">
												<label for="" class="text-muted col-lg-6">The Film
													Industry Worked in previously</label> <label class="text-thin"><span
													ng-bind="u.previous_work_indusry" /></label>
											</div>

											<div class="form-group has-feedback">
												<label for="" class="text-muted col-lg-6">Name the
													Director you worked with</label> <label class="text-thin"><span
													ng-bind="u.name_worked_with_director" /></label>
											</div>

											<div class="form-group has-feedback">
												<label for="" class="text-muted col-lg-6">Name the
													Films worked in</label> <label class="text-thin"><span
													ng-bind="u.name_worked_film" /></label>
											</div>

											<div class="form-group has-feedback">
												<label for="" class="text-muted col-lg-6">Name the
													Production House you worked for</label> <label class="text-thin"><span
													ng-bind="u.name_worked_production_house" /></label>
											</div>
										</fieldset>

										<fieldset>
											<div class="form-group has-feedback">
												<label for="" class="text-muted col-lg-6">Film
													Industry Intested in now</label> <label class="text-thin"><span
													ng-bind="u.film_industry_intrested" /> </label>
											</div>

											<div class="form-group has-feedback">
												<label for="" class="text-muted col-lg-6">Why do
													you want to work in Film Industry</label> <label class="text-thin" style="height:50px"><span
													ng-bind="u.reason" /> </label>
											</div>
										</fieldset>
									</form>
								</div>

							</div>
							
							<div class="col-lg-5" >
								 <div class="panel panel-default">
									<h4 class="text-muted text-thin text-center">User Photo's</h4>
									<div id="ninja-slider">
										<div class="slider-inner">
											<ul>
												<li ng-repeat="u in userone.imagedata">
												<a class="ns-img" ng-href="https://s3.amazonaws.com/a2zcinema-pics/{{u.image_name}}" alt="user's image">
												</a></li>
											</ul>
											<div class="fs-icon" title="Expand/Close"></div>
										</div>
									</div>
								</div> 
								<!-- <div class="panel panel-default">
								<h4 class="text-muted text-thin text-center">User Photo's</h4>
								<div style="background-image: url(static/mainfiles/img/newimage.jpg); height:310px;" >
								<marquee  behavior="scroll" direction="right" scrollmount=100 onmouseover="this.stop();" onmouseout="this.start();"> 
							       <span ng-repeat="u in userone.imagedata">
                                       <img ng-src="https://s3.amazonaws.com/a2zcinema-pics/{{u.image_name}}" alt="user's image" width="513px" height="310px"> 
                                      </span>
                                   </marquee>
		                        </div>
                                </div> -->
								<!-- <div class="panel panel-default">
									<div id="thumbnail-slider">
										<div class="inner">
											<ul>
												<li ng-repeat="u in userone.imagedata">
												
												<a class="thumb" ng-href="https://s3.amazonaws.com/a2zcinema-pics/{{u.image_name}}" alt="user's image">
												</a>
												</li>

											</ul>
										</div>
									</div>
								</div> -->

								
								<label for="" class="text-muted col-lg-12 " >Videos Links :(click on below url links to watch vedios)</label><br> 
									<div class="panel panel-default col-lg-12" ng-repeat="u in userone.users">
									      1.<a ng-href="{{u.video_url_one}}" target="_blank"><span ng-bind="u.video_url_one"></span></a><br></br>
									      2.<a ng-href="{{u.video_url_two}}" target="_blank"><span ng-bind="u.video_url_two"></span></a></span> <br><br>
									      3.<a ng-href="{{u.video_url_three}}" target="_blank"><span ng-bind="u.video_url_three"></span></a></span> <br>
									</div>
								</div>
							</div>
							
							<div class="col-lg-12" ng-if="u.profile_type_reg=='Public'">
							
							<div class="col-lg-7" ng-repeat="u in userone.users">

								<div class="panel panel-default">
									<h4 class="text-muted text-thin text-center">Personal
										Details</h4>
										<span ng-if="u.profession=='actors'">
									<fieldset>
										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4"> Name</label> <label class="text-thin col-lg-4" ng-bind-template="{{u.first_name}} {{u.last_name}}"></label>
										</div>
										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Gender</label> <label
												class="text-thin col-lg-4"><span ng-bind="u.gender"></span></label>
										</div>
										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Age</label> <label
												class="text-thin col-lg-4"><span ng-bind="u.age"></span></label>
										</div>
										<!-- <div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4"> Email</label> <label
												class="text-thin col-lg-4"><span
												ng-bind="u.email_id"></span></label>
										</div> -->
										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Language</label> <label
												class="text-thin col-lg-4"><span
												ng-bind="u.language"></span></label>
										</div>
										<div>
											<label for="" class="text-muted col-lg-4">City</label> <label
												class="text-thin col-lg-4"><span
												ng-bind="u.pr_district"></span></label> <label for=""
												class="text-muted col-lg-4">Country</label> <label
												class="text-thin col-lg-4"><span
												ng-bind="u.pr_country"></span></label>
										</div>

									</fieldset>
									</span>
									<span ng-if="u.profession=='backSupports'">
									<fieldset>
										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4"> Name</label> <label class="text-thin col-lg-4" ng-bind-template="{{u.first_name}} {{u.last_name}}"></label>
										</div>
										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Gender</label> <label
												class="text-thin col-lg-4"><span ng-bind="u.gender"></span></label>
										</div>
										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Age</label> <label
												class="text-thin col-lg-4"><span ng-bind="u.age"></span></label>
										</div>
										<!-- <div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4"> Email</label> <label
												class="text-thin col-lg-4"><span
												ng-bind="u.email_id"></span></label>
										</div> -->
										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Language</label> <label
												class="text-thin col-lg-4"><span
												ng-bind="u.language"></span></label>
										</div>
										<div>
											<label for="" class="text-muted col-lg-4">City</label> <label
												class="text-thin col-lg-4"><span
												ng-bind="u.pr_district"></span></label> <label for=""
												class="text-muted col-lg-4">Country</label> <label
												class="text-thin col-lg-4"><span
												ng-bind="u.pr_country"></span></label>
										</div>

									</fieldset>
									</span>
									<span ng-if="u.profession=='regAgencys'">
										<fieldset>
											<div class="form-group has-feedback">
												<label for="" class="text-muted col-lg-4"> Name</label> <label class="text-thin col-lg-4" ng-bind-template="{{u.first_name}} {{u.last_name}}"></label>
											</div>
											<!-- <div class="form-group has-feedback">
												<label for="" class="text-muted col-lg-4"> Email</label> <label
													class="text-thin col-lg-4"><span
													ng-bind="u.email_id"></span></label>
											</div> -->
											<div>
												<label for="" class="text-muted col-lg-4">City</label> <label
													class="text-thin col-lg-4"><span
													ng-bind="u.pr_district"></span></label> <label for=""
													class="text-muted col-lg-4">Country</label> <label
													class="text-thin col-lg-4"><span
													ng-bind="u.pr_country"></span></label>
											</div>
	
										</fieldset>
									</span>
								</div>

                           <span ng-if="u.profession=='actors'">
								<div class="panel panel-default">
									<h4 class="text-muted text-thin text-center">Physical
										Details</h4>
									<form id="userPhyDetailsForm" Class="form-horizontal"
										modelAttribute="userPhyDetails" method="post"
										action="saveUserPhyDetailsInfo">
										<fieldset>

											<div>
												<label for="" class="text-muted col-lg-2 ">Complexion</label>
												<label class="text-thin col-lg-3"><span
													ng-bind="u.complexion" /></label> <label for=""
													class="text-muted col-lg-2">SkinQuality</label> <label
													class="text-thin col-lg-3"><span
													ng-bind="u.skin_quality" /></label>
											</div>
											<div>
												<label for="" class="text-muted col-lg-2 ">Weight</label> <label
													class="text-thin col-lg-3"><span
													ng-bind="u.weight_unit" /></label> <label for=""
													class="text-muted col-lg-2">Height</label> <label
													class="text-thin col-lg-3"><span
													ng-bind="u.height_unit" /></label>
											</div>
											<div>
												<label for="" class="text-muted col-lg-2 ">Eye Color</label>
												<label class="text-thin col-lg-3"><span
													ng-bind="u.eye_color" /></label> <label for=""
													class="text-muted col-lg-2">Physique</label> <label
													class="text-thin col-lg-3"><span
													ng-bind="u.physique" /></label>
											</div>
											<div>
												<label for="" class="text-muted col-lg-2">Hair
													Style</label> <label class="text-thin col-lg-3"><span
													ng-bind="u.hair_style" /></label> <label for=""
													class="text-muted col-lg-2">HairLength</label> <label
													class="text-thin col-lg-3"><span
													ng-bind="u.hair_length" /></label>
											</div>
											<div>
												<label for="" class="text-muted col-lg-2 ">Hair
													Color</label> <label class="text-thin col-lg-3"><span
													ng-bind="u.hair_color" /></label> <label for=""
													class="text-muted col-lg-2 ">FacialHair</label> <label
													class="text-thin col-lg-3"><span
													ng-bind="u.facial_hair" /></label>
											</div>
										</fieldset>
									</form>
								</div>
								</span>

								<div class="panel panel-default">
									<h4 class="text-muted text-thin text-center">Work
										Experience Details</h4>
									<form id="userPhyExpForm" class="form-horizontal"
										modelAttribute="userExpDetails" method="post"
										action="saveUserExpDetailsInfo">
										<fieldset>
											<div class="form-group has-feedback">
												<label for="" class="text-muted col-lg-6">The Film
													Industry Worked in previously</label> <label class="text-thin"><span
													ng-bind="u.previous_work_indusry" /></label>
											</div>

											<div class="form-group has-feedback">
												<label for="" class="text-muted col-lg-6">Name the
													Director you worked with</label> <label class="text-thin"><span
													ng-bind="u.name_worked_with_director" /></label>
											</div>

											<div class="form-group has-feedback">
												<label for="" class="text-muted col-lg-6">Name the
													Films worked in</label> <label class="text-thin"><span
													ng-bind="u.name_worked_film" /></label>
											</div>

											<div class="form-group has-feedback">
												<label for="" class="text-muted col-lg-6">Name the
													Production House you worked for</label> <label class="text-thin"><span
													ng-bind="u.name_worked_production_house" /></label>
											</div>
										</fieldset>

										<fieldset>
											<div class="form-group has-feedback">
												<label for="" class="text-muted col-lg-6">Film
													Industry Intested in now</label> <label class="text-thin"><span
													ng-bind="u.film_industry_intrested" /> </label>
											</div>

											<div class="form-group has-feedback">
												<label for="" class="text-muted col-lg-6">Why do
													you want to work in Film Industry</label> <label class="text-thin" style="height:50px"><span
													ng-bind="u.reason" /> </label>
											</div>
										</fieldset>
									</form>
								</div>

							</div>
							
							<div class="col-lg-5" >
							   <div class="panel panel-default">
									<h4 class="text-muted text-thin text-center">User Photo's</h4>
									<div id="ninja-slider">
										<div class="slider-inner">
											<ul>
												<li ng-repeat="u in userone.imagedata">
												
												<a class="ns-img" ng-href="https://s3.amazonaws.com/a2zcinema-pics/{{u.image_name}}" alt="user's image">
												</a></li>
											</ul>
											<div class="fs-icon" title="Expand/Close"></div>
										</div>
									</div>
								</div>
								<!-- <div class="panel panel-default">
								<h4 class="text-muted text-thin text-center">User Photo's</h4>
								<div style="background-image: url(static/mainfiles/img/newimage.png); height:310px;" >
								<marquee  behavior="scroll" direction="right" scrollmount=100 onmouseover="this.stop();" onmouseout="this.start();"> 
							       <span ng-repeat="u in userone.imagedata">
                                       <img ng-src="https://s3.amazonaws.com/a2zcinema-pics/{{u.image_name}}" alt="user's image" width="513px" height="310px"> 
                                      </span>
                                   </marquee>
		                        </div>
                                </div> -->
                                
                                <!-- <div class="panel panel-default">
									<div id="thumbnail-slider">
										<div class="inner">
											<ul>
												<li ng-repeat="u in userone.imagedata">
												
												<a class="thumb" ng-href="https://s3.amazonaws.com/a2zcinema-pics/{{u.image_name}}" alt="user's image">
												</a>
												</li>

											</ul>
										</div>
									</div>
								</div> -->
                                

								
								<label for="" class="text-muted col-lg-12 " >Videos Links :(click on below url links to watch vedios)</label><br> 
									<div class="panel panel-default col-lg-12" ng-repeat="u in userone.users">
									      1.<a ng-href="{{u.video_url_one}}" target="_blank"><span ng-bind="u.video_url_one"></span></a><br></br>
									      2.<a ng-href="{{u.video_url_two}}" target="_blank"><span ng-bind="u.video_url_two"></span></a></span> <br><br>
									      3.<a ng-href="{{u.video_url_three}}" target="_blank"><span ng-bind="u.video_url_three"></span></a></span> <br>
									</div>
								</div>
							</div>
							
							<div class="col-lg-12" ng-if="u.profile_type=='Private'" style="height:520px">
								<h2 class="text-muted text-thin text-center">This Profile is Private(Restricted for Public View).</h2>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</section>

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
							<li><a
								href="${pageContext.request.contextPath}/crowdfunding">Crowd
									Funding</a></li>
							<li><a
								href="${pageContext.request.contextPath}/moviebooking">Movie
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
								<li><a href="http://tumblr.com"> <i
										class="fa fa-tumblr"></i>
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
					</div>
					<div class="panel-body" id="loginformdiv">
						<form class="mb-lg" name="loginform"
							ng-controller="LoginController as ctrlLogin"
							ng-submit="ctrlLogin.submit()">
							<div class="form-group has-feedback">
								<span style="color: red">{{errorMessege}}</span>
							</div>
							<div class="form-group has-feedback">
								<input ng-model="ctrlLogin.ulogin.userName" name="userName"
									type="text" placeholder="Username or Email" autocomplete="off" required
									class="form-control">
							</div>
							
							<div class="form-group has-feedback">
								<input ng-model="ctrlLogin.ulogin.password" name="password"
									type="password" placeholder="Password" autocomplete="off" required
									class="form-control">
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
								<select name="profession" id="profession" ng-model="ctrlUser.userdetails.profession" class="form-control"
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
								<select name="actorType" id="actorType" ng-model="ctrlUser.userdetails.actorType" ng-init="ctrlUser.userdetails.actorType='Actor'"  class="form-control"
									required title="Please select profession type."
									oninvalid="this.setCustomValidity('Please select profession type.')"
									oninput="setCustomValidity('')">
									<option value="Actor">Actor</option>
									<option value="Actress">Actress</option>
									<option value="ChildActress">Child Actress</option>
									<option value="SupportingActor">Supporting Actor</option>
									<option value="SupportingActress">Supporting Actress</option>
									<option value="Modelling">Modelling</option>
									<option value="JuniorArtist">Junior Artist</option>
								</select>
							</div>

							<div class="form-group has-feedback backSupport box">
								<select name="backSupportTeam" id="backSupportTeam" ng-model="ctrlUser.userdetails.backSupportTeam"
								        ng-init="ctrlUser.userdetails.backSupportTeam='Director'"
									class="form-control" required title="Please select profession type."
									oninvalid="this.setCustomValidity('Please select profession type.')"
									oninput="setCustomValidity('')">
									<option value="Director">Director</option>
									<option value="Producer">Producer</option>
									<option value="Distributor">Distributor</option>
									<option value="StoryWriter">Story Writer</option>
									<option value="MusicDirector">Music Director</option>
									<option value="Lyrist">Lyrist</option>
									<option value="PlaybackSinger">Playback Singer</option>
									<option value="LightMan">Light Man</option>
									<option value="HairMakeup">Hair and Make Up</option>
									<option value="CostumerDesigner">Costumer Designer</option>
									<option value="Editor">Editor</option>
									<option value="StuntMaster">Stunt Master</option>
									<option value="ScreenPlay">Screen Play Writer</option>
									<option value="CinemaAutograpgher">Cinema Autograpgher</option>
									<option value="ArtDirector">Art Director</option>
									<option value="Choreographer">Choreographer</option>
									<option value="ScriptWriter">Script Writer</option>
									<option value="ProductionManager">Production Manager</option>
									<option value="PRO">PRO</option>
									<option value="Dubbing-Artist">Dubbing Artist</option>
									<option value="Others">Others</option>
								</select>
							</div>
							<div class="form-group has-feedback agency box">
								<select name="regAgency" id="regAgency" ng-model="ctrlUser.userdetails.regAgency"
								    ng-init="ctrlUser.userdetails.regAgency='Camera-Equipments'"
								    class="form-control"
									required title="Please select profession type."
									oninvalid="this.setCustomValidity('Please select profession type.')"
									oninput="setCustomValidity('')">
									<option value="EditingStudios">Editing Studios</option>
									<option value="DubbingStudios">Dubbing Studios</option>
									<option value="MusicStudios">Music Studios</option>
									<option value="PhotoStudios">Photo Studios</option>
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
									<option value="Theatres">Theatres</option>
									<option value="Light-Equipments">Light & Equipments </option>
									<option value="Camera-Equipments">Camera & Equipments </option>
									<option value="Costume">Costume</option>
									<option value="Makeup">Makeup</option>
									<option value="Set-Department">Set Department</option>
									<option value="Acting-Direction-School">Acting/Direction School</option>
									<option value="Advertisement">Advertisement</option>
									<option value="Other">Other Agencies</option>
								</select>
							</div>
							
							<div class="text-center">
								<button type="submit" class="btnf btn-info mt-lg">EMAIL</button>
							</div>
						</form>
						    <div class="text-center">
								<button id="regGoogle" class="btnf btn-danger mt-lg">GOOGLE +</button>
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
					<div class="panel-body" id="regFormdiv">
						<form name="userForm"
							ng-controller="UserRegisterController as ctrlUser"
							ng-submit="ctrlUser.submit()" class="mb-lg">
							<div class="col-md-6">
								<input type="hidden" ng-model="ctrlUser.userdetails.signupId" id="signupId"/>

								<div class="form-group has-feedback" ng-class="{ 'has-error' : userForm.firstName.$invalid && !userForm.firstName.$pristine }">
									<label for="firstName" class="text-muted">First Name<span
										style="color: red">*</span></label> <input
										ng-model="ctrlUser.userdetails.firstName" name="firstName"
										type="text" placeholder="First Name" 
									    class="form-control" onChange="this.value=this.value.substring(0, 1).toUpperCase() + this.value.substring(1);" autocomplete="off" required ng-minlength="3" ng-maxlength="20">
										<p ng-show="userForm.firstName.$error.minlength"
											class="help-block">First name is too short minlength 3.</p>
										<p ng-show="userForm.firstName.$error.maxlength"
											class="help-block">First name is too long maxlength 20.</p>
								</div>

								<div class="form-group has-feedback" ng-class="{ 'has-error' : userForm.lastName.$invalid && !userForm.lastName.$pristine }"">
									<label for="lastName" class="text-muted">Last Name<span
										style="color: red">*</span></label> <input
										ng-model="ctrlUser.userdetails.lastName" name="lastName"
										type="text" placeholder="Last Name" 
										 class="form-control" autocomplete="off" required ng-minlength="3" ng-maxlength="20">
										<p ng-show="userForm.lastName.$error.minlength"
											class="help-block">First name is too short minlength 3.</p>
										<p ng-show="userForm.lastName.$error.maxlength"
											class="help-block">First name is too long maxlength 20.</p>
								</div>

								<div class="form-group has-feedback" ng-class="{ 'has-error' : userForm.mobile.$invalid && !userForm.mobile.$pristine }">
									<label for="mobile" class="text-muted">Mobile<span
										style="color: red">*</span></label> <input
										ng-model="ctrlUser.userdetails.mobile" name="mobile"
										type="text" placeholder="Mobile"
										class="form-control" autocomplete="off" required ng-maxlength="15">
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
										name="backSupportTeam" class="form-control" disabled> <input
										ng-model="ctrlUser.userdetails.regAgency" name="regAgency"
										class="form-control" disabled>
								</div>
							</div>

							<div class="col-md-6" style="border-left: 1px solid #c8c8c8">

								<div class="form-group has-feedback" ng-class="{ 'has-error' : userForm.userName.$invalid && !userForm.userName.$pristine }">
									<label for="userName" class="text-muted">Login Name<span
										style="color: red">*</span></label> <input
										ng-model="ctrlUser.userdetails.userName" name="userName"
										type="text" ng-minlength="3" ng-maxlength="20"
										placeholder="Login Name"
										onChange="this.value=this.value.toLowerCase();"
										class="form-control" autocomplete="off" required>
										<p ng-show="userForm.userName.$error.minlength"
											class="help-block">Loginname is too short minlength 3.</p>
										<p ng-show="userForm.userName.$error.maxlength"
											class="help-block">Loginname is too long maxlength 20.</p>
								</div>

								<div class="form-group has-feedback">
									<label for="email" class="text-muted" ng-class="{ 'has-error' : userForm.email.$invalid && !userForm.email.$pristine }">Email<span
										style="color: red">*</span></label> <input
										ng-model="ctrlUser.userdetails.email" type="email"
										name="email" autocomplete="off" placeholder="Email"
										maxlength="100" class="form-control" required ng-minlength="2">
										<p ng-show="userForm.email.$error.minlength"
											class="help-block" style="color: red">Email is too short minlength 2. '@' format.</p>
								</div>

								<div class="form-group has-feedback" ng-class="{ 'has-error' : userForm.password.$invalid && !userForm.password.$pristine }">
									<label for="password" class="text-muted">Password<span
										style="color: red">*</span></label> <input
										ng-model="ctrlUser.userdetails.password" name="password"
										type="password" placeholder="Password" 
										class="form-control" ng-minlength="6" ng-maxlength="20">
										<p ng-show="userForm.password.$error.minlength"
											class="help-block">Password is too short minlength 6.</p>
										<p ng-show="userForm.password.$error.maxlength"
											class="help-block">Password is too long maxlength 20.</p>
								</div>

								<div class="form-group has-feedback" ng-class="{ 'has-error' : userForm.rePassword.$invalid && !userForm.rePassword.$pristine }">
									<label for="rePassword" class="text-muted">Re-type
										password<span style="color: red">*</span>
									</label> <input ng-model="ctrlUser.userdetails.rePassword"
										name="rePassword" type="password"
										placeholder="Re-type password" ng-minlength="6" ng-maxlength="20"
										class="form-control">
									    <p ng-show="ctrlUser.userdetails.password !== ctrlUser.userdetails.rePassword" style="color: red">Passwords do not match.</p>
										<!-- <p ng-show="userForm.rePassword.$error.match">Passwords do not match.</p> -->
										<p ng-show="userForm.rePassword.$error.minlength"
											class="help-block">Password is too short minlength 6.</p>
										<p ng-show="userForm.rePassword.$error.maxlength"
											class="help-block">Password is too long maxlength 20.</p>
								</div>

							</div>
							<div class="clearfix"></div>

							<div class="text-center">
								<button type="submit" id="btnRegister" ng-click="regitration()" class="btnf btn-info" ng-disabled="userForm.$invalid">Register</button>
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
		<div class="modal-content" id="ForgotPasswordFormdiv">
			<div class="modal-header">
				<button type="button" class="close popupForgotPasswordClose"
					data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">Forgot Password</h4>
			</div>
			<form name="ForgotPasswordForm"  ng-controller="ForgotPassController as ctrl"
						ng-submit="ctrl.submit()" class="mb-lg">
				<div class="modal-body">
					<div class="form-group has-feedback">
						<input id="email" name="email"
							ng-model="ctrl.fpEmail.email" type="text" placeholder="Enter e-mail to recover your password!"
							onChange="this.value=this.value.toLowerCase();"
							autocomplete="off" required class="form-control"> <span
							class="icon-envelope form-control-feedback text-muted"></span>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button"
						class="btn btn-sm btn-danger popupForgotPasswordClose"
						data-dismiss="modal">Cancel</button>
					<button type="submit" id="btnForgotPasswordSend"
						class="btn btn-sm btn-primary">Send</button>
				</div>
			</form>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>

</body>

</html>