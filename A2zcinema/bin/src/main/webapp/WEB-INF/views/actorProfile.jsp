<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>A2zcinema | Actorprofile</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript" src="static/mainfiles/js/angular.js"></script>
<script type="text/javascript" src="static/mainfiles/js/ngStorage.js"></script>
<script src="<c:url value='/static/js/app.js' />"></script>
<script
	src="<c:url value='/static/js/profilecontroller/profile_service.js' />"></script>
<script
	src="<c:url value='/static/js/profilecontroller/profile_controller.js' />"></script>
<script
	src="<c:url value='/static/js/aboutcontroller/aboutuscontroller.js' />"></script>
<script type="text/javascript" src="static/mainfiles/js/jquery.min.js"></script>

<script type="text/javascript"
	src="static/mainfiles/js/bootstrap.min.js"></script>
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
						<li><a href="${pageContext.request.contextPath}/crowdfunding">Crowd
								Funding</a></li>
						<li><a href="${pageContext.request.contextPath}/moviebooking">Movie
								Tickets Booking</a></li>
						<li><a
							href="${pageContext.request.contextPath}/onlineaudition">Online
								Audition</a></li>
						<li><a href="${pageContext.request.contextPath}/contact">Contact</a></li>
						<li>
							<div class="text-center"
								ng-controller="AboutusController as ctrl">
								<button type="submit" class="btn btn-success mt-lg"
									title="Profile">
									<a href="${pageContext.request.contextPath}/actorProfile">Profile</a>
								</button>
								&nbsp;&nbsp;
								<button type="submit" class="btn btn-success mt-lg"
									ng-click="logout()" title="Logout">
								   <a href="javascript:()"> Logout</a> 
								</button>
							</div>
						</li>
					</ul>
					</nav>
				</div>
			</div>
			</header>
		</div>

		<section>

		<div class="myrow-container">
			<div class="panel panel-success">
				<div class="row">
					<div class="col-lg-12">
						<div class="col-lg-6">
							<div class="panel panel-default">
								<h4 class="text-muted text-thin text-center">Profile
									Details</h4>
								<form name="userProfileForm" class="form-horizontal mb-lg"
									ng-controller="ProfileController as ctrl"
									ng-submit="ctrl.submit()">

									<input type="hidden" name="userId"
										ng-model="ctrl.profile.userId" />

									<fieldset ng-if="ctrl.profiledata.length == 0">
										<div class="form-group has-feedback" ng-class="{ 'has-error' : userProfileForm.fatherName.$invalid && !userProfileForm.fatherName.$pristine }">
											<label for="" class="text-muted col-lg-4">Father
												Name</label> <input id="fatherName" name="fatherName"
												class="form-control-text col-2" placeholder="Father Name" maxlength="21"
												ng-model="ctrl.profile.fatherName" required ng-minlength="3" ng-maxlength="20" autocomplete="off" />
												<p ng-show="userProfileForm.fatherName.$error.minlength"
									                class="help-block">Father name is too short minlength 3.</p>
								                <p ng-show="userProfileForm.fatherName.$error.maxlength"
									                class="help-block">Father name is too long maxlength 20.</p	>
										</div>
										        

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Gender</label> 
											 <label
												class="radio-inline c-radio"> <input type="radio"
												checked="checked" value="Male"
												ng-model="ctrl.profile.gender" required>Male
											</label> <label class="radio-inline c-radio"> <input
												type="radio" value="Female" ng-model="ctrl.profile.gender">Female
											</label> <label class="radio-inline c-radio"> <input
												type="radio" value="Other" ng-model="ctrl.profile.gender">Other
											</label>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Date of
												Birth</label> <input id="dob" name="dob" class="form-control-text col-2"
												placeholder="YYYY-MM-DD" ng-model="ctrl.profile.dob" required autocomplete="off" />
										</div>

										<div class="form-group has-feedback" ng-class="{ 'has-error' : userProfileForm.age.$invalid && !userProfileForm.age.$pristine }">
											<label for="" class="text-muted col-lg-4">Age</label> <input
												  id="age" name="age" class="form-control-text col-2" placeholder="Age (Approx)" maxlength="4"
												ng-model="ctrl.profile.age" required autocomplete="off" ng-minlength="2" ng-maxlength="3"/>
												<p ng-show="userProfileForm.age.$error.minlength"
									                 class="help-block">Age is too short minlength 2 digit.</p>
								                <p ng-show="userProfileForm.age.$error.maxlength"
									                 class="help-block">Age is too long maxlength 3 digit.</p	>
										</div>

										<div class="form-group has-feedback" ng-class="{ 'has-error' : userProfileForm.mobile.$invalid && !userProfileForm.mobile.$pristine }">
											<label for="" class="text-muted col-lg-4">Mobile</span></label> <input
												id="mobile" name="mobile" class="form-control-text col-2"
												placeholder="Mobile" ng-model="ctrl.profile.mobile" required maxlength="16" autocomplete="off" ng-minlength="10" ng-maxlength="15"/>
												<p ng-show="userProfileForm.mobile.$error.minlength"
									                 class="help-block">Mobile is too short minlength 10.</p>
								                <p ng-show="userProfileForm.mobile.$error.maxlength"
									                 class="help-block">Mobile is too long maxlength 15.</p	>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Email</span></label> <input
												type="email"  id="email" name="email" class="form-control-text col-2"
												placeholder="E-mail" ng-model="ctrl.profile.email" required  autocomplete="off"/>
										</div>


										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Whatsapp
												No</label> <input id="whatsupNum" name="whatsupNum"
												class="form-control-text col-2" placeholder="Whatsapp No (optional)"
												ng-model="ctrl.profile.whatsupNo" autocomplete="off" />
										</div>



										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Landline
												No</label> <input id="landlineNum" name="landlineNum"
												class="form-control-text col-2" placeholder="Landline No (optional)"
												ng-model="ctrl.profile.landlineNo" autocomplete="off" />
										</div>



										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Education
												/ Qualification</label> <input id="education" name="education"
												class="form-control-text col-2" placeholder="Education / Qualification (optional)"
												ng-model="ctrl.profile.eduQualification" autocomplete="off" />
										</div>


										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Course
												Done related to film/Drama/Modeling</label> <input id="course"
												name="course" class="form-control-text col-2"
												placeholder="Course Done (optional)"
												ng-model="ctrl.profile.courseRelatedProfession" autocomplete="off" />
										</div>

										<!-- <div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Languages
												You know</label> <label for="" class="text-muted">Language</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<label for="" class="text-muted">Read</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<label for="" class="text-muted">Write</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<label for="" class="text-muted">Speak</label>
										</div> -->

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Languages
												You know</label><span>e.g. Hindi,English,Telgu,Kannada</span>
											<!-- <input ng-model="ctrl.profile.language" class="form-control-widths col-lg-2" ng-init="ctrl.profile.language=u.language">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; class="form-control-widths col-lg-2" -->
											<input id="language" name="language" class="form-control-text col-2"
												ng-model="ctrl.profile.language" ng-init="ctrl.profile.language='Kannada'" required autocomplete="off" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</div>

									</fieldset>


									<fieldset ng-if="ctrl.profiledata.length !=0"
										ng-repeat="u in ctrl.profiledata">
										<div class="form-group has-feedback" ng-class="{ 'has-error' : userProfileForm.fatherName.$invalid && !userProfileForm.fatherName.$pristine }">
											<label for="" class="text-muted col-lg-4">Father
												Name</label> <input id="fatherName" name="fatherName"
												class="form-control-text col-2" placeholder="Father Name"
												ng-model="ctrl.profile.fatherName"
												ng-init="ctrl.profile.fatherName=u.father_name " maxlength="21"
												autocomplete="off" required ng-minlength="3" ng-maxlength="20"/>
												<p ng-show="userProfileForm.fatherName.$error.minlength"
									                class="help-block">Father name is too short minlength 3.</p>
								                <p ng-show="userProfileForm.fatherName.$error.maxlength"
									                class="help-block">Father name is too long maxlength 20.</p	>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Gender</label> <label
												class="radio-inline c-radio"> <input type="radio"
												checked="checked" value="Male"
												ng-model="ctrl.profile.gender"
												ng-init="ctrl.profile.gender=u.gender">Male
											</label> <label class="radio-inline c-radio"> <input
												type="radio" value="Female" ng-model="ctrl.profile.gender"
												ng-init="ctrl.profile.gender=u.gender">Female
											</label> <label class="radio-inline c-radio"> <input
												type="radio" value="Other" ng-model="ctrl.profile.gender"
												ng-init="ctrl.profile.gender=u.gender">Other
											</label>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Date of
												Birth</label> <input id="dob" name="dob"
												class="form-control-text col-2" placeholder="YYYY-MM-DD"
												ng-model="ctrl.profile.dob" ng-init="ctrl.profile.dob=u.dob" required autocomplete="off"/>
										</div>

										<div class="form-group has-feedback" ng-class="{ 'has-error' : userProfileForm.age.$invalid && !userProfileForm.age.$pristine }">
											<label for="" class="text-muted col-lg-4">Age</label> <input
												id="age" name="age" class="form-control-text col-2"
												placeholder="Age (Approx)" ng-model="ctrl.profile.age" maxlength="4"
												ng-init="ctrl.profile.age=u.age" required autocomplete="off" ng-minlength="2" ng-maxlength="3"/>
												<p ng-show="userProfileForm.age.$error.minlength"
									                 class="help-block">Age is too short minlength 2 digit.</p>
								                <p ng-show="userProfileForm.age.$error.maxlength"
									                 class="help-block">Age is too long maxlength 3 digit.</p	>
										</div>

										<div class="form-group has-feedback" ng-class="{ 'has-error' : userProfileForm.mobile.$invalid && !userProfileForm.mobile.$pristine }">
											<label for="" class="text-muted col-lg-4">Mobile</span></label> <input
												id="mobile" name="mobile" class="form-control-text col-2"
												placeholder="Mobile" ng-model="ctrl.profile.mobile" required maxlength="16" autocomplete="off" ng-minlength="10" ng-maxlength="15"/>
												<p ng-show="userProfileForm.mobile.$error.minlength"
									                 class="help-block">Mobile is too short minlength 10.</p>
								                <p ng-show="userProfileForm.mobile.$error.maxlength"
									                 class="help-block">Mobile is too long maxlength 15.</p	>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Email</span></label> <input
												type="email" id="email" name="email" class="form-control-text col-2"
												placeholder="E-mail" ng-model="ctrl.profile.email" required autocomplete="off"/>
										</div>


										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Whatsapp
												No</label> <input id="whatsupNum" name="whatsupNum"
												class="form-control-text col-2" placeholder="Whatsapp No (optional)"
												ng-model="ctrl.profile.whatsupNo"
												ng-init="ctrl.profile.whatsupNo=u.whatsup_no"
												ng-minlength="3" autocomplete="off"/>
										</div>



										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Landline
												No</label> <input id="landlineNum" name="landlineNum"
												class="form-control-text col-2" placeholder="Landline No (optional)"
												ng-model="ctrl.profile.landlineNo"
												ng-init="ctrl.profile.landlineNo=u.landline_no"
												ng-minlength="3" autocomplete="off"/>
										</div>



										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Education
												/ Qualification</label> <input id="education" name="education"
												class="form-control-text col-2"
												placeholder="Education / Qualification (optional)"
												ng-model="ctrl.profile.eduQualification"
												ng-init="ctrl.profile.eduQualification=u.education_qualification"
												ng-minlength="3" autocomplete="off"/>
										</div>


										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Course
												Done related to film/Drama/Modeling</label> <input id="course"
												name="course" class="form-control-text col-2"
												placeholder="Course Done (optional)"
												ng-model="ctrl.profile.courseRelatedProfession"
												ng-init="ctrl.profile.courseRelatedProfession=u.course_related_profession"
												ng-minlength="3" autocomplete="off"/>
										</div>

										<!-- <div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Languages
												You know</label> <label for="" class="text-muted">Language</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<label for="" class="text-muted">Read</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<label for="" class="text-muted">Write</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<label for="" class="text-muted">Speak</label>
										</div> -->

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Languages
												You know</label><span>e.g. Hindi,English,Telgu,Kannada</span>
											<input id="language" name="language"
												class="form-control-text col-2"
												ng-model="ctrl.profile.language"
												ng-init="ctrl.profile.language=u.language" required autocomplete="off"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</div>

									</fieldset>
									<div class="form-group">
										<div class="row">
											<div class="col-xs-7"></div>
											<div class="col-xs-4">
												<input type="submit" value="Update" class="btn btn-success" />
											</div>
										</div>
									</div>
								</form>
							</div>

							<div class="panel panel-default">
								<h4 class="text-muted text-thin text-center">Present
									Address</h4>
								<form name="userAddressForm" class="mb-lg"
									ng-controller="AddressController as ctrlAdd"
									ng-submit="ctrlAdd.submit()" class="form-horizontal">

									<input type="hidden" name="userId"
										ng-model="ctrl.addressdetails.userId" />

									<fieldset ng-if="ctrlAdd.adddata.length == 0">

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Address</label>
											<textarea ng-model="ctrlAdd.addressdetails.prAddress"
												name="prAddress" placeholder="Address"
												class="form-control form-control-text col-2" maxlength="500"
												style="overflow: auto; resize: none" rows="4"
												aria-invalid="false" autocomplete="off" required></textarea>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Country</label> <select
												ng-model="ctrlAdd.addressdetails.prCountry"
												ng-init="ctrlAdd.addressdetails.prCountry='India'"
												name="prCountry" class="form-control-text col-2">
												<option value="India">India</option>
												<option value="Other">Other</option>
											</select>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">State</label> <select
												ng-model="ctrlAdd.addressdetails.prState"
												ng-init="ctrlAdd.addressdetails.prState='Karnataka'"
												name="prState" class="form-control-text col-2" required>

												<option value="AndhraPradesh">Andhra Pradesh</option>
												<option value="ArunachalPradesh">Arunachal Pradesh</option>
												<option value="Bihar">Bihar</option>
												<option value="Chhattisgarh">Chhattisgarh</option>
												<option value="Goa">Goa</option>
												<option value="Gujarat">Gujarat</option>
												<option value="Haryana">Haryana</option>

												<option value="HimachalPradesh">Himachal Pradesh</option>
												<option value="JammuKashmir">Jammu & Kashmir</option>
												<option value="Jharkhand">Jharkhand</option>
												<option value="Karnataka">Karnataka</option>
												<option value="Kerala">Kerala</option>
												<option value="MadhyaPradesh">Madhya Pradesh</option>
												<option value="Maharashtra">Maharashtra</option>

												<option value="Manipur">Manipur</option>
												<option value="Meghalaya">Meghalaya</option>
												<option value="Mizoram">Mizoram</option>
												<option value="Nagaland">Nagaland</option>
												<option value="Odisha">Odisha</option>
												<option value="Punjab">Punjab</option>
												<option value="Rajasthan">Rajasthan</option>

												<option value="Sikkim">Sikkim</option>
												<option value="TamilNadu">Tamil Nadu</option>
												<option value="Telangana">Telangana</option>
												<option value="Tripura">Tripura</option>
												<option value="UttarPradesh">Uttar Pradesh</option>
												<option value="Uttrakhand">Uttrakhand</option>
												<option value="WestBengal">West Bengal</option>
											</select>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">District</label> <input
												ng-model="ctrlAdd.addressdetails.prDistrict"
												name="prDistrict" class="form-control-text col-2"
												placeholder="District" maxlength="50" autocomplete="off" required>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Zipcode/Postalcode</label>
											<input ng-model="ctrlAdd.addressdetails.prZipPostal"
												name="prZipPostal" class="form-control-text col-2"
												placeholder="Zipcode/Postalcode" maxlength="50" autocomplete="off" required>
										</div>
										<!--  </fieldset> -->

										<h4 class="text-muted text-thin text-center">Permanent
											Address</h4>

										<!-- <fieldset> -->
										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Address</label>
											<textarea ng-model="ctrlAdd.addressdetails.pmAddress"
												name="permaAddress" placeholder="Address"
												class="form-control form-control-text col-2" maxlength="500"
												style="overflow: auto; resize: none" rows="4"
												aria-invalid="false" autocomplete="off"></textarea>
										</div>


										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Country</label> <select
												ng-model="ctrlAdd.addressdetails.pmCountry"
												ng-init="ctrlAdd.addressdetails.pmCountry='India'"
												name="pmCountry" class="form-control-text col-2">
												<option value="India">India</option>
												<option value="Other">Other</option>
											</select>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">State</label> <select
												ng-model="ctrlAdd.addressdetails.pmState"
												ng-init="ctrlAdd.addressdetails.pmState='Karnataka'"
												name="pmState" class="form-control-text col-2">
												<option value="AndhraPradesh">Andhra Pradesh</option>
												<option value="ArunachalPradesh">Arunachal Pradesh</option>
												<option value="Bihar">Bihar</option>
												<option value="Chhattisgarh">Chhattisgarh</option>
												<option value="Goa">Goa</option>
												<option value="Gujarat">Gujarat</option>
												<option value="Haryana">Haryana</option>

												<option value="HimachalPradesh">Himachal Pradesh</option>
												<option value="JammuKashmir">Jammu & Kashmir</option>
												<option value="Jharkhand">Jharkhand</option>
												<option value="Karnataka">Karnataka</option>
												<option value="Kerala">Kerala</option>
												<option value="MadhyaPradesh">Madhya Pradesh</option>
												<option value="Maharashtra">Maharashtra</option>

												<option value="Manipur">Manipur</option>
												<option value="Meghalaya">Meghalaya</option>
												<option value="Mizoram">Mizoram</option>
												<option value="Nagaland">Nagaland</option>
												<option value="Odisha">Odisha</option>
												<option value="Punjab">Punjab</option>
												<option value="Rajasthan">Rajasthan</option>

												<option value="Sikkim">Sikkim</option>
												<option value="TamilNadu">Tamil Nadu</option>
												<option value="Telangana">Telangana</option>
												<option value="Tripura">Tripura</option>
												<option value="UttarPradesh">Uttar Pradesh</option>
												<option value="Uttrakhand">Uttrakhand</option>
												<option value="WestBengal">West Bengal</option>
											</select>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">District</label> <input
												ng-model="ctrlAdd.addressdetails.pmDistrict"
												name="pmDistrict" class="form-control-text col-2"
												placeholder="District" autocomplete="off">
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Zipcode/Postalcode</label>
											<input ng-model="ctrlAdd.addressdetails.pmZipPostal"
												name="pmZipPostal" class="form-control-text col-2"
												placeholder="Zipcode/Postalcode" autocomplete="off">
										</div>

										<!-- <div class="form-group has-feedback">
								<label for="" class="text-muted col-lg-4">Comment</label>
								<textarea name="comment" id="comment" placeholder="Comment" class="form-control" maxlength="500"
								style="overflow: auto; resize: none" rows="3"
								aria-invalid="false"></textarea>
							</div> -->

									</fieldset>


									<fieldset ng-if="ctrlAdd.adddata.length != 0"
										ng-repeat="u in ctrlAdd.adddata">

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Address</label>
											<textarea ng-model="ctrlAdd.addressdetails.prAddress"
												ng-init="ctrlAdd.addressdetails.prAddress=u.pr_address"
												name="prAddress" placeholder="Address"
												class="form-control form-control-text col-2" maxlength="500"
												style="overflow: auto; resize: none" rows="4"
												aria-invalid="false" autocomplete="off"></textarea>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Country</label> <select
												ng-model="ctrlAdd.addressdetails.prCountry"
												ng-init="ctrlAdd.addressdetails.prCountry=u.pr_country"
												name="prCountry" class="form-control-text col-2">
												<option value="India">India</option>
												<option value="Other">Other</option>
											</select>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">State</label> <select
												ng-model="ctrlAdd.addressdetails.prState"
												ng-init="ctrlAdd.addressdetails.prState=u.pr_state"
												name="prState" class="form-control-text col-2">

												<option value="AndhraPradesh">Andhra Pradesh</option>
												<option value="ArunachalPradesh">Arunachal Pradesh</option>
												<option value="Bihar">Bihar</option>
												<option value="Chhattisgarh">Chhattisgarh</option>
												<option value="Goa">Goa</option>
												<option value="Gujarat">Gujarat</option>
												<option value="Haryana">Haryana</option>

												<option value="HimachalPradesh">Himachal Pradesh</option>
												<option value="JammuKashmir">Jammu & Kashmir</option>
												<option value="Jharkhand">Jharkhand</option>
												<option value="Karnataka">Karnataka</option>
												<option value="Kerala">Kerala</option>
												<option value="MadhyaPradesh">Madhya Pradesh</option>
												<option value="Maharashtra">Maharashtra</option>

												<option value="Manipur">Manipur</option>
												<option value="Meghalaya">Meghalaya</option>
												<option value="Mizoram">Mizoram</option>
												<option value="Nagaland">Nagaland</option>
												<option value="Odisha">Odisha</option>
												<option value="Punjab">Punjab</option>
												<option value="Rajasthan">Rajasthan</option>

												<option value="Sikkim">Sikkim</option>
												<option value="TamilNadu">Tamil Nadu</option>
												<option value="Telangana">Telangana</option>
												<option value="Tripura">Tripura</option>
												<option value="UttarPradesh">Uttar Pradesh</option>
												<option value="Uttrakhand">Uttrakhand</option>
												<option value="WestBengal">West Bengal</option>
											</select>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">District</label> <input
												ng-model="ctrlAdd.addressdetails.prDistrict"
												ng-init="ctrlAdd.addressdetails.prDistrict=u.pr_district"
												name="prDistrict" class="form-control-text col-2"
												placeholder="District" maxlength="50" autocomplete="off">
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Zipcode/Postalcode</label>
											<input ng-model="ctrlAdd.addressdetails.prZipPostal"
												ng-init="ctrlAdd.addressdetails.prZipPostal=u.pr_zip_postal"
												name="prZipPostal" class="form-control-text col-2"
												placeholder="Zipcode/Postalcode" maxlength="50">
										</div>
										<!--  </fieldset> -->

										<h4 class="text-muted text-thin text-center">Permanent
											Address</h4>

										<!-- <fieldset> -->
										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Address</label>
											<textarea ng-model="ctrlAdd.addressdetails.pmAddress"
												ng-init="ctrlAdd.addressdetails.pmAddress=u.pm_address"
												name="permaAddress" placeholder="Address"
												class="form-control form-control-text col-2" maxlength="500"
												style="overflow: auto; resize: none" rows="4"
												aria-invalid="false"></textarea>
										</div>


										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Country</label> <select
												ng-model="ctrlAdd.addressdetails.pmCountry"
												ng-init="ctrlAdd.addressdetails.pmCountry=u.pm_country"
												name="pmCountry" class="form-control-text col-2">
												<option value="India">India</option>
												<option value="Other">Other</option>
											</select>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">State</label> <select
												ng-model="ctrlAdd.addressdetails.pmState"
												ng-init="ctrlAdd.addressdetails.pmState=u.pm_state"
												name="pmState" class="form-control-text col-2">
												<option value="AndhraPradesh">Andhra Pradesh</option>
												<option value="ArunachalPradesh">Arunachal Pradesh</option>
												<option value="Bihar">Bihar</option>
												<option value="Chhattisgarh">Chhattisgarh</option>
												<option value="Goa">Goa</option>
												<option value="Gujarat">Gujarat</option>
												<option value="Haryana">Haryana</option>

												<option value="HimachalPradesh">Himachal Pradesh</option>
												<option value="JammuKashmir">Jammu & Kashmir</option>
												<option value="Jharkhand">Jharkhand</option>
												<option value="Karnataka">Karnataka</option>
												<option value="Kerala">Kerala</option>
												<option value="MadhyaPradesh">Madhya Pradesh</option>
												<option value="Maharashtra">Maharashtra</option>

												<option value="Manipur">Manipur</option>
												<option value="Meghalaya">Meghalaya</option>
												<option value="Mizoram">Mizoram</option>
												<option value="Nagaland">Nagaland</option>
												<option value="Odisha">Odisha</option>
												<option value="Punjab">Punjab</option>
												<option value="Rajasthan">Rajasthan</option>

												<option value="Sikkim">Sikkim</option>
												<option value="TamilNadu">Tamil Nadu</option>
												<option value="Telangana">Telangana</option>
												<option value="Tripura">Tripura</option>
												<option value="UttarPradesh">Uttar Pradesh</option>
												<option value="Uttrakhand">Uttrakhand</option>
												<option value="WestBengal">West Bengal</option>
											</select>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">District</label> <input
												ng-model="ctrlAdd.addressdetails.pmDistrict"
												ng-init="ctrlAdd.addressdetails.pmDistrict=u.pm_district"
												name="pmDistrict" class="form-control-text col-2"
												placeholder="District" autocomplete="off">
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Zipcode/Postalcode</label>
											<input ng-model="ctrlAdd.addressdetails.pmZipPostal"
												ng-init="ctrlAdd.addressdetails.pmZipPostal=u.pm_zip_postal"
												name="pmZipPostal" class="form-control-text col-2"
												placeholder="Zipcode/Postalcode" autocomplete="off">
										</div>

										<!-- <div class="form-group has-feedback">
								<label for="" class="text-muted col-lg-4">Comment</label>
								<textarea name="comment" id="comment" placeholder="Comment" class="form-control" maxlength="500"
								style="overflow: auto; resize: none" rows="3"
								aria-invalid="false"></textarea>
							</div> -->

									</fieldset>
									<div class="form-group">
										<div class="row">
											<div class="col-xs-7"></div>
											<div class="col-xs-4">
												<input type="submit" id="saveUserPersonalInfo"
													class="btn btn-success" value="Update" />
											</div>
										</div>
									</div>
								</form>
							</div>

						</div>

						<!-- ========================================Physical Details================================          -->

						<div class="col-lg-6">
							<div class="panel panel-default">
								<h4 class="text-muted text-thin text-center">Physical
									Details</h4>
								<form name="userPhyDetailsForm"
									ng-controller="PhysicalController as ctrlPhy"
									ng-submit="ctrlPhy.submit()" class="form-horizontal">

									<input type="hidden" name="userId"
										ng-model="ctrlPhy.phydetails.userId" />

									<fieldset ng-if="ctrlPhy.phydata.length == 0">
										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-2 ">Complexion</label>
											<select ng-model="ctrlPhy.phydetails.complexion"
												ng-init="ctrlPhy.phydetails.complexion='Normal'"
												name="complexion" class="form-control-width col-lg-3 m-b ">
												<option value="Normal">Normal</option>
												<option value="Oily">Oily</option>
												<option value="Drys">Dry</option>
												<option value="Sensitive">Sensitive</option>
												<option value="Combination">Combination</option>
											</select> <label for="" class="text-muted col-lg-2">SkinQuality</label>
											<select ng-model="ctrlPhy.phydetails.skinQuality"
												ng-init="ctrlPhy.phydetails.skinQuality='Normal'"
												name="skinQuality" class="form-control-width col-lg-3 m-b ">
												<option value="Normal">Normal Skin</option>
												<option value="Oily">Oily Skin</option>
												<option value="Drys">Dry Skin</option>
												<option value="Sensitive">Sensitive Skin</option>
												<option value="Combination">Combination Skin</option>
											</select>

										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-2 ">Eye Color</label>
											<select ng-model="ctrlPhy.phydetails.eyeColor"
												ng-init="ctrlPhy.phydetails.eyeColor='Lightblue'"
												name="eyeColor" class="form-control-width col-lg-3 m-b ">
												<option value="Lightblue">Light blue</option>
												<option value="Iceblue">Ice blue</option>
												<option value="Blue">Blue</option>
												<option value="Grey-blue">Grey-blue</option>
												<option value="White">White</option>
												<option value="Black">Black</option>
												<option value="Grey">Grey</option>
												<option value="Teal">Teal</option>
												<option value="Icegreen">Ice green</option>
												<option value="Green">Green</option>
												<option value="Grey-green">Grey-green</option>
												<option value="Palegold">Pale gold</option>
												<option value="Yellow">Yellow</option>
												<option value="Gold">Gold</option>
												<option value="Orange">Orange</option>
												<option value="Brown">Brown</option>
												<option value="Darkbrow">Dark brown</option>
												<option value="Red">Red</option>
												<option value="Palepurple">Pale purple</option>
												<option value="Purple">Purple</option>
												<option value="Magenta">Magenta</option>
												<option value="Orange">Brown & green</option>
												<option value="Orange">Gold & green</option>
												<option value="Darkbrow">Albino</option>
												<option value="Darkbrow">Blind</option>
											</select> <label for="" class="text-muted col-lg-2">Height</label> <input
												ng-model="ctrlPhy.phydetails.heightUnit" name="heightUnit"
												class="form-control-width col-lg-3" placeholder="Height (cm/feet)"
												required minlength="2" maxlength="50" autocomplete="off">
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-2 ">Weight</label> <input
												ng-model="ctrlPhy.phydetails.weightUnit" name="weightUnit"
												class="form-control-width col-lg-3" placeholder="Weight (kg)"
												required minlength="2" maxlength="50" autocomplete="off" required> <label
												for="" class="text-muted col-lg-2">Physique</label> <select
												ng-model="ctrlPhy.phydetails.physique"
												ng-init="ctrlPhy.phydetails.physique='Ectomorph'"
												name="physique" class="form-control-width col-lg-3 m-b ">
												<option value="Ectomorph">Ectomorph</option>
												<option value="Mesomorph">Mesomorph</option>
												<option value="Endomorph">Endomorph</option>
											</select>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-2 ">Facial
												Hair</label> <select ng-model="ctrlPhy.phydetails.facialHair"
												ng-init="ctrlPhy.phydetails.facialHair='Hollywoodian'"
												name="facialHair" class="form-control-width col-lg-3 m-b ">
												<option value="Hollywoodian">Hollywoodian</option>
												<option value="Muttonchops">Mutton chops</option>
												<option value="Alasouvaror">A la Souvaror</option>
												<option value="Frenchfork">French Fork</option>
												<option value="Ducktail">Ducktail</option>
												<option value="Fumanchu">Fu Manchu</option>
												<option value="Olddutch">Old Dutch</option>
												<option value="Dali">Dali</option>
											</select> <label for="" class="text-muted col-lg-2">Hair
												Style</label> <select ng-model="ctrlPhy.phydetails.hairStyle"
												ng-init="ctrlPhy.phydetails.hairStyle='Pompadourhaircut'"
												name="hairStyle" class="form-control-width col-lg-3 m-b ">
												<option value="Pompadourhaircut">Pompadour Haircut</option>
												<option value="Comboverhaircut">Comb Over Haircut</option>
												<option value="Crewcut">Crew Cut</option>
												<option value="Caesarcut">Caesar Cut</option>
												<option value="Tapercut">Taper Cut</option>
												<option value="Inductioncut">Induction Cut</option>
												<option value="Burrcut">Burr Cut</option>
												<option value="Buzzcut">Buzz Cut</option>
											</select>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-2 ">Hair Color</label>
											<select ng-model="ctrlPhy.phydetails.hairColor"
												ng-init="ctrlPhy.phydetails.hairColor='Natural'"
												name="hairColor" class="form-control-width col-lg-3 m-b ">
												<option value="Natural">Natural</option>
												<option value="Mahogany">Mahogany</option>
												<option value="Ash">Ash</option>
												<option value="Copper">Copper</option>
												<option value="Golden">Golden</option>
											</select> <label for="" class="text-muted col-lg-2">HairLength</label>
											<select ng-model="ctrlPhy.phydetails.hairLength"
												ng-init="ctrlPhy.phydetails.hairLength='Shaved'"
												name="hairLength" class="form-control-width col-lg-3 m-b ">
												<option value="Shaved">Shaved</option>
												<option value="Short">Short</option>
												<option value="Medium">Medium</option>
												<option value="Long">Long</option>
											</select>
										</div>
									</fieldset>
									<fieldset ng-if="ctrlPhy.phydata.length !=0"
										ng-repeat="u in ctrlPhy.phydata">
										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-2 ">Complexion</label>
											<!-- <input ng-model="ctrlPhy.phydetails.complexion"  ng-init="ctrlPhy.phydetails.complexion=u.complexion" name="weightUnit" class="form-control-width col-lg-3" placeholder="Weight" required minlength="2" maxlength="50" value=""> -->
											<select ng-model="ctrlPhy.phydetails.complexion"
												ng-init="ctrlPhy.phydetails.complexion=u.complexion"
												name="complexion" class="form-control-width col-lg-3 m-b ">
												<option value="Normal">Normal</option>
												<option value="Oily">Oily</option>
												<option value="Drys">Dry</option>
												<option value="Sensitive">Sensitive</option>
												<option value="Combination">Combination</option>
											</select> <label for="" class="text-muted col-lg-2">SkinQuality</label>
											<select ng-model="ctrlPhy.phydetails.skinQuality"
												ng-init="ctrlPhy.phydetails.skinQuality=u.skin_quality"
												name="skinQuality" class="form-control-width col-lg-3 m-b ">
												<option value="Normal">Normal Skin</option>
												<option value="Oily">Oily Skin</option>
												<option value="Drys">Dry Skin</option>
												<option value="Sensitive">Sensitive Skin</option>
												<option value="Combination">Combination Skin</option>
											</select>

										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-2 ">Eye Color</label>
											<select ng-model="ctrlPhy.phydetails.eyeColor"
												ng-init="ctrlPhy.phydetails.eyeColor=u.eye_color"
												name="eyeColor" class="form-control-width col-lg-3 m-b ">
												<option value="Lightblue">Light blue</option>
												<option value="Iceblue">Ice blue</option>
												<option value="Blue">Blue</option>
												<option value="Grey-blue">Grey-blue</option>
												<option value="White">White</option>
												<option value="Black">Black</option>
												<option value="Grey">Grey</option>
												<option value="Teal">Teal</option>
												<option value="Icegreen">Ice green</option>
												<option value="Green">Green</option>
												<option value="Grey-green">Grey-green</option>
												<option value="Palegold">Pale gold</option>
												<option value="Yellow">Yellow</option>
												<option value="Gold">Gold</option>
												<option value="Orange">Orange</option>
												<option value="Brown">Brown</option>
												<option value="Darkbrow">Dark brown</option>
												<option value="Red">Red</option>
												<option value="Palepurple">Pale purple</option>
												<option value="Purple">Purple</option>
												<option value="Magenta">Magenta</option>
												<option value="Orange">Brown & green</option>
												<option value="Orange">Gold & green</option>
												<option value="Darkbrow">Albino</option>
												<option value="Darkbrow">Blind</option>
											</select> <label for="" class="text-muted col-lg-2">Height</label> <input
												ng-model="ctrlPhy.phydetails.heightUnit"
												ng-init="ctrlPhy.phydetails.heightUnit=u.height_unit"
												name="heightUnit" class="form-control-width col-lg-3"
												placeholder="Height (cm/feet)" required minlength="2" maxlength="50"
												autocomplete="off">
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-2 ">Weight</label> <input
												ng-model="ctrlPhy.phydetails.weightUnit"
												ng-init="ctrlPhy.phydetails.weightUnit=u.weight_unit"
												name="weightUnit" class="form-control-width col-lg-3"
												placeholder="Weight(kg)" required minlength="2" maxlength="50"
												autocomplete="off"> <label for="" class="text-muted col-lg-2">Physique</label>
											<select ng-model="ctrlPhy.phydetails.physique"
												ng-init="ctrlPhy.phydetails.physique=u.physique"
												name="physique" class="form-control-width col-lg-3 m-b ">
												<option value="Ectomorph">Ectomorph</option>
												<option value="Mesomorph">Mesomorph</option>
												<option value="Endomorph">Endomorph</option>
											</select>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-2 ">Facial
												Hair</label> <select ng-model="ctrlPhy.phydetails.facialHair"
												ng-init="ctrlPhy.phydetails.facialHair=u.facial_hair"
												name="facialHair" class="form-control-width col-lg-3 m-b ">
												<option value="Hollywoodian">Hollywoodian</option>
												<option value="Muttonchops">Mutton chops</option>
												<option value="Alasouvaror">A la Souvaror</option>
												<option value="Frenchfork">French Fork</option>
												<option value="Ducktail">Ducktail</option>
												<option value="Fumanchu">Fu Manchu</option>
												<option value="Olddutch">Old Dutch</option>
												<option value="Dali">Dali</option>
											</select> <label for="" class="text-muted col-lg-2">Hair
												Style</label> <select ng-model="ctrlPhy.phydetails.hairStyle"
												ng-init="ctrlPhy.phydetails.hairStyle=u.hair_style"
												name="hairStyle" class="form-control-width col-lg-3 m-b ">
												<option value="Pompadourhaircut">Pompadour Haircut</option>
												<option value="Comboverhaircut">Comb Over Haircut</option>
												<option value="Crewcut">Crew Cut</option>
												<option value="Caesarcut">Caesar Cut</option>
												<option value="Tapercut">Taper Cut</option>
												<option value="Inductioncut">Induction Cut</option>
												<option value="Burrcut">Burr Cut</option>
												<option value="Buzzcut">Buzz Cut</option>
											</select>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-2 ">Hair Color</label>
											<select ng-model="ctrlPhy.phydetails.hairColor"
												ng-init="ctrlPhy.phydetails.hairColor=u.hair_color"
												name="hairColor" class="form-control-width col-lg-3 m-b ">
												<option value="Natural">Natural</option>
												<option value="Mahogany">Mahogany</option>
												<option value="Ash">Ash</option>
												<option value="Copper">Copper</option>
												<option value="Golden">Golden</option>
											</select> <label for="" class="text-muted col-lg-2">HairLength</label>
											<select ng-model="ctrlPhy.phydetails.hairLength"
												ng-init="ctrlPhy.phydetails.hairLength=u.hair_length"
												name="hairLength" class="form-control-width col-lg-3 m-b ">
												<option value="Shaved">Shaved</option>
												<option value="Short">Short</option>
												<option value="Medium">Medium</option>
												<option value="Long">Long</option>
											</select>
										</div>
									</fieldset>


									<div class="form-group">
										<div class="row">
											<div class="col-xs-7"></div>
											<div class="col-xs-4">
												<input type="submit" class="btn btn-success" value="Update" />
											</div>
										</div>
									</div>
								</form>
							</div>

							<div class="panel panel-default">
								<h4 class="text-muted text-thin text-center">Work
									Experience Details</h4>
								<form name="userPhyExpForm"
									ng-controller="ProfessinalExpController as ctrlProExp"
									ng-submit="ctrlProExp.submit()" cssClass="form-horizontal">

									<input type="hidden" name="userId"
										ng-model="ctrlProExp.proExpdetails.userId" />

									<fieldset ng-if="ctrlProExp.expdata.length ==0">

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-6">The Film
												Industry Worked in previously</label> <select
												ng-model="ctrlProExp.proExpdetails.preWorkInd"
												ng-init="ctrlProExp.proExpdetails.preWorkInd='None'"
												name="preWorkInd" class="form-control-text col-2 m-b">
												<option value="None">Select Cinema Industry of
													India</option>
												<option value="Assamese">Assamese Cinema Industry</option>
												<option value="Badaga">Badaga Cinema Industry</option>
												<option value="Bengali">Bengali Cinema Industry</option>
												<option value="Bhojpuri">Bhojpuri Cinema Industry</option>
												<option value="Brajbhasa">Brajbhasa Cinema Industry</option>
												<option value="Bihari">Bihari Cinema Industry</option>
												<option value="Chattisgarhi">Chattisgarhi Cinema
													Industry</option>
												<option value="Gujarati">Gujarati Cinema Industry</option>
												<option value="Haryanvi">Haryanvi Cinema Industry</option>
												<option value="Hindi">Hindi Cinema Industry</option>
												<option value="Jharkhandi">Jharkhandi Cinema
													Industry</option>
												<option value="Kannada">Kannada Cinema Industry</option>
												<option value="Konkani">Konkani Cinema Industry</option>
												<option value="Kashmiri">Kashmiri Cinema Industry</option>
												<option value="Kosli">Kosli Cinema Industry</option>
												<option value="Malayalam">Malayalam Cinema Industry</option>
												<option value="Manipuri">Manipuri Cinema Industry</option>
												<option value="Marathi">Marathi Cinema Industry</option>
												<option value="Nepali">Nepali Cinema Industry</option>
												<option value="Punjabi">Punjabi Cinema Industry</option>
												<option value="Rajasthani">Rajasthani Cinema
													Industry</option>
												<option value="Tamil">Tamil Cinema Industry</option>
												<option value="Telugu">Telugu Cinema Industry</option>
												<option value="Tulu">Tulu Cinema Industry</option>
											</select>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-6">Film
												Industry Intested in now</label> <select
												ng-model="ctrlProExp.proExpdetails.fileIndIntreste"
												ng-init="ctrlProExp.proExpdetails.fileIndIntreste='None'"
												name="fileIndIntreste" class="form-control-text col-2 m-b">
												<option value="None">Select Cinema Industry of
													India</option>
												<option value="Assamese">Assamese Cinema Industry</option>
												<option value="Badaga">Badaga Cinema Industry</option>
												<option value="Bengali">Bengali Cinema Industry</option>
												<option value="Bhojpuri">Bhojpuri Cinema Industry</option>
												<option value="Brajbhasa">Brajbhasa Cinema Industry</option>
												<option value="Bihari">Bihari Cinema Industry</option>
												<option value="Chattisgarhi">Chattisgarhi Cinema
													Industry</option>
												<option value="Gujarati">Gujarati Cinema Industry</option>
												<option value="Haryanvi">Haryanvi Cinema Industry</option>
												<option value="Hindi">Hindi Cinema Industry</option>
												<option value="Jharkhandi">Jharkhandi Cinema
													Industry</option>
												<option value="Kannada">Kannada Cinema Industry</option>
												<option value="Konkani">Konkani Cinema Industry</option>
												<option value="Kashmiri">Kashmiri Cinema Industry</option>
												<option value="Kosli">Kosli Cinema Industry</option>
												<option value="Malayalam">Malayalam Cinema Industry</option>
												<option value="Manipuri">Manipuri Cinema Industry</option>
												<option value="Marathi">Marathi Cinema Industry</option>
												<option value="Nepali">Nepali Cinema Industry</option>
												<option value="Punjabi">Punjabi Cinema Industry</option>
												<option value="Rajasthani">Rajasthani Cinema
													Industry</option>
												<option value="Tamil">Tamil Cinema Industry</option>
												<option value="Telugu">Telugu Cinema Industry</option>
												<option value="Tulu">Tulu Cinema Industry</option>
											</select>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-6">Why do you
												want to work in Film Industry</label> <input
												ng-model="ctrlProExp.proExpdetails.reason" name="reason"
												class="form-control-text col-lg-2"
												placeholder="Why do you want to work in Film Industry"
												required minlength="2" maxlength="50" autocomplete="off">
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-6">Name the
												Director you worked with</label> <input
												ng-model="ctrlProExp.proExpdetails.nameWorkWithDir"
												name="nameWorkWithDir" class="form-control-text col-lg-2"
												placeholder="Name the Director you worked with" required
												minlength="2" maxlength="50" autocomplete="off">
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-6">Name the
												Films worked in</label> <input
												ng-model="ctrlProExp.proExpdetails.nameWorkFilm"
												name="filmName" class="form-control-text col-lg-2"
												placeholder="Name the Films worked in" required
												minlength="2" maxlength="50" autocomplete="off">
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-6">Name the
												Production House you worked</label> <input
												ng-model="ctrlProExp.proExpdetails.nameWorkProHouse"
												name="phouseName" class="form-control-text col-lg-2"
												placeholder="Name the Production House you worked for"
												required minlength="2" maxlength="50" autocomplete="off">
										</div>

									</fieldset>

									<fieldset ng-if="ctrlProExp.expdata.length !=0"
										ng-repeat="u in ctrlProExp.expdata">
										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-6">The Film
												Industry Worked in previously</label> <select
												ng-model="ctrlProExp.proExpdetails.preWorkInd"
												ng-init="ctrlProExp.proExpdetails.preWorkInd=u.previous_work_indusry"
												name="preWorkInd" class="form-control-text col-2 m-b">
												<option value="None">Select Cinema Industry of
													India</option>
												<option value="Assamese">Assamese Cinema Industry</option>
												<option value="Badaga">Badaga Cinema Industry</option>
												<option value="Bengali">Bengali Cinema Industry</option>
												<option value="Bhojpuri">Bhojpuri Cinema Industry</option>
												<option value="Brajbhasa">Brajbhasa Cinema Industry</option>
												<option value="Bihari">Bihari Cinema Industry</option>
												<option value="Chattisgarhi">Chattisgarhi Cinema
													Industry</option>
												<option value="Gujarati">Gujarati Cinema Industry</option>
												<option value="Haryanvi">Haryanvi Cinema Industry</option>
												<option value="Hindi">Hindi Cinema Industry</option>
												<option value="Jharkhandi">Jharkhandi Cinema
													Industry</option>
												<option value="Kannada">Kannada Cinema Industry</option>
												<option value="Konkani">Konkani Cinema Industry</option>
												<option value="Kashmiri">Kashmiri Cinema Industry</option>
												<option value="Kosli">Kosli Cinema Industry</option>
												<option value="Malayalam">Malayalam Cinema Industry</option>
												<option value="Manipuri">Manipuri Cinema Industry</option>
												<option value="Marathi">Marathi Cinema Industry</option>
												<option value="Nepali">Nepali Cinema Industry</option>
												<option value="Punjabi">Punjabi Cinema Industry</option>
												<option value="Rajasthani">Rajasthani Cinema
													Industry</option>
												<option value="Tamil">Tamil Cinema Industry</option>
												<option value="Telugu">Telugu Cinema Industry</option>
												<option value="Tulu">Tulu Cinema Industry</option>
											</select>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-6">Film
												Industry Intested in now</label> <select
												ng-model="ctrlProExp.proExpdetails.fileIndIntreste"
												ng-init="ctrlProExp.proExpdetails.fileIndIntreste=u.film_industry_intrested"
												name="fileIndIntreste" class="form-control-text col-2 m-b">
												<option value="None">Select Cinema Industry of
													India</option>
												<option value="Assamese">Assamese Cinema Industry</option>
												<option value="Badaga">Badaga Cinema Industry</option>
												<option value="Bengali">Bengali Cinema Industry</option>
												<option value="Bhojpuri">Bhojpuri Cinema Industry</option>
												<option value="Brajbhasa">Brajbhasa Cinema Industry</option>
												<option value="Bihari">Bihari Cinema Industry</option>
												<option value="Chattisgarhi">Chattisgarhi Cinema
													Industry</option>
												<option value="Gujarati">Gujarati Cinema Industry</option>
												<option value="Haryanvi">Haryanvi Cinema Industry</option>
												<option value="Hindi">Hindi Cinema Industry</option>
												<option value="Jharkhandi">Jharkhandi Cinema
													Industry</option>
												<option value="Kannada">Kannada Cinema Industry</option>
												<option value="Konkani">Konkani Cinema Industry</option>
												<option value="Kashmiri">Kashmiri Cinema Industry</option>
												<option value="Kosli">Kosli Cinema Industry</option>
												<option value="Malayalam">Malayalam Cinema Industry</option>
												<option value="Manipuri">Manipuri Cinema Industry</option>
												<option value="Marathi">Marathi Cinema Industry</option>
												<option value="Nepali">Nepali Cinema Industry</option>
												<option value="Punjabi">Punjabi Cinema Industry</option>
												<option value="Rajasthani">Rajasthani Cinema
													Industry</option>
												<option value="Tamil">Tamil Cinema Industry</option>
												<option value="Telugu">Telugu Cinema Industry</option>
												<option value="Tulu">Tulu Cinema Industry</option>
											</select>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-6">Why do you
												want to work in Film Industry</label> <input
												ng-model="ctrlProExp.proExpdetails.reason"
												ng-init="ctrlProExp.proExpdetails.reason=u.reason"
												name="reason" class="form-control-text col-lg-2"
												placeholder="Why do you want to work in Film Industry"
												required minlength="2" maxlength="50" autocomplete="off">
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-6">Name the
												Director you worked with</label> <input
												ng-model="ctrlProExp.proExpdetails.nameWorkWithDir"
												ng-init="ctrlProExp.proExpdetails.nameWorkWithDir=u.name_worked_with_director"
												name="nameWorkWithDir" class="form-control-text col-lg-2"
												placeholder="Name the Director you worked with" autocomplete="off">
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-6">Name the
												Films worked in</label> <input
												ng-model="ctrlProExp.proExpdetails.nameWorkFilm"
												name="filmName"
												ng-init="ctrlProExp.proExpdetails.nameWorkFilm=u.name_worked_film"
												class="form-control-text col-lg-2"
												placeholder="Name the Films worked in" autocomplete="off">
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-6">Name the
												Production House you worked</label> <input
												ng-model="ctrlProExp.proExpdetails.nameWorkProHouse"
												ng-init="ctrlProExp.proExpdetails.nameWorkProHouse=u.name_worked_production_house"
												name="phouseName" class="form-control-text col-lg-2"
												placeholder="Name the Production House you worked for" autocomplete="off">
										</div>

									</fieldset>
									<div class="form-group">
										<div class="row">
											<div class="col-xs-7"></div>
											<div class="col-xs-4">
												<input type="submit" id="saveUserExpDetailsInfo"
													class="btn btn-success" value="Update" />
											</div>
										</div>
									</div>
								</form>
							</div>
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
							<li><a href="${pageContext.request.contextPath}/moviemaking">Movie
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
							<button type="submit" class="btn btn-success mt-lg" id="loginPop"
								title="Login">Login</button>
							&nbsp;&nbsp;&nbsp;&nbsp;
							<button type="submit" class="btn btn-success mt-lg"
								id="registerSocial" title="Register">Register</button>
						</div></li>
				</ul>
				</nav>
			</div>
		</div>
		</nav>
	</div>
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
						<li><a href="http://tumblr.com"> <i class="fa fa-tumblr"></i>
						</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	</footer>

</body>
</html>