<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en-US">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

<title>A2zcinema | Moviebooking</title>

<link rel="stylesheet" href="static/assets/css/bootstrap.css" id="bscss">
<link rel="stylesheet" href="static/assets/css/app.css" id="maincss">
<link rel="stylesheet" href="static/mainfiles/js/bootstrap.min.css"></link>
<script type="text/javascript" src="static/mainfiles/js/jquery.min.js"></script>
<script type="text/javascript"
	src="static/mainfiles/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="static/mainfiles/js/site-demos.css"></link>

<link rel="stylesheet" href="static/mainfiles/css/simple-line-icons.css">
<link rel="stylesheet" href="static/mainfiles/css/font-awesome.min.css">
<link rel="stylesheet" href="static/mainfiles/css/style.css">
<script type="text/javascript" src="static/mainfiles/js/angular.js"></script>
<script type="text/javascript" src="static/mainfiles/js/ngStorage.js"></script>
<script src="<c:url value='/static/js/app.js' />"></script>
<script
	src="<c:url value='/static/js/aboutcontroller/aboutuscontroller.js' />"></script>
<script src="static/js/homecontroller/home_service.js"></script>
<script
	src="<c:url value='/static/js/homecontroller/home_controller.js' />"></script>
<script src="<c:url value='/static/js/loginjs/login.js' />"></script>
<script type="text/javascript" src="static/mainfiles/js/plugins.js"></script>
<script type="text/javascript" src="static/mainfiles/js/custom.js"></script>
<link rel="stylesheet" type="text/css"
	href="static/mainfiles/css/useroneprofile.css" />

