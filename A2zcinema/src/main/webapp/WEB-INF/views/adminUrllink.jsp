<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en-US">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

<title>A2zcinema | list</title>
<script type="text/javascript" src="static/mainfiles/js/angular.js"></script>
<script type="text/javascript" src="static/mainfiles/js/ngStorage.js"></script>
<script src="static/js/app.js"></script>

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
						<li> <a  href="${pageContext.request.contextPath}/adminDashboard"
							><i class="fa fa-dashboard fa-2x"></i>
								Dashboard</a></li>
						<li><a   href="${pageContext.request.contextPath}/adminProfileupload"><i
								class="fa fa-desktop fa-2x"></i> Profile Upload</a></li>

						<li><a class="active-menu" href="${pageContext.request.contextPath}/adminUrllink"><i
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
							<div class="panel-heading ">
								<div class="col-md-10">Latest News</div>
								<a id="button" onclick="showhidenews()" class="btn btn-success">News List</a>
							</div>
							<div class="panel-body" ng-controller="EventNewsController as eventCtrl">
								<form name="lnewsForm" class="mb-lg">
								<!-- <input type="hidden" name="latestNeswsId" ng-model="eventCtrl.news.latestNeswsId" /> -->
									<div class="form-group">
										<div class="col-md-12" ng-class="{ 'has-error' : lnewsForm.newsHeading.$invalid && !lnewsForm.newsHeading.$pristine }">
											<label>News Heading :</label> 
											<input class="form-control" id="newsHeading" name="newsHeading" placeholder="News Heading" maxlength="151"
											ng-model="eventCtrl.news.newsHeading" onChange="this.value=this.value.substring(0, 1).toUpperCase() + this.value.substring(1);" required ng-minlength="10" ng-maxlength="150" autocomplete="off" />
										     <p ng-show="lnewsForm.newsHeading.$error.minlength"
									              class="help-block" style="color: red">News heading is too short minlength 10.</p>
								              <p ng-show="lnewsForm.newsHeading.$error.maxlength"
									              class="help-block" style="color: red">News heading is too long maxlength 150.</p	>
										</div>
										
										<div class="col-md-12" ng-class="{ 'has-error' : lnewsForm.newsUrl.$invalid && !lnewsForm.newsUrl.$pristine }">
											<label>News Link :</label>
											<textarea class="form-control" id="newsUrl" name="newsUrl" placeholder="News Link"
											ng-model="eventCtrl.news.newsUrl" maxlength="501"
											style="overflow: auto; resize: none" rows="3" required ng-minlength="10" ng-maxlength="500"
											aria-invalid="false" autocomplete="off"></textarea>
											<p ng-show="lnewsForm.newsUrl.$error.minlength"
									              class="help-block" style="color: red">News url is too short minlength 10.</p>
								              <p ng-show="lnewsForm.newsUrl.$error.maxlength"
									              class="help-block" style="color: red">News url is too long maxlength 500.</p	>
										</div>
									</div>
								</form>
								<a class="btn btn-success" data-ng-click="submit();" ng-disabled="lnewsForm.$invalid">Save</a> 
								<a class="btn btn-danger btn-xs delete" data-ng-click="reset();">Clear</a> 
							</div>
							<div ng-controller="EventNewsController as ctrl" class="panel panel-default" id="latestNews" style="display: none">
								<div class="panel-heading">Latest News Table</div>
								<div class="panel-body" >
									<div class="table-responsive" style="overflow-y: scroll; height: 300px">
										<table class="table table-striped table-bordered table-hover">
											<thead>
												<tr>
													<th style="width: 50%">Heading</th>
													<th style="width: 40%">Link</th>
													<th style="width: 10%">Delete</th>
												</tr>
											</thead>
											<tbody > 
											<tr ng-repeat="u in ctrl.newsdata"><!-- u.latest_nesws_id -->
												<td ><span ng-bind="u.news_heading"></span></td>
												<td ><span ng-bind="u.news_url"></span></td>
												<td><a class="btn btn-danger btn-xs delete" data-ng-click="rowDelete(u.latest_nesws_id);">delete</a></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>

						<div class="panel panel-default">
							<div class="panel-heading">
								<div class="col-md-10">Latest Events</div>
								<a id="button" onclick="showhideevents()"
									class="btn btn-success">Events List</a>
							</div>
							<div class="panel-body" ng-controller="EventEventsController as eventCtrl">
								<form name="lnewsForm" class="mb-lg">
								<!-- <input type="hidden" name="latestNeswsId" ng-model="eventCtrl.news.latestNeswsId" /> -->
									<div class="form-group">
										<div class="col-md-12" ng-class="{ 'has-error' : lnewsForm.eventHeading.$invalid && !lnewsForm.eventHeading.$pristine }">
											<label>Event Heading :</label> 
											<input class="form-control" id="eventHeading" name="eventHeading" placeholder="Event Heading" maxlength="151"
											ng-model="eventCtrl.event.eventHeading" onChange="this.value=this.value.substring(0, 1).toUpperCase() + this.value.substring(1);" required ng-minlength="10" ng-maxlength="150" autocomplete="off" />
										     <p ng-show="lnewsForm.eventHeading.$error.minlength"
									              class="help-block" style="color: red">Event heading is too short minlength 10.</p>
								              <p ng-show="lnewsForm.eventHeading.$error.maxlength"
									              class="help-block" style="color: red">Event heading is too long maxlength 150.</p	>
										</div>
										
										<div class="col-md-12" ng-class="{ 'has-error' : lnewsForm.eventUrl.$invalid && !lnewsForm.eventUrl.$pristine }">
											<label>Event Link :</label>
											<textarea class="form-control" id="eventUrl" name="eventUrl" placeholder="Event Link"
											ng-model="eventCtrl.event.eventUrl" maxlength="501"
											style="overflow: auto; resize: none" rows="3" required ng-minlength="10" ng-maxlength="500"
											aria-invalid="false" autocomplete="off"></textarea>
											<p ng-show="lnewsForm.eventUrl.$error.minlength"
									              class="help-block" style="color: red">Event url is too short minlength 10.</p>
								              <p ng-show="lnewsForm.eventUrl.$error.maxlength"
									              class="help-block" style="color: red">Event url is too long maxlength 500.</p	>
										</div>
									</div>
								</form>
								<a class="btn btn-success" data-ng-click="submit();" ng-disabled="lnewsForm.$invalid">Save</a> 
								<a class="btn btn-danger btn-xs delete" data-ng-click="reset();">Clear</a> 
							</div>
							<div class="panel panel-default" ng-controller="EventEventsController as eventCtrl" id="latestevents"
								style="display: none">
								<div class="panel-heading">Latest Events Table</div>
								<div class="panel-body">
									<div class="table-responsive" style="overflow-y: scroll; height: 300px">
										<table class="table table-striped table-bordered table-hover">
											<thead>
												<tr>
													<th style="width: 50%">Heading</th>
													<th style="width: 49%">Link</th>
													<th style="width: 10%">Delete</th>
												</tr>
											</thead>
											<tbody>
												<tr ng-repeat="u in eventCtrl.eventdata">
													<td ><span ng-bind="u.events_heading"></span></td>
												    <td ><span ng-bind="u.events_url"></span></td>
												    <td><a class="btn btn-danger btn-xs delete" data-ng-click="rowDelete(u.latest_events_id);">delete</a></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<div class="col-md-10">Movie News</div>
								<a id="button" onclick="showhidemovie()" class="btn btn-success">Movie
									News List</a>
							</div>
							<div class="panel-body" ng-controller="MovieController as movieCtrl">
								<form name="lnewsForm" class="mb-lg">
									<div class="form-group">
										<div class="col-md-12" ng-class="{ 'has-error' : lnewsForm.movieHeading.$invalid && !lnewsForm.movieHeading.$pristine }">
											<label>Movie Heading :</label> 
											<input class="form-control" id="movieHeading" name="movieHeading" placeholder="Movie Heading" maxlength="151"
											ng-model="movieCtrl.movie.movieHeading" onChange="this.value=this.value.substring(0, 1).toUpperCase() + this.value.substring(1);" required ng-minlength="10" ng-maxlength="150" autocomplete="off" />
										     <p ng-show="lnewsForm.movieHeading.$error.minlength"
									              class="help-block" style="color: red">Movie heading is too short minlength 10.</p>
								              <p ng-show="lnewsForm.movieHeading.$error.maxlength"
									              class="help-block" style="color: red">Movie heading is too long maxlength 150.</p	>
										</div>
										
										<div class="col-md-12" ng-class="{ 'has-error' : lnewsForm.movieUrl.$invalid && !lnewsForm.movieUrl.$pristine }">
											<label>Movie Link :</label>
											<textarea class="form-control" id="movieUrl" name="movieUrl" placeholder="Event Link"
											ng-model="movieCtrl.movie.movieUrl" maxlength="501"
											style="overflow: auto; resize: none" rows="3" required ng-minlength="10" ng-maxlength="500"
											aria-invalid="false" autocomplete="off"></textarea>
											<p ng-show="lnewsForm.movieUrl.$error.minlength"
									              class="help-block" style="color: red">Movie url is too short minlength 10.</p>
								              <p ng-show="lnewsForm.movieUrl.$error.maxlength"
									              class="help-block" style="color: red">Movie url is too long maxlength 500.</p	>
										</div>
									</div>
								</form>
								<a class="btn btn-success" data-ng-click="submit();" ng-disabled="lnewsForm.$invalid">Save</a> 
								<a class="btn btn-danger btn-xs delete" data-ng-click="reset();">Clear</a> 
							</div>
							<div class="panel panel-default" ng-controller="MovieController as movieCtrl" id="movie" style="display: none">
								<div class="panel-heading">Movie News Table</div>
								<div class="panel-body">
									<div class="table-responsive" style="overflow-y: scroll; height: 300px">
										<table class="table table-striped table-bordered table-hover">
											<thead>
												<tr>
													<th style="width: 50%">Heading</th>
													<th style="width: 40%">Link</th>
													<th style="width: 10%">Delete</th>
												</tr>
											</thead>
											<tbody>
												<tr ng-repeat="u in movieCtrl.moviedata">
													<td ><span ng-bind="u.movie_heading"></span></td>
												    <td ><span ng-bind="u.movie_url"></span></td>
												    <td><a class="btn btn-danger btn-xs delete" data-ng-click="rowDelete(u.latest_movie_id);">delete</a></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<div class="col-md-10">Audition News</div>
								<a id="button" onclick="showhideaudition()"
									class="btn btn-success">Audition News List</a>
							</div>
							<div class="panel-body" ng-controller="AuditionNewsController as audiCtrl">
								<form name="lnewsForm" class="mb-lg">
									<div class="form-group">
										<div class="col-md-12" ng-class="{ 'has-error' : lnewsForm.auditionHeading.$invalid && !lnewsForm.auditionHeading.$pristine }">
											<label>Audition Heading :</label> 
											<input class="form-control" id="auditionHeading" name="auditionHeading" placeholder="Audition Heading" maxlength="151"
											ng-model="audiCtrl.audi.auditionHeading" onChange="this.value=this.value.substring(0, 1).toUpperCase() + this.value.substring(1);" required ng-minlength="10" ng-maxlength="150" autocomplete="off" />
										     <p ng-show="lnewsForm.auditionHeading.$error.minlength"
									              class="help-block" style="color: red">Audition heading is too short minlength 10.</p>
								              <p ng-show="lnewsForm.auditionHeading.$error.maxlength"
									              class="help-block" style="color: red">Audition heading is too long maxlength 150.</p	>
										</div>
										
										<div class="col-md-12" ng-class="{ 'has-error' : lnewsForm.auditionUrl.$invalid && !lnewsForm.auditionUrl.$pristine }">
											<label>Audition Link :</label>
											<textarea class="form-control" id="auditionUrl" name="auditionUrl" placeholder="Audition Link"
											ng-model="audiCtrl.audi.auditionUrl" maxlength="501"
											style="overflow: auto; resize: none" rows="3" required ng-minlength="10" ng-maxlength="500"
											aria-invalid="false" autocomplete="off"></textarea>
											<p ng-show="lnewsForm.auditionUrl.$error.minlength"
									              class="help-block" style="color: red">Audition url is too short minlength 10.</p>
								              <p ng-show="lnewsForm.auditionUrl.$error.maxlength"
									              class="help-block" style="color: red">Audition url is too long maxlength 500.</p	>
										</div>
									</div>
								</form>
								<a class="btn btn-success" data-ng-click="submit();" ng-disabled="lnewsForm.$invalid">Save</a> 
								<a class="btn btn-danger btn-xs delete" data-ng-click="reset();">Clear</a> 
							</div>
							<div class="panel panel-default" ng-controller="AuditionNewsController as audiCtrl" id="audition"
								style="display: none">
								<div class="panel-heading">Audition News Table</div>
								<div class="panel-body">
									<div class="table-responsive" style="overflow-y: scroll; height: 300px">
										<table class="table table-striped table-bordered table-hover">
											<thead>
												<tr>
													<th style="width: 60%">Heading</th>
													<th style="width: 39%">Link</th>
													<th style="width: 1%">Delete</th>
												</tr>
											</thead>
											<tbody>
												<tr ng-repeat="u in audiCtrl.audidata">
													<td ><span ng-bind="u.audition_heading"></span></td>
												    <td ><span ng-bind="u.audition_url"></span></td>
												    <td><a class="btn btn-danger btn-xs delete" data-ng-click="rowDelete(u.latest_audition_id);">delete</a></td>
												</tr>
											</tbody>
										</table>
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