<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en-US">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

<title>A2zcinema | Movie Distribution</title>
<!-- BOOTSTRAP STYLES-->
<link href="static/assets/css/bootstrap2.css" rel="stylesheet" />
<link href="static/assets/css/font-awesome.css" rel="stylesheet" />
<!-- CUSTOM STYLES-->
<link href="static/assets/css/custom.css" rel="stylesheet" />
<script src="static/assets/js/jquery-1.10.2.js"></script>
<script type="text/javascript">
	function showhidecelebraty() {
		var div = document.getElementById("celebraty");
		if (div.style.display !== "none") {
			div.style.display = "none";
		} else {
			div.style.display = "block";
		}
	}
	function delete_rowcelebraty(no) {
		document.getElementById("rowceleb" + no + "").outerHTML = "";
	}
	
	function isNumber(evt)
    {
       var charCode = (evt.which) ? evt.which : event.keyCode
       if (charCode > 31 && (charCode < 48 || charCode > 57))
          return false;
       else
          return true;
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
<script src="static/js/homecontroller/home_service.js"></script>
<script src="static/admin/js/dashboard/adminDashboardController.js"></script>
<link rel="stylesheet" href="static/components/toastr/toastr.min.css">
<script src="static/components/toastr/toastr.min.js"></script>
<link rel="stylesheet" href="static/components/css/style.css">
<script src="static/js/aws/directives.js"></script>

<script src="static/admin/js/moviedistribution/moviedistribution.js"></script>


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
								<li><a rel="nofollow" href="#"><img
										src="static/mainfiles/images/logo2.png" /></a></li>
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
											href="${pageContext.request.contextPath}/moviebooking">Movie
												Tickets Booking</a></li>
									</ul></li>
								<li><a
									href="${pageContext.request.contextPath}/crowdfunding">Crowd
										Funding</a></li>
								<li><a
									href="${pageContext.request.contextPath}/onlinedistribution">Online
										Distribution</a></li>
								<li><a
									href="${pageContext.request.contextPath}/onlineaudition">Online
										Auditions</a></li>
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
				<div class="navbar-header"></div>
			</nav>
			<br>
			<br>
			<!-- /. NAV TOP  -->
			<nav class="navbar-default navbar-side" role="navigation">
				<div class="sidebar-collapse">

					<ul class="nav" id="main-menu">
						<li><a class="active-menu text-center"
							href="${pageContext.request.contextPath}/adminDashboard">Admin</a></li>
						<li class="text-center"><img
							src="static/mainfiles/img/mSanviSundar.jpg"
							class="user-image img-responsive" /></li>
						<li><a
							href="${pageContext.request.contextPath}/adminDashboard"><i
								class="fa fa-dashboard fa-2x"></i> Dashboard</a></li>
						<li><a
							href="${pageContext.request.contextPath}/adminProfileupload"><i
								class="fa fa-desktop fa-2x"></i> Profile Upload</a></li>

						<li><a href="${pageContext.request.contextPath}/adminUrllink"><i
								class="fa fa-qrcode fa-2x"></i> Create Event</a></li>
						<li><a
							href="${pageContext.request.contextPath}/adminPostervideo"><i
								class="fa fa-desktop fa-2x"></i>Poster & Trailer Upload</a></li>

						<li><a
							href="${pageContext.request.contextPath}/adminCrowfunding"><i
								class="fa fa-desktop fa-2x"></i>Crowd Funding</a></li>
						<li><a class="active-menu"
							href="${pageContext.request.contextPath}/adminMovieDistribution"><i
								class="fa fa-desktop fa-2x"></i>Movie Distribution</a></li>
						<li><a href="${pageContext.request.contextPath}/adminReport"><i
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
							<div class="panel-heading">
								<div class="col-md-9">Movie Distribution</div>

								<a id="button" onclick="showhidecelebraty()"
									class="btn btn-success">Movie Distribution List </a>
							</div>
							<div class="panel-body" ng-controller="MovieDisController as movieDisCtrl">
								<form name="movieDisForm">
									<div class="col-md-6">
										<label>Theater/Multiplex Name :</label>
										<input class="form-control" id="multiplexName" name="multiplexName" required autocomplete="off" maxlength="100"
										ng-model="movieDisCtrl.movieDis.multiplexName" onChange="this.value=this.value.substring(0, 1).toUpperCase() + this.value.substring(1);"   /> 
									</div>
									<div class="col-md-6">
										<label>Theater Owner Name :</label>
										<input class="form-control" id="theaterOwnerName" name="theaterOwnerName" required autocomplete="off" maxlength="50"
										ng-model="movieDisCtrl.movieDis.theaterOwnerName" onChange="this.value=this.value.substring(0, 1).toUpperCase() + this.value.substring(1);"   />
									</div>
									<div class="col-md-6">
										<label>Theater Address :</label>
										<input class="form-control" id="theaterAddress" name="theaterAddress" required autocomplete="off" maxlength="150"
										ng-model="movieDisCtrl.movieDis.theaterAddress"/>
									</div>
									<div class="col-md-6">
										<label>Theater City :</label>
										<input class="form-control" id="theaterCity" name="theaterCity" required autocomplete="off" maxlength="50"
										ng-model="movieDisCtrl.movieDis.theaterCity" onChange="this.value=this.value.substring(0, 1).toUpperCase() + this.value.substring(1);"   />
									</div>
									<div class="col-md-6">
										<label>Theater State :</label>
										<input class="form-control" id="theaterState" name="theaterState" required autocomplete="off" maxlength="50"
										ng-model="movieDisCtrl.movieDis.theaterState" onChange="this.value=this.value.substring(0, 1).toUpperCase() + this.value.substring(1);"   />
									</div>
									<div class="col-md-6">
										<label>Contact Person :</label>
										<input class="form-control" id="contactPersonName" name="contactPersonName" required autocomplete="off" maxlength="50"
										ng-model="movieDisCtrl.movieDis.contactPersonName" onChange="this.value=this.value.substring(0, 1).toUpperCase() + this.value.substring(1);" />
									</div>
									<div class="col-md-6">
										<label>Contact No :</label>
										<input class="form-control" id="contactNo" name="contactNo" required autocomplete="off" maxlength="15"
										ng-model="movieDisCtrl.movieDis.contactNo" onkeypress="return isNumber(event)"/>
									</div>
									<div class="col-md-6">
										<label>Enquiry Email :</label>
										<input type="email" class="form-control" id="enquiryEmail" name="enquiryEmail" required autocomplete="off" maxlength="50"
										ng-model="movieDisCtrl.movieDis.enquiryEmail"/>
									</div>
									<div class="col-md-6">
										<label>Rent Period :</label>
										<!-- <input class="form-control" id="theaterRent" name="theaterRent" required autocomplete="off" maxlength="50"
										ng-model="movieDisCtrl.movieDis.theaterRent"/> -->
										<select ng-model="movieDisCtrl.movieDis.theaterRent" class="form-control"
												ng-init="movieDisCtrl.movieDis.theaterRent='1 Week'"
												name="theaterRent" class="form-control-text col-2">
												<option value="1 Week">1 Week</option>
												<option value="2 Week">2 Weeks</option>
												<option value="3 Week">3 Weeks</option>
												<option value="3 Week">4 Weeks</option>
												<option value="2 Months">2 Months</option>
												<option value="3 Months">3 Months</option>
												<option value="4 Months">4 Months</option>
												<option value="5 Months">5 Months</option>
												<option value="6 Months">6 Months</option>
												<option value="7 Months">7 Months</option>
												<option value="8 Months">8 Months</option>
												<option value="9 Months">9 Months</option>
												<option value="10 Months">10 Months</option>
												<option value="11 Months">11 Months</option>
												<option value="1 Year">1 Year</option>
												<option value="1.5 Year">1.5 Years</option>
											    <option value="2 Year">2 Years</option>
											    <option value="2.5 Year">2.5 Years</option>
											    <option value="3 Year">3 Years</option>
											    <option value="3.5 Year">3.5 Years</option>
											    <option value="4 Year">4 Years</option>
											    <option value="4.5 Year">4.5 Years</option>
											    <option value="5 Year">5 Years</option>
										</select>
										
									</div>

								</form>
								<div class="col-md-12">
								&nbsp;
								</div>
								<div class="col-md-12">
									 <a class="btn btn-success" data-ng-click="submit();" ng-disabled="movieDisForm.$invalid">Save</a> 
								     <a class="btn btn-danger btn-xs delete" data-ng-click="reset();">Reset</a> 
							   </div>
							</div>
							<div class="panel panel-default" id="celebraty"
								style="display: none; margin-top: 10px;">
								<div class="panel-heading">Movie Distribution Table</div>
								<div class="panel-body"
									ng-controller="MovieDisController as ctrl"
									style="overflow-y: scroll; overflow-x: scroll; height: 400px"
									class="tablecontainer">
									<table
										class="table table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th>Theater/Multiplex<span style="color: #fff;">_</span>Name
												</th>
												<th>Theater<span style="color: #fff;">_</span>Owner<span
													style="color: #fff;">_</span>Name
												</th>
												<th>Theater<span style="color: #fff;">_</span>Address<span
													style="color: #fff;">_</span></th>
												<th>Theater<span style="color: #fff;">_</span>City
												</th>
												<th>Theater<span style="color: #fff;">_</span>State
												</th>
												<th>Contact<span style="color: #fff;">_</span>Person
												</th>
												<th>Contact<span style="color: #fff;">_</span>No
												</th>
												<th>Enquiry<span style="color: #fff;">_</span>Email
												</th>
												<th>Rent<span style="color: #fff;">_</span>Period
												</th>
												<th>Payment</th>
											</tr>
										</thead>
										<tbody style="font-size: 13px;">
											<tr ng-repeat="u in ctrl.moviedata">
												<td><span ng-bind="u.multiplex_name"></span></td>
												<td><span ng-bind="u.theater_owner_name"></span></td>
												<td><span ng-bind="u.theater_address"></span></td>
												<td><span ng-bind="u.theater_city"></span></td>
												<td><span ng-bind="u.theater_state"></span></td>
												<td><span ng-bind="u.contact_person_name"></span></td>
												<td><span ng-bind="u.contact_no"></span></td>
												<td><span ng-bind="u.enquiry_email"></span></td>
												<td><span ng-bind="u.theater_rent"></span></td>
												<td><a class="btn btn-danger btn-xs delete" data-ng-click="rowDelete(u.movie_distribution_id);" title="Delete">delete</a></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>

						</div>

						<!--End Advanced Tables -->
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

		<footer class="footer" style="margin-top: 100px;">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="spacing"></div>
						<div class="col-md-7">
							<!-- <div class="three spacing"></div> -->
							<p>
								Copyright &copy; 2016 A2ZCinemaWorld | Powered By : <a
									rel="nofollow" target="_blank" href="http://www.ishnira.com/">Ishnira
									Technologies Pvt. Ltd.</a> <a target="_blank"
									href="http://www.ishnira.com/"></a>
							</p>
						</div>
						<div class="col-md-3">
							<!-- <div class="three spacing"></div> -->
							<p>
								<a rel="nofollow" target="_blank"
									href="${pageContext.request.contextPath}/privacypolicy">Privacy
									Policy </a>| <a target="_blank"
									href="${pageContext.request.contextPath}/termconditions">Terms
									And Conditions</a>
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

</body>

</html>