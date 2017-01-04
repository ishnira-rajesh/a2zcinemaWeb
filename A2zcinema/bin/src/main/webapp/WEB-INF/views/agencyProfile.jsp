<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>A2zcinema | AgencyProfile</title>
<meta name="description" />

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript" src="static/mainfiles/js/angular.js"></script>
<script type="text/javascript" src="static/mainfiles/js/ngStorage.js"></script>
<script src="static/js/app.js"></script>
<script src="static/js/agencyprofileconroller/agency_profile_service.js"></script>
<script
	src="static/js/agencyprofileconroller/agency_profile_controller.js"></script>
<script src="static/js/aboutcontroller/aboutuscontroller.js"></script>
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

<style>
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
								<li><a href="${pageContext.request.contextPath}/contact">Contact</a></li>
								<li>
									<div class="text-center"
										ng-controller="AboutusController as ctrl">

										<button type="submit" class="btn btn-success mt-lg"
											title="Profile">
											<a href="${pageContext.request.contextPath}/agencyProfile">Profile</a>
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
										ng-controller="AgencyController as ctrlAgency"
										ng-submit="ctrlAgency.submit()">

										<input type="hidden" name="userId"
											ng-model="ctrlAgency.adnExpdetails.userId" />
										<!--  -->
										<fieldset ng-if="ctrlAgency.agnpdata.length == 0">
											<div class="form-group has-feedback" ng-class="{ 'has-error' : userProfileForm.nameOfAgency.$invalid && !userProfileForm.nameOfAgency.$pristine }">
												<label for="" class="text-muted col-lg-4">Name of
													Agency/Company</label> <input
													ng-model="ctrlAgency.agencyProDetails.nameOfAgency"
													name="nameOfAgency" class="form-control-text col-2" maxlength="31"
													placeholder="Name of Agency/Company" required ng-minlength="2"
													ng-maxlength="30" autocomplete="off">
													<p ng-show="userProfileForm.nameOfAgency.$error.minlength"
									                class="help-block">Father name is too short minlength 3.</p>
								                <p ng-show="userProfileForm.nameOfAgency.$error.maxlength"
									                class="help-block">Father name is too long maxlength 30.</p	>
											</div>

											<div class="form-group has-feedback" ng-class="{ 'has-error' : userProfileForm.officeContNo.$invalid && !userProfileForm.officeContNo.$pristine }">
												<label for="" class="text-muted col-lg-4">Office
													Contact No </label> <input
													ng-model="ctrlAgency.agencyProDetails.officeContNo"
													name="officeContNo" class="form-control-text col-2"
													placeholder="Office Contact No" required maxlength="16" autocomplete="off" ng-minlength="10" ng-maxlength="15"/>
												<p ng-show="userProfileForm.officeContNo.$error.minlength"
									                 class="help-block">Office no is too short minlength 10.</p>
								                <p ng-show="userProfileForm.officeContNo.$error.maxlength"
									                 class="help-block">Office no is too long maxlength 15.</p	>
											</div>

											<div class="form-group has-feedback" ng-class="{ 'has-error' : userProfileForm.mobile.$invalid && !userProfileForm.mobile.$pristine }">
												<label for="" class="text-muted col-lg-4">Mobile No</label>
												<input ng-model="ctrlAgency.agencyProDetails.mobile"
													name="mobile" class="form-control-text col-2"
													placeholder="mobile no" required maxlength="16" autocomplete="off" ng-minlength="10" ng-maxlength="15"/>
												<p ng-show="userProfileForm.mobile.$error.minlength"
									                 class="help-block">Mobile is too short minlength 10.</p>
								                <p ng-show="userProfileForm.mobile.$error.maxlength"
									                 class="help-block">Mobile is too long maxlength 15.</p	>
											</div>

											<div class="form-group has-feedback">
												<label for="" class="text-muted col-lg-4">Email </label> <input
													type="email" ng-model="ctrlAgency.agencyProDetails.email" name="email"
													class="form-control-text col-2" placeholder="E-mail"
													maxlength="50" autocomplete="off" required>
											</div>

											<div class="form-group has-feedback">
												<label for="" class="text-muted col-lg-4">Website</label> <input
													ng-model="ctrlAgency.agencyProDetails.website"
													name="website" class="form-control-text col-2"
													placeholder="website" required minlength="2" maxlength="50"
													autocomplete="off">
											</div>

											<div class="form-group has-feedback">
												<label for="" class="text-muted col-lg-4">Services</label> <input
													ng-model="ctrlAgency.agencyProDetails.service"
													name="service" class="form-control-text col-2"
													placeholder="Enter your Services " required maxlength="1000" autocomplete="off">
											</div>

											<div class="form-group">
												<div class="row">
													<div class="col-xs-7"></div>
													<div class="col-xs-4">
														<input type="submit" class="btn btn-success"
															value="Update" />
													</div>
												</div>
											</div>
										</fieldset>

										<fieldset ng-if="ctrlAgency.agnpdata.length != 0"
											ng-repeat="u in ctrlAgency.agnpdata">
											<div class="form-group has-feedback" ng-class="{ 'has-error' : userProfileForm.nameOfAgency.$invalid && !userProfileForm.nameOfAgency.$pristine }">
												<label for="" class="text-muted col-lg-4">Name of
													Agency/Company</label> <input
													ng-model="ctrlAgency.agencyProDetails.nameOfAgency"
													ng-init="ctrlAgency.agencyProDetails.nameOfAgency=u.name_of_agency"
													name="nameOfAgency" class="form-control-text col-2"
													placeholder="Name of Agency/Company" required ng-minlength="2"
													ng-maxlength="30" autocomplete="off">
													<p ng-show="userProfileForm.nameOfAgency.$error.minlength"
									                class="help-block">Father name is too short minlength 3.</p>
								                     <p ng-show="userProfileForm.nameOfAgency.$error.maxlength"
									                class="help-block">Father name is too long maxlength 30.</p	>
											</div>

											<div class="form-group has-feedback" ng-class="{ 'has-error' : userProfileForm.officeContNo.$invalid && !userProfileForm.officeContNo.$pristine }">
												<label for="" class="text-muted col-lg-4">Office
													Contact No </label> <input
													ng-model="ctrlAgency.agencyProDetails.officeContNo"
													ng-init="ctrlAgency.agencyProDetails.officeContNo=u.office_contact_no"
													name="officeContNo" class="form-control-text col-2"
													placeholder="Office Contact No" required maxlength="16" autocomplete="off" ng-minlength="10" ng-maxlength="15"/>
												    <p ng-show="userProfileForm.officeContNo.$error.minlength"
									                 class="help-block">Office no is too short minlength 10.</p>
								                    <p ng-show="userProfileForm.officeContNo.$error.maxlength"
									                 class="help-block">Office no is too long maxlength 15.</p>
											</div>

											<div class="form-group has-feedback" ng-class="{ 'has-error' : userProfileForm.mobile.$invalid && !userProfileForm.mobile.$pristine }">
												<label for="" class="text-muted col-lg-4">Mobile No</label>
												<input ng-model="ctrlAgency.agencyProDetails.mobile"
													name="mobile" class="form-control-text col-2"
													placeholder="mobile no" required maxlength="16" autocomplete="off" ng-minlength="10" ng-maxlength="15"/>
												<p ng-show="userProfileForm.mobile.$error.minlength"
									                 class="help-block">Mobile is too short minlength 10.</p>
								                <p ng-show="userProfileForm.mobile.$error.maxlength"
									                 class="help-block">Mobile is too long maxlength 15.</p	>
											</div>

											<div class="form-group has-feedback">
												<label for="" class="text-muted col-lg-4">Email </label> <input
													type="email" ng-model="ctrlAgency.agencyProDetails.email" name="email"
													class="form-control-text col-2" placeholder="E-mail"
													maxlength="50" autocomplete="off" required>
											</div>

											<div class="form-group has-feedback">
												<label for="" class="text-muted col-lg-4">Website</label> <input
													ng-model="ctrlAgency.agencyProDetails.website"
													ng-init="ctrlAgency.agencyProDetails.website=u.website"
													name="website" class="form-control-text col-2"
													placeholder="website" minlength="2" maxlength="50" autocomplete="off" required>
											</div>

											<div class="form-group has-feedback">
												<label for="" class="text-muted col-lg-4">Services</label> <input
													ng-model="ctrlAgency.agencyProDetails.service"
													ng-init="ctrlAgency.agencyProDetails.service=u.service"
													name="service" class="form-control-text col-2"
													placeholder="Enter your Services " maxlength="1000" autocomplete="off" required>
											</div>

											<div class="form-group">
												<div class="row">
													<div class="col-xs-7"></div>
													<div class="col-xs-4">
														<input type="submit" class="btn btn-success"
															value="Update" />
													</div>
												</div>
											</div>
										</fieldset>

									</form>
								</div>
								<!-- ========================================Profile Details End ================================          -->

								<!-- ========================================Work Experience Details  start================================          -->

								<div class="panel panel-default">
									<h4 class="text-muted text-thin text-center">Pictures and
										Video upload</h4>
									<!-- The file upload form used as target for the file upload widget -->
									<!-- <form id="fileupload" action="//jquery-file-upload.appspot.com/"
								method="POST" enctype="multipart/form-data" data-ng-app="demo"
								data-ng-controller="DemoFileUploadController"
								data-file-upload="options"
								data-ng-class="{'fileupload-processing': processing() || loadingFiles}">
								Redirect browsers with JavaScript disabled to the origin page

								The fileupload-buttonbar contains buttons to add/delete files and start/cancel the upload
								<div class="row fileupload-buttonbar">
									<div class="col-lg-12">
										The fileinput-button span is used to style the file input field as button
										<span class="btn btn-success fileinput-button"
											ng-class="{disabled: disabled}"> <i
											class="glyphicon glyphicon-plus"></i> <span>Upload Pic</span>
											<input type="file" name="files[]" multiple
											ng-disabled="disabled">
										</span>
									</div>
								</div>
								<div class="panel panel-default"
									style="overflow-y: scroll; height: 400px">
									<table class="table table-striped files ng-cloak">
										<tr data-ng-repeat="file in queue"
											data-ng-class="{'processing': file.$processing()}">
											<th data-ng-switch data-on="!!file.thumbnailUrl">
												<div class="preview" data-ng-switch-default
													data-file-upload-preview="file"></div> <span
												data-ng-switch-default>{{file.name}}</span> <strong
												data-ng-show="file.error" class="error text-danger">{{file.error}}</strong>
											<th>

												<p class="size">{{file.size | formatFileSize}}</p>
											<th>
												<button type="button" class="btn btn-danger cancel"
													data-ng-click="file.$cancel()" data-ng-hide="!file.$cancel">
													<i class="glyphicon glyphicon-trash"></i> <span>Delete</span>
												</button>
											</th>
										</tr>
									</table>
								</div>
								<div class="panel panel-default" style="overflow-y: scroll; height: 200px">
									<div class="col-lg-12">
										The fileinput-button span is used to style the file input field as button
										<span class="btn btn-success fileinput-button" ng-class="{disabled: disabled}">  <span>Upload Video</span>
											<input type="submit" name="videoupload" multiple ng-disabled="disabled">
										</span>
									</div>
					
										<div class="col-lg-12">
											<div class="form-group has-feedback">
												<label for="" class="text-muted col-lg-4"> URL Link
													1.</label> <input id="Agencyid" name="Agency" class="form-control"
													placeholder="URL LInk......" required minlength="2" maxlength="20000" value="">
											</div>
											<div class="form-group has-feedback">
												<label for="" class="text-muted col-lg-4"> URL Link
													2.</label> <input id="Agencyid" name="Agency" class="form-control"
													placeholder="URL LInk......" required minlength="2" maxlength="2000" value="">
											</div>
											<div class="form-group has-feedback">
												<label for="" class="text-muted col-lg-4"> URL Link
													3.</label> <input id="Agencyid" name="Agency" class="form-control"
													placeholder="URL LInk......" required minlength="2" maxlength="2000" value="">
											</div>

									</div>
								</div>
							</form> -->
								</div>
								<!-- ========================================Work Experience Details  End================================          -->

							</div>

							<!-- ========================================Present Address start================================          -->

							<div class="col-lg-6">
								<div class="panel panel-default">
									<h4 class="text-muted text-thin text-center">Work
										Experience Details</h4>
									<form id="userPhyExpForm" cssClass="form-horizontal"
										ng-controller="AgnProfessinalExpController as ctrlProExp"
										ng-submit="ctrlProExp.submit()">

										<input type="hidden" name="userId"
											ng-model="ctrlProExp.proExpdetails.userId" />
										<fieldset ng-if="ctrlProExp.expdata.length ==0">

											<div class="form-group has-feedback">
												<label for="" class="text-muted col-lg-6">The Film
													Industry Worked in previously</label> <select
													ng-model="ctrlProExp.proExpdetails.preWorkInd"
													ng-init="ctrlProExp.proExpdetails.preWorkInd='None'"
													name="preWorkInd" class="form-control-text col-2">
													<option value="None">Select Cinema Industry of
														India</option>
													<option value="Assamese">Assamese Cinema Industry</option>
													<option value="Badaga">Badaga Cinema Industry</option>
													<option value="Bengali">Bengali Cinema Industry</option>
													<option value="Bhojpuri">Bhojpuri Cinema Industry</option>
													<option value="Brajbhasa">Brajbhasa Cinema
														Industry</option>
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
													<option value="Malayalam">Malayalam Cinema
														Industry</option>
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
												<label for="" class="text-muted col-lg-6">Name the
													Films worked in</label> <input
													ng-model="ctrlProExp.proExpdetails.nameWorkFilm"
													name="filmName" class="form-control-text col-lg-2"
													placeholder="Name the Films worked in" autocomplete="off">
											</div>

											<div class="form-group has-feedback">
												<label for="" class="text-muted col-lg-6">Name the
													Production House you worked</label> <input
													ng-model="ctrlProExp.proExpdetails.nameWorkProHouse"
													name="phouseName" class="form-control-text col-lg-2"
													placeholder="Name the Production House you worked for" autocomplete="off">
											</div>
										</fieldset>

										<fieldset ng-if="ctrlProExp.expdata.length !=0"
											ng-repeat="u in ctrlProExp.expdata">

											<div class="form-group has-feedback">
												<label for="" class="text-muted col-lg-6">The Film
													Industry Worked in previously</label> <select
													ng-model="ctrlProExp.proExpdetails.preWorkInd"
													ng-init="ctrlProExp.proExpdetails.preWorkInd=u.previous_work_indusry"
													name="preWorkInd" class="form-control-text col-2">
													<option value="None">Select Cinema Industry of
														India</option>
													<option value="Assamese">Assamese Cinema Industry</option>
													<option value="Badaga">Badaga Cinema Industry</option>
													<option value="Bengali">Bengali Cinema Industry</option>
													<option value="Bhojpuri">Bhojpuri Cinema Industry</option>
													<option value="Brajbhasa">Brajbhasa Cinema
														Industry</option>
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
													<option value="Malayalam">Malayalam Cinema
														Industry</option>
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
												<label for="" class="text-muted col-lg-6">Name the
													Films worked in</label> <input
													ng-model="ctrlProExp.proExpdetails.nameWorkFilm"
													ng-init="ctrlProExp.proExpdetails.nameWorkFilm=u.name_worked_film"
													name="filmName" class="form-control-text col-lg-2"
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
													<input type="submit" class="btn btn-success" value="Update" />
												</div>
											</div>
										</div>
									</form>
								</div>

								<div class="panel panel-default">
									<h4 class="text-muted text-thin text-center">Present
										Address</h4>
									<form name="userAddressForm" class="mb-lg"
										ng-controller="AgnAddressController as ctrlAdd"
										ng-submit="ctrlAdd.submit()" class="form-horizontal">

										<input type="hidden" name="userId"
											ng-model="ctrlAdd.addressdetails.userId" />

										<fieldset ng-if="ctrlAdd.adddata.length == 0">

											<div class="form-group has-feedback">
												<label for="" class="text-muted col-lg-4">Address</label>
												<textarea ng-model="ctrlAdd.addressdetails.prAddress"
													name="prAddress" placeholder="Address"
													class="form-control form-control-text col-2"
													maxlength="500" style="overflow: auto; resize: none"
													rows="4" aria-invalid="false" autocomplete="off" required></textarea>
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
													name="prState" class="form-control-text col-2">

													<option value="AndhraPradesh">Andhra Pradesh</option>
													<option value="ArunachalPradesh">Arunachal
														Pradesh</option>
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
												<label for="" class="text-muted col-lg-4">District</label>
												<input ng-model="ctrlAdd.addressdetails.prDistrict"
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
													class="form-control form-control-text col-2"
													maxlength="500" style="overflow: auto; resize: none"
													rows="4" aria-invalid="false" autocomplete="off"></textarea>
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
													<option value="ArunachalPradesh">Arunachal
														Pradesh</option>
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
												<label for="" class="text-muted col-lg-4">District</label>
												<input ng-model="ctrlAdd.addressdetails.pmDistrict"
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
													class="form-control form-control-text col-2"
													maxlength="500" style="overflow: auto; resize: none"
													rows="4" aria-invalid="false" autocomplete="off"></textarea>
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
													<option value="ArunachalPradesh">Arunachal
														Pradesh</option>
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
												<label for="" class="text-muted col-lg-4">District</label>
												<input ng-model="ctrlAdd.addressdetails.prDistrict"
													ng-init="ctrlAdd.addressdetails.prDistrict=u.pr_district"
													name="prDistrict" class="form-control-text col-2"
													placeholder="District" maxlength="50" autocomplete="off">
											</div>

											<div class="form-group has-feedback">
												<label for="" class="text-muted col-lg-4">Zipcode/Postalcode</label>
												<input ng-model="ctrlAdd.addressdetails.prZipPostal"
													ng-init="ctrlAdd.addressdetails.prZipPostal=u.pr_zip_postal"
													name="prZipPostal" class="form-control-text col-2"
													placeholder="Zipcode/Postalcode" maxlength="50" autocomplete="off">
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
													class="form-control form-control-text col-2"
													maxlength="500" style="overflow: auto; resize: none"
													rows="4" aria-invalid="false" autocomplete="off"></textarea>
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
													<option value="ArunachalPradesh">Arunachal
														Pradesh</option>
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
												<label for="" class="text-muted col-lg-4">District</label>
												<input ng-model="ctrlAdd.addressdetails.pmDistrict"
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
								<!-- ========================================Present Address End================================          -->
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