<style type="text/css">
.myrow-container {
	margin: 5px;
}
</style>
</head>
<body ng-app="profileApp">

	<div class="sidebar-menu-container" id="sidebar-menu-container">

		<div class="sidebar-menu-overlay"></div>
		<div class="sidebar-menu-inner">
			<header class="site-header">
				<div id="main-header" class="main-header header-sticky">
					<div class="inner-header clearfix" id="wrapper">
						<div class="logo">
							<a rel="nofollow" href="#"><img
								src="static/mainfiles/images/logo2.png" /></a>
						</div>
						<div class="header-right-toggle pull-right hidden-md hidden-lg">
							<a href="javascript:void(0)" class="side-menu-button"><i
								class="fa fa-bars"></i></a>
						</div>
						<nav class="main-navigation pull-right hidden-xs hidden-sm">
							<ul>
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
								<li><a href="${pageContext.request.contextPath}/contact">Contact us</a></li>
								<li>
									<div class="text-center" ng-app="profileApp"
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
											<button type="submit" class="btn btn-success mt-lg"
												ng-click="logout()" title="Logout">
												<a href="javascript:()"> Logout</a>
											</button>
										</div>
										<div ng-if="aboutus != 1">
											<button type="submit" class="btn btn-success mt-lg"
												id="loginPop" title="Login">
												<a> Login</a>
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
			<div class="col-lg-12 panel panel-default">
				<div class="col-lg-12 panel panel-default">
					<h2 class="text-center">
						Online MovieBooking
						<h2>
				</div>
				<div class="row row-margin">
					<div class="col-lg-3 right-div">
						<div class="panel panel-default" style="width: 240px; height: 340px;">
						<span> <a href="https://in.bookmyshow.com/bengaluru/movies"
								target="_blank" ><img src="static/mainfiles/img/latest-picture-9.JPG"
								style="width: 236px; height: 302px" title="Dr. Madana" /></a>
								<h5 style="text-align:center;">
									<a href="https://in.bookmyshow.com/bengaluru/movies"
									target="_blank">Dr. Madana</a>
								</h5>
							</span>
						</div>
					</div>
					
					<div class="col-lg-3 left-div">
						<div class="panel panel-default" style="width: 240px; height: 340px;">
						<span> <a href="https://in.bookmyshow.com/bengaluru/movies"
								target="_blank" ><img src="static/mainfiles/img/latest-picture-10.JPG"
								style="width: 236px; height: 302px" title="Rama Rama Re" /></a>
								<h5 style="text-align:center;">
									<a href="https://in.bookmyshow.com/bengaluru/movies"
									target="_blank">Rama Rama Re</a>
								</h5>
							</span>
						</div>
					</div>
					<div class="col-lg-3 left-div">
						<div class="panel panel-default" style="width: 240px; height: 340px;">
						<span> <a href="https://in.bookmyshow.com/bengaluru/movies"
								target="_blank" ><img src="static/mainfiles/img/latest-picture-11.JPG"
								style="width: 236px; height: 302px" title="M.S. Dhoni: The Untold Story" /></a>
								<h5 style="text-align:center;">
									<a href="https://in.bookmyshow.com/bengaluru/movies"
									target="_blank">M.S. Dhoni: The Untold Story</a>
								</h5>
							</span>
						</div>
					</div>
					<div class="col-lg-3 left-div">
						<div class="panel panel-default" style="width: 240px; height: 340px;">
						<span> <a href="https://in.bookmyshow.com/bengaluru/movies"
								target="_blank" ><img src="static/mainfiles/img/latest-picture-12.JPG"
								style="width: 236px; height: 302px" title="Pink" /></a>
								<h5 style="text-align:center;">
									<a href="https://in.bookmyshow.com/bengaluru/movies"
									target="_blank">Pink</a>
								</h5>
							</span>
						</div>
					</div>
				</div><br>
				
				<div class="row row-margin">
					<div class="col-lg-3 left-div">
						<div class="panel panel-default" style="width: 240px; height: 340px;">
						<span> <a href="https://in.bookmyshow.com/bengaluru/movies"
								target="_blank" ><img src="static/mainfiles/img/latest-picture-13.JPG"
								style="width: 236px; height: 302px" title="Gandhigiri" /></a>
								<h5 style="text-align:center;">
									<a href="https://in.bookmyshow.com/bengaluru/movies"
									target="_blank">Gandhigiri</a>
								</h5>
							</span>
						</div>
					</div>
					<div class="col-lg-3 left-div">
						<div class="panel panel-default" style="width: 240px; height: 340px;">
						<span> <a href="https://in.bookmyshow.com/bengaluru/movies"
								target="_blank" ><img src="static/mainfiles/img/latest-picture-14.JPG"
								style="width: 236px; height: 302px" title="Motu Patlu - King of Kings" /></a>
								<h5 style="text-align:center;">
									<a href="https://in.bookmyshow.com/bengaluru/movies"
									target="_blank">Motu Patlu - King of Kings</a>
								</h5>
							</span>
						</div>
					</div>
					<div class="col-lg-3 left-div">
						<div class="panel panel-default" style="width: 240px; height: 340px;">
						<span> <a href="https://in.bookmyshow.com/bengaluru/movies"
								target="_blank" ><img src="static/mainfiles/img/latest-picture-15.JPG"
								style="width: 236px; height: 302px" title="MSG-The Warrior Lion Heart" /></a>
								<h5 style="text-align:center;">
									<a href="https://in.bookmyshow.com/bengaluru/movies"
									target="_blank">MSG-The Warrior Lion Heart</a>
								</h5>
							</span>
						</div>
					</div>
					<div class="col-lg-3 left-div">
						<div class="panel panel-default" style="width: 240px; height: 340px;">
						<span> <a href="https://in.bookmyshow.com/bengaluru/movies"
								target="_blank" ><img src="static/mainfiles/img/latest-picture-16.JPG"
								style="width: 236px; height: 302px" title="Tutak Tutak Tutiya" /></a>
								<h5 style="text-align:center;">
									<a href="https://in.bookmyshow.com/bengaluru/movies"
									target="_blank">Tutak Tutak Tutiya</a>
								</h5>
							</span>
						</div>
					</div>
				</div><br>
				
				<div class="row row-margin">
					<div class="col-lg-3 left-div">
						<div class="panel panel-default" style="height: 200px;">
							<span> <a
										href="https://in.bookmyshow.com/bengaluru/movies"
										target="_blank" ><img src="static/mainfiles/img/latest-picture-1.jpg"
								style="width: 305px; height: 170px" title="Jack Reacher: Never Go Back Trailer (2016)" /></a>
								<h5 style="text-align:center;">
									<a
										href="https://in.bookmyshow.com/bengaluru/movies"
										target="_blank">Jack Reacher: Never Go Back Trailer (2016)</a>
								</h5>
							</span>
						</div>
					</div>
					<div class="col-lg-3 left-div">
						<div class="panel panel-default" style="height: 200px;">
						<span> <a href="https://in.bookmyshow.com/bengaluru/movies"
								target="_blank" ><img src="static/mainfiles/img/latest-picture-2.jpg"
								style="width: 305px; height: 170px" title="31st OCTOBER | 21st Oct 2016 | Soha Ali Khan, Vir Das" /></a>
								<h5 style="text-align:center;">
									<a href="https://in.bookmyshow.com/bengaluru/movies"
									target="_blank">31st OCTOBER | 21st Oct 2016 |Soha Ali Khan</a>
								</h5>
							</span>
						</div>
					</div>
					<div class="col-lg-3 left-div">
						<div class="panel panel-default" style="height: 200px;">
						<span> <a href="https://in.bookmyshow.com/bengaluru/movies"
								target="_blank" ><img src="static/mainfiles/img/latest-picture-3.jpg"
								style="width: 305px; height: 170px" title="DoctorStrange | Strength - TV Spot | In cinemas November 4" /></a>
								<h5 style="text-align:center;">
									<a href="https://in.bookmyshow.com/bengaluru/movies"
									target="_blank">DoctorStrange | Strength - TV Spot</a>
								</h5>
							</span>
						</div>
					</div>
					<div class="col-lg-3 left-div">
						<div class="panel panel-default" style="height: 200px;">
						<span> <a href="https://in.bookmyshow.com/bengaluru/movies"
								target="_blank" ><img src="static/mainfiles/img/latest-picture-4.jpg"
								style="width: 305px; height: 170px" title="Nagarahavu | Dr. Vishnuvardhan | Ramya" /></a>
								<h5 style="text-align:center;">
									<a href="https://in.bookmyshow.com/bengaluru/movies"
									target="_blank">Nagarahavu | Dr. Vishnuvardhan | Ramya</a>
								</h5>
							</span>
						</div>
					</div>
				</div><br>
				<div class="row row-margin"> 
					<div class="col-lg-3 left-div">
						<div class="panel panel-default" style="height: 200px;">
						<span> <a href="https://in.bookmyshow.com/bengaluru/movies"
								target="_blank" ><img src="static/mainfiles/img/latest-picture-5.jpg"
								style="width: 305px; height: 170px" title="INFERNO: India Exclusive Trailer" /></a>
								<h5 style="text-align:center;">
									<a href="https://in.bookmyshow.com/bengaluru/movies"
									target="_blank">INFERNO: India Exclusive Trailer</a>
								</h5>
							</span>
						</div>
					</div>
					<div class="col-lg-3 left-div">
						<div class="panel panel-default" style="height: 200px;">
						<span> <a href="https://in.bookmyshow.com/bengaluru/movies"
								target="_blank" ><img src="static/mainfiles/img/latest-picture-6.JPG"
								style="width: 305px; height: 170px" title="Mukunda Murari" /></a>
								<h5 style="text-align:center;">
									<a href="https://in.bookmyshow.com/bengaluru/movies"
									target="_blank">Mukunda Murari</a>
								</h5>
							</span>
						</div>
					</div>
					<div class="col-lg-3 left-div">
						<div class="panel panel-default" style="height: 200px;">
						<span> <a href="https://in.bookmyshow.com/bengaluru/movies"
								target="_blank" ><img src="static/mainfiles/img/latest-picture-7.JPG"
								style="width: 305px; height: 170px" title="Nagarahaavu" /></a>
								<h5 style="text-align:center;">
									<a href="https://in.bookmyshow.com/bengaluru/movies"
									target="_blank">Nagarahaavu</a>
								</h5>
							</span>
						</div>
					</div>
					<div class="col-lg-3 left-div">
						<div class="panel panel-default" style="height: 200px;">
						<span> <a href="https://in.bookmyshow.com/bengaluru/movies"
								target="_blank" ><img src="static/mainfiles/img/latest-picture-8.JPG"
								style="width: 305px; height: 170px" title="Jaguar" /></a>
								<h5 style="text-align:center;">
									<a href="https://in.bookmyshow.com/bengaluru/movies"
									target="_blank">Jaguar</a>
								</h5>
							</span>
						</div>
					</div>
				</div>
			</div><br>
			<!--  <div class="col-lg-12 panel panel-default">
					<div class="col-lg-12 panel panel-default">
						<h2 class="text-center">Online MovieBooking<h2>
					</div>
				</div>
				
				<div class="col-lg-12 panel panel-default">
				   <div class="col-lg-3 panel panel-default">
				   <samp>
					  <img src="static/mainfiles/img/crowdfunding.jpg"
						style="width: 300px; height: 300px" />
						<h5><a href="http://www.way2tutorial.com/html/html_marquee_image.php">Banjo Official Trailer</a></h5></samp>
				</div>
				</div> -->
			<!-- <div class="col-lg-12 panel panel-default">
				<div class="col-lg-12 panel panel-default">
					<h2 class="text-center">Online MovieBooking<h2>
				</div>
				<div class="col-lg-3 panel panel-default">
					<img src="static/mainfiles/img/crowdfunding.jpg"
						style="width: 300px; height: 300px" />
				</div>
				<div class="col-lg-3 panel panel-default">
					<img src="static/mainfiles/img/crowdfunding.jpg"
						style="width: 300px; height: 300px" />
				</div>
				<div class="col-lg-3 panel panel-default">
					<img src="static/mainfiles/img/crowdfunding.jpg"
						style="width: 300px; height: 300px" />
				</div>
				<div class="col-lg-3 panel panel-default">
					<img src="static/mainfiles/img/crowdfunding.jpg"
						style="width: 300px; height: 300px" />
				</div>
				</div>
				
				<div class="col-lg-12 panel panel-default" style="height: 550px">
				<div class="col-lg-3 panel panel-default">
					<img src="static/mainfiles/img/crowdfunding.jpg"
						style="width: 300px; height: 300px" />
				</div>
				<div class="col-lg-3 panel panel-default">
					<img src="static/mainfiles/img/crowdfunding.jpg"
						style="width: 300px; height: 300px" />
				</div>
				<div class="col-lg-3 panel panel-default">
					<img src="static/mainfiles/img/crowdfunding.jpg"
						style="width: 300px; height: 300px" />
				</div>
				<div class="col-lg-3 panel panel-default">
					<img src="static/mainfiles/img/crowdfunding.jpg"
						style="width: 300px; height: 300px" />
				</div>
				</div> -->
			<!-- <div class="col-lg-12 panel panel-default">
							<div id="ninja-slider" class="panel panel-default">
								<h4 class="text-muted text-thin  " margine="0px 20px 0px 0px">&nbsp;&nbsp;&nbsp;&nbsp; Latest
									Movies/Trailer</h4>
								<div class="slider-inner">
									<div id="thumbs">

										<span onclick="nslider.displaySlide(10)"><img
											src="static/mainfiles/images/play1.JPG" />
											<h5>Doddmane Hudga-Official Trailer</h5></span> <span
											onclick="nslider.displaySlide(11)"><img
											src="static/mainfiles/images/play2.JPG" />
											<h5>Banjo Official Trailer</h5></span> <span
											onclick="nslider.displaySlide(12)"><img
											src="static/mainfiles/images/play3.JPG" />
											<h5>Nani Majnu Movie Theatrical Trailer</h5></span> <span
											onclick="nslider.displaySlide(13)"><img
											src="static/mainfiles/images/play4.JPG" />
											<h5>Freaky Ali Official Trailer</h5></span>

									</div>
								</div>
							</div>
						</div> -->
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
						<div class="col-md-10">
							<!-- <div class="three spacing"></div> -->
							<p>
								Copyright &copy; 2016 A2ZCinemaWorld | Powered By : <a
									rel="nofollow" href="http://www.ishnira.com/">Ishnira
									Technologies Pvt. Ltd.</a> <a href="http://www.ishnira.com/"></a>
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
									<label for="email" class="text-muted" ng-class="{ 'has-error' : userForm.email.$invalid && !userForm.email.$pristine }">Email<span
										style="color: red">*</span></label> <input
										ng-model="ctrlUser.userdetails.email" type="email"
										name="email" autocomplete="off" placeholder="Email"
										maxlength="100" class="form-control" required ng-minlength="2">
										<p ng-show="userForm.email.$error.minlength"
											class="help-block" style="color: red">Email is too short minlength 2. '@' format.</p>
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