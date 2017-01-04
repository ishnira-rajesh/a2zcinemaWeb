<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en-US">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

<title>A2zcinema | Profile Upload</title>
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

	function showhidememberbirth() {
		var div = document.getElementById("premiummemberbirth");
		if (div.style.display !== "none") {
			div.style.display = "none";
		} else {
			div.style.display = "block";
		}
	}
	function delete_rowpmbirthday(no) {
		document.getElementById("rowpmbirth" + no + "").outerHTML = "";
	}
	function showhidePmember() {
		var div = document.getElementById("premiummember");
		if (div.style.display !== "none") {
			div.style.display = "none";
		} else {
			div.style.display = "block";
		}
	}
	function delete_rowpmember(no) {
		document.getElementById("rowpmember" + no + "").outerHTML = "";
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

<!-- ======ADMMIN===== -->
<script src="static/admin/js/profilePhoto/profilePhoto.js"></script>
<script src="static/admin/js/profilePhoto/profilePadMember.js"></script>
<script src="static/admin/js/profilePhoto/profilePadMembertwo.js"></script>

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
						<li><a  class="active-menu" href="${pageContext.request.contextPath}/adminProfileupload"><i
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
								<div class="col-md-9">Celebrity Birthday</div>

								<a id="button" onclick="showhidecelebraty()"
									class="btn btn-success">Celebrity Birthday List </a>
							</div>
							<div class="panel-body" >
							<form name="celiForm" ng-controller="UploadController" ng-submit="upload();">
								<div class="form-group">
									<div class="col-md-6">
										<label>Choose Celebrity Photo : </label>&nbsp;&nbsp; <input
											class="form-control" type="file" name="file" accept="image/*" file />
									</div>
									<div class="col-md-6">
										<label>Celebrity Name :</label> <input class="form-control" required autocomplete="off"
										name="celibrityName" ng-model="imageNames.celibrityName" onChange="this.value=this.value.substring(0, 1).toUpperCase() + this.value.substring(1);" maxlength="50" />
									</div>
									<div class="col-md-6">
                                      <strong>Note :</strong> <span>Please upload image of size (150*160)</sapn>
									</div>
									<div class="col-md-6">
									
									<div class="col-md-3">
									<label>Progress :</label></div>
									<div class="progress col-md-9">
									<div class="progress-bar" role="progressbar" aria-valuenow="{{ uploadProgress }}" aria-valuemin="0" aria-valuemax="100" style="width: {{ uploadProgress }}%;" >
									{{ uploadProgress == 0 ? '' : uploadProgress + '%' }}
									</div>
									</div>
									</div>
								</div>
								<input type="submit" class="btn btn-primary" value="Upload"></input>
								<!-- <a href="#" class="btn btn-danger">Cancel</a> -->
							 </form>	
								<div class="panel panel-default" id="celebraty"
									style="display: none">
									<div class="panel-heading">Celebrity Birthday Table</div>
									<div class="panel-body">
										<div class="table-responsive" ng-controller="UserOneImageController as imgs3">
											<table class="table table-striped table-bordered table-hover">
												<thead>
													<tr>
														<th style="width: 60%">Picture</th>
														<th style="width: 39%">Name</th>
														<th style="width: 1%">Delete</th>
													</tr>
												</thead>
												<tbody>
													<tr id="rowceleb1" ng-repeat="s3 in imgs3.imagedata">
														<td id="name_row1"><img
															ng-src="https://s3.amazonaws.com/a2zcinema-pics/{{s3.celibrity_image_name}}" alt="celibrity's image"
															border=3 height=100 width=100></img></td>
														<td id="country_row1">{{s3.celibrity_name}}</td>
														<td><a type="button" value="Delete"
															class="btn btn-danger btn-xs delete"
															data-ng-click="rowDelete(s3.celibrity_image_id);">Delete</a></td>
													</tr>

												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<div class="col-md-9">Premium member Birthday</div>

								<a id="button" onclick="showhidememberbirth()"
									class="btn btn-success">Premium member Birthday List </a>
							</div>
							<div class="panel-body">
								<form name="celiForm" ng-controller="UploadControllerPadMember" ng-submit="upload();">
								<div class="form-group">
									<div class="col-md-6">
										<label>Choose Member Photo :</label>&nbsp;&nbsp; <input
											class="form-control" type="file" name="file" accept="image/*" file />
									</div>
									<div class="col-md-6">
										<label>Member Name :</label> <input class="form-control" required autocomplete="off"
										name="celibrityPadName" ng-model="imageNames.celibrityPadName" onChange="this.value=this.value.substring(0, 1).toUpperCase() + this.value.substring(1);" maxlength="50" />
									</div>
									<div class="col-md-6">
                                      <strong>Note :</strong> <span>Please upload image of size (150*160)</sapn>
									</div>
									<div class="col-md-6">
									
									<div class="col-md-3">
									<label>Progress :</label></div>
									<div class="progress col-md-9">
									<div class="progress-bar" role="progressbar" aria-valuenow="{{ uploadProgress }}" aria-valuemin="0" aria-valuemax="100" style="width: {{ uploadProgress }}%;" >
									{{ uploadProgress == 0 ? '' : uploadProgress + '%' }}
									</div>
									</div>
									</div>
								</div>
								<input type="submit" class="btn btn-primary" value="Upload"></input>
								<!-- <a href="#" class="btn btn-danger">Cancel</a> -->
							 </form>
								
								<div class="panel panel-default" id="premiummemberbirth"
									style="display: none">
									<div class="panel-heading">Premium Member Birthday Table</div>
									<div class="panel-body">
										<div class="table-responsive" ng-controller="UserOneImageControllerPadMember as imgs3">
											<table class="table table-striped table-bordered table-hover">
												<thead>
													<tr>
														<th style="width: 60%">Picture</th>
														<th style="width: 39%">Name</th>
														<th style="width: 1%">Delete</th>
													</tr>
												</thead>
												<tbody>
													<tr id="rowceleb1" ng-repeat="s3 in imgs3.imagedata">
														<td id="name_row1"><img
															ng-src="https://s3.amazonaws.com/a2zcinema-pics/{{s3.celibrity_pad_image_name}}" alt="celibrity's image"
															border=3 height=100 width=100></img></td>
														<td id="country_row1">{{s3.celibrity_pad_name}}</td>
														<td><a type="button" value="Delete"
															class="btn btn-danger btn-xs delete"
															data-ng-click="rowDelete(s3.celibrity_pad_image_id);">Delete</a></td>
													</tr>

												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<div class="col-md-9">Premium member</div>
								<a id="button" onclick="showhidePmember()"
									class="btn btn-success">Premium member List </a>
							</div>
							<div class="panel-body">
								<form name="celiForm" ng-controller="UploadControllerPadMemberTwo" ng-submit="upload();">
									<div class="form-group">
										<div class="col-md-6">
											<label>Choose Member Photo :</label>&nbsp;&nbsp; <input
												class="form-control" type="file" name="file" accept="image/*" file />
										</div>
										<div class="col-md-6">
											<label>Member Name :</label> <input class="form-control" required autocomplete="off"
											name="padmemberName" ng-model="imageNames.padmemberName" onChange="this.value=this.value.substring(0, 1).toUpperCase() + this.value.substring(1);" maxlength="50" />
										</div>
										<div class="col-md-6">
                                      <strong>Note :</strong> <span>Please upload image of size (120*120)</sapn>
									</div>
									<div class="col-md-6">
									
									<div class="col-md-3">
									<label>Progress :</label></div>
									<div class="progress col-md-9">
									<div class="progress-bar" role="progressbar" aria-valuenow="{{ uploadProgress }}" aria-valuemin="0" aria-valuemax="100" style="width: {{ uploadProgress }}%;" >
									{{ uploadProgress == 0 ? '' : uploadProgress + '%' }}
									</div>
									</div>
									</div>
									</div>
									<input type="submit" class="btn btn-primary" value="Upload"></input>
									<!-- <a href="#" class="btn btn-danger">Cancel</a> -->
								 </form>
								<div class="panel panel-default" id="premiummember"
									style="display: none">
									<div class="panel-heading">Premium Member Table</div>
									<div class="panel-body">
										<div class="table-responsive" ng-controller="UserOneImageControllerPadMemberTwo as imgs3">
											<table class="table table-striped table-bordered table-hover">
												<thead>
													<tr>
														<th style="width: 60%">Picture</th>
														<th style="width: 39%">Name</th>
														<th style="width: 1%">Delete</th>
													</tr>
												</thead>
												<tbody>
													<tr id="rowceleb1" ng-repeat="s3 in imgs3.imagedata">
														<td id="name_row1"><img
															ng-src="https://s3.amazonaws.com/a2zcinema-pics/{{s3.padmember_image_name}}" alt="celibrity's image"
															border=3 height=100 width=100></img></td>
														<td id="country_row1">{{s3.padmember_name}}</td>
														<td><a type="button" value="Delete"
															class="btn btn-danger btn-xs delete"
															data-ng-click="rowDelete(s3.padmember_image_id);">Delete</a></td>
													</tr>

												</tbody>
											</table>
										</div>
									</div>
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

</body>

</html>