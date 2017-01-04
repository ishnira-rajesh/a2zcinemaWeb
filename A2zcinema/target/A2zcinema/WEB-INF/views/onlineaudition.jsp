<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en-US">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

<title>A2zcinema | Onlineaudition</title>

<link rel="stylesheet" href="static/assets/css/bootstrap.css" id="bscss">
<link rel="stylesheet" href="static/assets/css/app.css" id="maincss">
<link rel="stylesheet" href="static/mainfiles/js/bootstrap.min.css"></link>
<script type="text/javascript" src="static/mainfiles/js/jquery.min.js"></script>
<script type="text/javascript"
	src="static/mainfiles/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="static/mainfiles/js/site-demos.css"></link>

<script type="text/javascript" src="static/mainfiles/js/angular.js"></script>
<script type="text/javascript" src="static/mainfiles/js/ngStorage.js"></script>
<script src="<c:url value='/static/js/app.js'/>"></script>
<script src="<c:url value='/static/js/homecontroller/home_service.js'/>"></script>
<script
	src="<c:url value='/static/js/homecontroller/home_controller.js' />"></script>
<script
	src="<c:url value='/static/js/auditioncontroller/aud_controller.js' />"></script>
<script
	src="<c:url value='/static/js/aboutcontroller/aboutuscontroller.js' />"></script>
<script src="<c:url value='/static/js/loginjs/login.js' />"></script>
<link
	href="<c:url value='/static/css/auditionslider/ninja-slider22.css' />"
	rel="stylesheet"></link>
<script
	src="<c:url value='/static/css/auditionslider/ninja-slider22.js' />"></script>
<link rel="stylesheet" href="static/mainfiles/css/simple-line-icons.css">
<link rel="stylesheet" href="static/mainfiles/css/font-awesome.min.css">
<link rel="stylesheet" href="static/mainfiles/css/style.css">
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
								<li><div class="text-center"
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
									</div></li>
							</ul>
						</nav>
					</div>
				</div>
			</header>
		</div>

		<section>
			<div class="myrow-container">
				<div class="row">
					<div class="col-lg-12 panel panel-default">
						<!-- -----------------------------------------------------------------for birthday list -->
						<div class="col-lg-2">
							<div class="panel panel-default">
								<fieldset>
									<div class="form-group panel panel-default">
										<h4 class="text-muted text-thin text-center">Celebrity
											Birthday</h4>
										<img src="static/mainfiles/img/2.jpg"
											style="height: 165px; width: 150px" hspace="20" alt=""></img>
										<h6 class="text-center">celebrity Name</h6>
									</div>
								</fieldset>
								<fieldset>
									<div class="form-group panel panel-default">
										<h4 class="text-muted text-thin text-center">Premium
											member Birthday</h4>
										<img src="static/mainfiles/img/1.jpg"
											style="height: 165px; width: 150px" hspace="20" alt=""></img>
										<h6 class="text-center">premium Member Name</h6>

									</div>
								</fieldset>
								<fieldset>
									<div class="form-group panel panel-default">
										<h4 class="text-muted text-thin text-center">Premium
											member Birthday</h4>
										<img src="static/mainfiles/img/1.jpg"
											style="height: 165px; width: 150px" hspace="20" alt=""></img>
										<h6 class="text-center">premium Member Name</h6>

									</div>
								</fieldset>
							</div>
						</div>
						<!-- ---------------------------------------------- ------------------ birthday end -->
						<!------------------------------------------------------------------------ for list  -->
						<div class="col-lg-8">
							<!-- <div class="col-lg-6  panel panel-default"
								style="overflow-y: scroll; height: 275px">
								<h4 class="text-muted text-thin text-center">Audition News</h4>
								<table class="table table-hover">
									<tbody>
										<tr>
											<td><a href="http://www.auditiondate.in/indian-idol-season-7-2014-registration-venue-online-audition-date/" target="_blank">Indian Idol Season-7 2016 Auditions & Registration Details</a></td>
										</tr>
										<tr>
										<td><a href="http://www.auditionform.in/sur-sangram-season-4-2016-auditions-registration/" target="_blank">Sur Sangram season 4 2016 Auditions Details</a></td>
										</tr>
										<tr>
											<td><a href="http://www.motachashma.com/auditions/boogie-woogie-kids-championship-auditions.php" target="_blank">boogie-woogie-kids-championship-auditions</a></td>
										</tr>
										<tr>
											<td><a href="http://www.auditionform.in/movie-poster-design-contest/" target="_blank">Movie Poster Design Anna: Kisan Baburao Hazare Contest</a></td>
										</tr>
									</tbody>
								</table>

							</div>
							<div class="col-lg-6  panel panel-default "
								style="overflow-y: scroll; height: 275px">
								<h4 class="text-muted text-thin text-center">Movies News</h4>
								<table class="table table-hover">
									<tbody>
										<tr>
											<td><a href="http://www.filmibeat.com/kannada/news/2016/puneeth-rajkumar-signs-pavan-wadeyars-next-243764.html" target="_blank">Puneeth Rajkumar Signs Pavan Wadeyar's Next!</a></td>
										</tr>
										<tr>
											<td><a href="http://timesofindia.indiatimes.com/entertainment/kannada/movies/news/A-different-kind-of-Ramayana/articleshow/54719538.cms" target="_blank">Prakash Raj unfolds a different kind of Ramayana</a></td>
										</tr>
										<tr>
											<td><a href="http://www.filmykannada.com/news-upendra-first-look-from-dr-modi-is-out--318853.htm" target="_blank">Upendra First Look From Dr Modi Is Out !</a></td>
										</tr>
										<tr>
											<td><a href="http://www.indiaglitz.com/nikil-kumar-signs-second-film-kannada-news-168691.html" target="_blank">Nikil Kumar signs second film</a></td>
										</tr>
										<tr>
											<td><a href="http://www.filmibeat.com/kannada/movies/jaguar/fan-photos-50825.html" target="_blank">Tamanna's Latest Photos From Jaguar</a></td>
										</tr>
										<tr>
											<td><a href="http://www.filmykannada.com/news-radhika-fires-on-re-marriage-rumors-326774.htm" target="_blank">Radhika Fires On Re-Marriage Rumors</a></td>
										</tr>
										<tr>
											<td><a href="http://karnataka.indiaeveryday.in/news-sudeep-hebbuli-nearing-completion-1481-2735252.htm" target="_blank">Sudeep Hebbuli nearing completion</a></td>
										</tr>
										<tr>
											<td><a href="http://www.filmibeat.com/bollywood/news/2016/ms-dhoni-lives-and-shares-his-untold-story-with-revital-h-consumers-243220.html" target="_blank">M.S Dhoni Shares & Lives His Untold Story With Revital H Consumers !</a></td>
										</tr>
										<tr>
											<td><a href="http://www.filmibeat.com/kannada/news/2016/read-what-sudeep-has-to-say-about-bigg-boss-kannada-season-4-243502.html" target="_blank">Read What Sudeep Has To Say About Bigg Boss Kannada Season 4</a></td>
										</tr>
										<tr>
											<td><a href="http://www.msn.com/en-in/entertainment/bollywood/chinkara-case-salman-khan-files-rs100-cr-defamation-suit-against-tv-channel/ar-BBx5Nm1?srcref=rss" target="_blank">Salman files Rs 100 cr defamation suit against TV channel</a></td>
										</tr>
									</tbody>
								</table>

							</div> -->
							<div class="col-lg-12 panel panel-default ">
								<h4 class="text-muted text-thin text-center">Premium
									Members</h4>
								<div>
									<div class="innervid panel panel-default " id="slider-innervid">
										<ul ng-controller="AuditionController as ctrl">
											<li ng-repeat="u in ctrl.users">
												<div class="col-lg-8">
													<fieldset>
														<div class="form-group has-feedback">
															<label class="text-muted col-lg-4"> Name:</label> <label
																class="text-thin col-lg-6"><span
																	ng-bind="u.first_name +' ' + u.last_name"></span></label>
														</div>
														<div class="form-group has-feedback">
															<label class="text-muted col-lg-4">Profession:</label> <label
																class="text-thin col-lg-6">
																<span ng-if="u.profession=='actors'"><span ng-bind="u.actorType"></span></span>
																<span ng-if="u.profession=='backSupports'"><span ng-bind="u.backSupportTeam"></span></span>
																<span ng-if="u.profession=='regAgencys'"><span ng-bind="u.regAgency"></span></span>
																</label>
														</div>
														<div class="form-group has-feedback">
															<label class="text-muted col-lg-4">Hometown:</label> <label
																class="text-thin col-lg-5"><span
																ng-bind="u.pm_district + ' ' +'(' +u.pm_state +')'"></span></label>
														</div>
														<div class="form-group has-feedback">
															<label class="text-muted col-lg-4">Age:</label> <label
																class="text-thin col-lg-6"><span ng-bind="u.age + ' year old'"></span></label>
														</div>
														<div class="form-group has-feedback">
															<label class="text-muted col-lg-4">Details:</label> <label
																class="text-thin col-lg-6"
																ng-click="redirectpage(u.user_id)"> <a
																href="${pageContext.request.contextPath}/useronedetalis">more details...</a>
															</label>
														</div>
													</fieldset>
													</br>
													<fieldset>
													    <div class="form-group has-feedback">
															<label class="text-muted col-lg-4">About me:</label> 
														</div>
														</fieldset>
													<fieldset>
													<span ng-if="u.profession=='actors'">
														<div class="form-group has-feedback">
															<label class="text-thin col-lg-10"><span ng-bind="u.aboutme"></span></label>
														</div>
													</span>
													<span ng-if="u.profession=='backSupports'">
														<div class="form-group has-feedback">
															<label class="text-thin col-lg-10"><span ng-bind="u.aboutme"></span></label>
														</div>
													</span>	
													<span ng-if="u.profession=='regAgencys'">
														<div class="form-group has-feedback">
															<label class="text-thin col-lg-10"><span ng-bind="u.aboutAgn"></span></label>
														</div>
													</span>
													</fieldset>
												</div>
												<div class="col-lg-4 " style="margin-top: 2px;">
													<img src="static/mainfiles/img/3.jpg" height="240"
														width="180" alt="" />
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
							
							<div class="col-lg-6  panel panel-default"
								style="overflow-y: scroll; height: 415px">
								<h4 class="text-muted text-thin text-center">Audition News</h4>
								<table class="table table-hover">
									<tbody>
										<tr>
											<td><a href="http://www.auditiondate.in/indian-idol-season-7-2014-registration-venue-online-audition-date/" target="_blank">Indian Idol Season-7 2016 Auditions & Registration Details</a></td>
										</tr>
										<tr>
										<td><a href="http://www.auditionform.in/sur-sangram-season-4-2016-auditions-registration/" target="_blank">Sur Sangram season 4 2016 Auditions Details</a></td>
										</tr>
										<tr>
											<td><a href="http://www.motachashma.com/auditions/boogie-woogie-kids-championship-auditions.php" target="_blank">boogie-woogie-kids-championship-auditions</a></td>
										</tr>
										<tr>
											<td><a href="http://www.auditionform.in/movie-poster-design-contest/" target="_blank">Movie Poster Design Anna: Kisan Baburao Hazare Contest</a></td>
										</tr>
									</tbody>
								</table>

							</div>
							<div class="col-lg-6  panel panel-default "
								style="overflow-y: scroll; height: 415px">
								<h4 class="text-muted text-thin text-center">Movies News</h4>
								<table class="table table-hover">
									<tbody>
										<tr>
											<td><a href="http://www.filmibeat.com/kannada/news/2016/puneeth-rajkumar-signs-pavan-wadeyars-next-243764.html" target="_blank">Puneeth Rajkumar Signs Pavan Wadeyar's Next!</a></td>
										</tr>
										<tr>
											<td><a href="http://timesofindia.indiatimes.com/entertainment/kannada/movies/news/A-different-kind-of-Ramayana/articleshow/54719538.cms" target="_blank">Prakash Raj unfolds a different kind of Ramayana</a></td>
										</tr>
										<tr>
											<td><a href="http://www.filmykannada.com/news-upendra-first-look-from-dr-modi-is-out--318853.htm" target="_blank">Upendra First Look From Dr Modi Is Out !</a></td>
										</tr>
										<tr>
											<td><a href="http://www.indiaglitz.com/nikil-kumar-signs-second-film-kannada-news-168691.html" target="_blank">Nikil Kumar signs second film</a></td>
										</tr>
										<tr>
											<td><a href="http://www.filmibeat.com/kannada/movies/jaguar/fan-photos-50825.html" target="_blank">Tamanna's Latest Photos From Jaguar</a></td>
										</tr>
										<tr>
											<td><a href="http://www.filmykannada.com/news-radhika-fires-on-re-marriage-rumors-326774.htm" target="_blank">Radhika Fires On Re-Marriage Rumors</a></td>
										</tr>
										<tr>
											<td><a href="http://karnataka.indiaeveryday.in/news-sudeep-hebbuli-nearing-completion-1481-2735252.htm" target="_blank">Sudeep Hebbuli nearing completion</a></td>
										</tr>
										<tr>
											<td><a href="http://www.filmibeat.com/bollywood/news/2016/ms-dhoni-lives-and-shares-his-untold-story-with-revital-h-consumers-243220.html" target="_blank">M.S Dhoni Shares & Lives His Untold Story With Revital H Consumers !</a></td>
										</tr>
										<tr>
											<td><a href="http://www.filmibeat.com/kannada/news/2016/read-what-sudeep-has-to-say-about-bigg-boss-kannada-season-4-243502.html" target="_blank">Read What Sudeep Has To Say About Bigg Boss Kannada Season 4</a></td>
										</tr>
										<tr>
											<td><a href="http://www.msn.com/en-in/entertainment/bollywood/chinkara-case-salman-khan-files-rs100-cr-defamation-suit-against-tv-channel/ar-BBx5Nm1?srcref=rss" target="_blank">Salman files Rs 100 cr defamation suit against TV channel</a></td>
										</tr>
									</tbody>
								</table>

							</div>
						</div>
						
						<!---------------------------------- for list end  -->
						<div class="col-lg-2">
							<div class="panel panel-default">
								<h4 class="text-muted text-thin text-center">Member List</h4>
								<div class="form-group panel panel-default">
									<img src="static/mainfiles/img/mSanviSundar.jpg"
										style="height: 100px; width: 120px; margin: 4px 20px 0px 30px"
										alt="" />
									<h6 class="text-center">Sanvi Sundar(Child Actress)</h6>
								</div>

								<div class="form-group panel panel-default">
									<img src="static/mainfiles/img/mDharasingh.jpg"
										style="height: 100px; width: 120px; margin: 4px 20px 0px 30px"
										alt="" />
									<h6 class="text-center">Dara Singh(Director)</h6>
								</div>

								<div class="form-group panel panel-default">
									<img src="static/mainfiles/img/mHarsha.jpg"
										style="height: 100px; width: 120px; margin: 4px 20px 0px 30px"
										alt="" />
									<h6 class="text-center">Harsha Putta(Actor)</h6>
								</div>

								<div class="form-group panel panel-default">
									<img src="static/mainfiles/img/mValli.jpg"
										style="height: 100px; width: 120px; margin: 4px 20px 0px 30px"
										alt="" />
									<h6 class="text-center">Valli(Actress)</h6>
								</div>
								<div class="form-group panel panel-default">
									<img src="static/mainfiles/img/mSuhailKhan.jpg"
										style="height: 100px; width: 120px; margin: 4px 20px 0px 30px"
										alt="" />
									<h6 class="text-center">Suhail Khan(Actor)</h6>
								</div>
							</div>
						</div>
						<!-- <div class="col-lg-10 panel panel-default">
						   <div class="form-group panel panel-default">
								<img src="static/mainfiles/img/mSanviSundar.jpg"
									style="height: 100px; width: 120px; margin: 4px 20px 0px 30px"
									alt="" />
								<h6 class="text-center">Sanvi Sundar(Child Actress)</h6>
						   </div>
						</div> -->
						

						<!------------------------------------------------------------- Default panel contents -->
						<div class="col-lg-12 panel panel-default"
							ng-controller="AuditionController as ctrl">
							<div class="panel-heading">
								<span class="lead">List of Users </span>
							</div>
							<div class="col-lg-12 panel panel-default"
								style="overflow-y: scroll; height: 400px" class="tablecontainer">
								<table class="table table-hover">
									<thead>
										<tr>
											<th style="width: 15%">Profession</th>
											<th style="width: 15%">Name</th>
											<th style="width: 16%">City(State)</th>
											<th style="width: 15%">Language</th>
											<th style="width: 15%">Past Experiences</th>
											<th style="width: 15%">Film Industry</th>
											<th style="width: 15%">About me</th>
										</tr>
									</thead>
									<tbody>
										<tr ng-repeat="u in ctrl.users"
											ng-click="redirectpage(u.user_id)">
											<td ng-if="u.profession=='actors'"><span ng-bind="u.actorType"></span></td>
											<td ng-if="u.profession=='backSupports'"><span ng-bind="u.backSupportTeam"></span></td>
											<td ng-if="u.profession=='regAgencys'"><span ng-bind="u.regAgency"></span></td>
											<td><a
												href="${pageContext.request.contextPath}/useronedetalis"><span
													ng-bind="u.first_name +' ' + u.last_name"></span></a></td>
											<td><span ng-bind="u.pm_district + ' ' +'(' +u.pm_state +')'"></span></td>
											<td><span ng-bind="u.language"></span></td>
											<td><span ng-bind="u.previous_work_indusry"></span></td>
											<td><span ng-bind="u.film_industry_intrested"></span></td>
											<td ng-if="u.profession=='actors'"><i class="fa fa-info-circle" style="color:#5d9cec;" aria-hidden="true" title="{{u.aboutme}}"></i></td>
											<td ng-if="u.profession=='backSupports'"><i class="fa fa-info-circle" style="color:#5d9cec;" aria-hidden="true" title="{{u.aboutme}}"></i></span></td>
											<td ng-if="u.profession=='regAgencys'"><i class="fa fa-info-circle" style="color:#5d9cec;" aria-hidden="true" title="{{u.aboutAgn}}"></i></td>
											<td></td>
										</tr>
									</tbody>
								</table>
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
									class="help-block">Username is too long maxlength 30.</p> -->
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
								<select name="actorType" id="actorType" ng-model="ctrlUser.userdetails.actorType" ng-init="ctrlUser.userdetails.actorType='LeadActor'"  class="form-control"
									required title="Please select profession type."
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
								<select name="regAgency" id="regAgency" ng-model="ctrlUser.userdetails.regAgency"
								    ng-init="ctrlUser.userdetails.regAgency='Studios'"
								    class="form-control"
									required title="Please select profession type."
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