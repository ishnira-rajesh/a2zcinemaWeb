<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>A2zcinema | Backsupporting</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript" src="static/mainfiles/js/angular.js"></script>
<script type="text/javascript" src="static/mainfiles/js/ngStorage.js"></script>
<script src="static/js/app.js"></script>
<script
	src="static/js/backsupportprofilecontroller/back_profile_service.js"></script>
<script
	src="static/js/backsupportprofilecontroller/back_profile_controller.js"></script>
<script src="static/js/aboutcontroller/aboutuscontroller.js"></script>
<script src="static/js/imagevideo/ImageController.js"></script>
<script src="static/js/imagevideo/ImageService.js"></script>

<script src="static/js/profilecontroller/changePassword.js"></script>
<script src="static/js/profilecontroller/userpic.js"></script>

<link rel="stylesheet" href="static/mainfiles/js/bootstrap.min.css"></link>

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
<link rel="stylesheet" href="static/mainfiles/css/whirl.css">
<link rel="stylesheet" type="text/css"
	href="static/mainfiles/css/jquery.fileupload.css" />

<!-- <script type="text/javascript" src="static/mainfiles/js/jquery.min.js"></script>
<script type="text/javascript" src="static/js/angular-file-upload.min.js"></script>
<script src="static/js/directives.js"></script> -->

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
						<li><a href="${pageContext.request.contextPath}/crowdfunding">Crowd
								Funding</a></li>
						<li><a
							href="${pageContext.request.contextPath}/onlinedistribution">Online
								Distribution</a></li>
						<li><a
							href="${pageContext.request.contextPath}/onlineaudition">Online
								Auditions</a></li>
						<li><a href="${pageContext.request.contextPath}/contact">Contact
								us</a></li>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<li ng-controller="AboutusController as ctrl"><a
							href="${pageContext.request.contextPath}/actorProfile"
							title="View Profile"><i class="fa fa-user fa-2x"
								aria-hidden="true"></i></a></li>
						<li ng-controller="AboutusController as ctrl"><a href=""
							ng-click="ChangePassword()" title="Change Password"><i
								class="fa fa-key fa-2x" aria-hidden="true"></i></a></li>
								
						<li ng-controller="AboutusController as ctrltt">
						    <span ng-repeat="s3 in ctrltt.userPics">
                            <img ng-src="https://s3.amazonaws.com/a2zcinema-pics/{{s3.user_pic}}"  ng-click="ProfilePic()" class="media-box-object img-circle" style="height: 40px; width:40px; " title="Click Here to Update Profile Picture">
                            </span>
                        </li>
								
						<li ng-controller="AboutusController as ctrl"><a href=""
							ng-click="logout()" title="Logout"><i
								class="fa fa-sign-out fa-2x" aria-hidden="true"></i></a></li>
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
							<div class="panel panel-default" id="createProfilediv">
								<h4 class="text-muted text-thin text-center">Profile
									Details</h4>
								<form name="userProfileForm" class="form-horizontal mb-lg"
									ng-controller="BackProfileController as ctrl"
									ng-submit="ctrl.submit()">

									<input type="hidden" name="userId"
										ng-model="ctrl.profile.userId" />

									<fieldset ng-if="ctrl.profiledata.length == 0">
										<div class="form-group has-feedback"
											ng-class="{ 'has-error' : userProfileForm.fatherName.$invalid && !userProfileForm.fatherName.$pristine }">
											<label for="" class="text-muted col-lg-4">Father Name<span
												style="color: red">*</span></label> <input id="fatherName"
												name="fatherName" class="form-control-text col-2"
												placeholder="Father Name" maxlength="21"
												ng-model="ctrl.profile.fatherName"
												onChange="this.value=this.value.substring(0, 1).toUpperCase() + this.value.substring(1);"
												required ng-minlength="3" ng-maxlength="20"
												autocomplete="off" />
											<p ng-show="userProfileForm.fatherName.$error.minlength"
												class="help-block">Father name is too short minlength 3.</p>
											<p ng-show="userProfileForm.fatherName.$error.maxlength"
												class="help-block">Father name is too long maxlength 20.</p>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Gender<span
												style="color: red">*</span></label> <label
												class="radio-inline c-radio"> <input type="radio"
												value="Male" ng-model="ctrl.profile.gender">Male
											</label> <label class="radio-inline c-radio"> <input
												type="radio" value="Female" ng-model="ctrl.profile.gender">Female
											</label> <label class="radio-inline c-radio"> <input
												type="radio" value="Other" ng-model="ctrl.profile.gender">Other
											</label>
										</div>
										<br>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Date of
												Birth<span style="color: red">*</span>
											</label><span>e.g. DD-MM-YYYY</span> <input id="dob" name="dob"
												class="form-control-text col-2" placeholder="DD-MM-YYYY"
												ng-model="ctrl.profile.dob" required autocomplete="off" />
										</div>

										<div class="form-group has-feedback"
											ng-class="{ 'has-error' : userProfileForm.age.$invalid && !userProfileForm.age.$pristine }">
											<label for="" class="text-muted col-lg-4">Age<span
												style="color: red">*</span></label> <input id="age" name="age"
												class="form-control-text col-2" maxlength="4"
												placeholder="Age" ng-model="ctrl.profile.age" required
												autocomplete="off" ng-minlength="2" ng-maxlength="3" />
											<p ng-show="userProfileForm.age.$error.minlength"
												class="help-block">Age is too short minlength 2 digit.</p>
											<p ng-show="userProfileForm.age.$error.maxlength"
												class="help-block">Age is too long maxlength 3 digit.</p>
										</div>

										<div class="form-group has-feedback"
											ng-class="{ 'has-error' : userProfileForm.mobile.$invalid && !userProfileForm.mobile.$pristine }">
											<label for="" class="text-muted col-lg-4">Mobile<span
												style="color: red">*</span></span></label> <input id="mobile" name="mobile"
												class="form-control-text col-2" placeholder="Mobile"
												ng-model="ctrl.profile.mobile" required maxlength="16"
												autocomplete="off" ng-minlength="10" ng-maxlength="15" />
											<p ng-show="userProfileForm.mobile.$error.minlength"
												class="help-block">Mobile is too short minlength 10.</p>
											<p ng-show="userProfileForm.mobile.$error.maxlength"
												class="help-block">Mobile is too long maxlength 15.</p>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Email<span
												style="color: red">*</span></span></label> <input type="email" id="email"
												name="email" class="form-control-text col-2"
												placeholder="E-mail" ng-model="ctrl.profile.email" required
												autocomplete="off" />
										</div>


										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Whatsapp No</label>
											<input id="whatsupNum" name="whatsupNum"
												class="form-control-text col-2"
												placeholder="Whatsapp No (optional)"
												ng-model="ctrl.profile.whatsupNo" autocomplete="off" />
										</div>



										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Landline No</label>
											<input id="landlineNum" name="landlineNum"
												class="form-control-text col-2"
												placeholder="Landline No (optional)"
												ng-model="ctrl.profile.landlineNo" autocomplete="off" />
										</div>



										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Education /
												Qualification</label> <input id="education" name="education"
												class="form-control-text col-2"
												placeholder="Education / Qualification (optional)"
												ng-model="ctrl.profile.eduQualification" autocomplete="off" />
										</div>


										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Course Done
												related to film/Drama/Modeling</label> <input id="course"
												name="course" class="form-control-text col-2"
												placeholder="Course Done (optional)"
												ng-model="ctrl.profile.courseRelatedProfession"
												autocomplete="off" />
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Languages
												You know<span style="color: red">*</span>
											</label><span>e.g. Hindi,English,Telgu,Kannada</span>
											<!-- <input ng-model="ctrl.profile.language" class="form-control-widths col-lg-2" ng-init="ctrl.profile.language=u.language">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
											<input id="language" name="language"
												class="form-control-text col-2"
												ng-model="ctrl.profile.language"
												ng-init="ctrl.profile.language='Kannada'" required
												autocomplete="off" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Select
												Profile(public or private)<span style="color: red">*</span>
											</label> <select ng-model="ctrl.profile.profileType"
												name="profileType" class="form-control-text col-2" required
												oninvalid="this.setCustomValidity('Please Select your profile.')"
												oninput="setCustomValidity('')">
												<option value="">Please Select your profile.</option>
												<option value="Public">Public</option>
												<option value="Private">Private</option>
											</select>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">About me </label>
											<textarea ng-model="ctrl.profile.aboutme" name="aboutme"
												placeholder="About me (optional)"
												class="form-control form-control-text col-2" maxlength="200"
												style="overflow: auto; resize: none" rows="4"
												aria-invalid="false" autocomplete="off"></textarea>
										</div>

									</fieldset>


									<fieldset ng-if="ctrl.profiledata.length !=0"
										ng-repeat="u in ctrl.profiledata">

										<input type="hidden" name="profileDetailsId"
											ng-model="ctrl.profile.profileDetailsId"
											ng-init="ctrl.profile.profileDetailsId=u.profile_details_id " />

										<div class="form-group has-feedback"
											ng-class="{ 'has-error' : userProfileForm.firstName.$invalid && !userProfileForm.firstName.$pristine }">
											<label for="" class="text-muted col-lg-4">Name<span
												style="color: red">*</span>
											</label> <input id="firstName" name="firstName"
												class="form-control-text col-2" placeholder="First Name"
												ng-model="ctrl.profile.firstName"
												ng-init="ctrl.profile.firstName=u.first_name "
												onChange="this.value=this.value.substring(0, 1).toUpperCase() + this.value.substring(1);"
												maxlength="21" autocomplete="off" required ng-minlength="3"
												ng-maxlength="20" />
											<p ng-show="userProfileForm.firstName.$error.minlength"
												class="help-block">First name is too short minlength 3.</p>
											<p ng-show="userProfileForm.firstName.$error.maxlength"
												class="help-block">First name is too long maxlength 20.</p>
										</div>

										<div class="form-group has-feedback"
											ng-class="{ 'has-error' : userProfileForm.fatherName.$invalid && !userProfileForm.fatherName.$pristine }">
											<label for="" class="text-muted col-lg-4">Father Name<span
												style="color: red">*</span></label> <input id="fatherName"
												name="fatherName" class="form-control-text col-2"
												placeholder="Father Name" ng-model="ctrl.profile.fatherName"
												ng-init="ctrl.profile.fatherName=u.father_name "
												onChange="this.value=this.value.substring(0, 1).toUpperCase() + this.value.substring(1);"
												maxlength="21" autocomplete="off" required ng-minlength="3"
												ng-maxlength="20" />
											<p ng-show="userProfileForm.fatherName.$error.minlength"
												class="help-block">Father name is too short minlength 3.</p>
											<p ng-show="userProfileForm.fatherName.$error.maxlength"
												class="help-block">Father name is too long maxlength 20.</p>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Gender<span
												style="color: red">*</span></label> <label
												class="radio-inline c-radio"> <input type="radio"
												value="Male" ng-model="ctrl.profile.gender"
												ng-init="ctrl.profile.gender=u.gender">Male
											</label> <label class="radio-inline c-radio"> <input
												type="radio" value="Female" ng-model="ctrl.profile.gender"
												ng-init="ctrl.profile.gender=u.gender">Female
											</label> <label class="radio-inline c-radio"> <input
												type="radio" value="Other" ng-model="ctrl.profile.gender"
												ng-init="ctrl.profile.gender=u.gender">Other
											</label>
										</div>
										<br>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Date of
												Birth<span style="color: red">*</span>
											</label><span>e.g. DD-MM-YYYY</span> <input id="dob" name="dob"
												class="form-control-text col-2" placeholder="YYYY-MM-DD"
												ng-model="ctrl.profile.dob" ng-init="ctrl.profile.dob=u.dob"
												required autocomplete="off" />
										</div>

										<div class="form-group has-feedback"
											ng-class="{ 'has-error' : userProfileForm.age.$invalid && !userProfileForm.age.$pristine }">
											<label for="" class="text-muted col-lg-4">Age<span
												style="color: red">*</span></label> <input id="age" name="age"
												class="form-control-text col-2" placeholder="Age"
												ng-model="ctrl.profile.age" maxlength="4"
												ng-init="ctrl.profile.age=u.age" required autocomplete="off"
												ng-minlength="2" ng-maxlength="3" />
											<p ng-show="userProfileForm.age.$error.minlength"
												class="help-block">Age is too short minlength 2 digit.</p>
											<p ng-show="userProfileForm.age.$error.maxlength"
												class="help-block">Age is too long maxlength 3 digit.</p>
										</div>

										<div class="form-group has-feedback"
											ng-class="{ 'has-error' : userProfileForm.mobile.$invalid && !userProfileForm.mobile.$pristine }">
											<label for="" class="text-muted col-lg-4">Mobile<span
												style="color: red">*</span></span></label> <input id="mobile" name="mobile"
												class="form-control-text col-2" placeholder="Mobile"
												ng-model="ctrl.profile.mobile"
												ng-init="ctrl.profile.mobile=u.contact_no" required
												maxlength="16" autocomplete="off" ng-minlength="10"
												ng-maxlength="15" />
											<p ng-show="userProfileForm.mobile.$error.minlength"
												class="help-block">Mobile is too short minlength 10.</p>
											<p ng-show="userProfileForm.mobile.$error.maxlength"
												class="help-block">Mobile is too long maxlength 15.</p>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Email<span
												style="color: red">*</span></span></label> <input type="email" id="email"
												name="email" class="form-control-text col-2"
												placeholder="E-mail" ng-model="ctrl.profile.email"
												ng-init="ctrl.profile.email=u.email_id" required
												autocomplete="off" />
										</div>


										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Whatsapp No</label>
											<input id="whatsupNum" name="whatsupNum"
												class="form-control-text col-2"
												placeholder="Whatsapp No (optional)"
												ng-model="ctrl.profile.whatsupNo"
												ng-init="ctrl.profile.whatsupNo=u.whatsup_no"
												ng-minlength="3" autocomplete="off" />
										</div>



										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Landline No</label>
											<input id="landlineNum" name="landlineNum"
												class="form-control-text col-2"
												placeholder="Landline No (optional)"
												ng-model="ctrl.profile.landlineNo"
												ng-init="ctrl.profile.landlineNo=u.landline_no"
												ng-minlength="3" autocomplete="off" />
										</div>



										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Education /
												Qualification</label> <input id="education" name="education"
												class="form-control-text col-2"
												placeholder="Education / Qualification (optional)"
												ng-model="ctrl.profile.eduQualification"
												ng-init="ctrl.profile.eduQualification=u.education_qualification"
												ng-minlength="3" autocomplete="off" />
										</div>


										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Course Done
												related to film/Drama/Modeling</label> <input id="course"
												name="course" class="form-control-text col-2"
												placeholder="Course Done (optional)"
												ng-model="ctrl.profile.courseRelatedProfession"
												ng-init="ctrl.profile.courseRelatedProfession=u.course_related_profession"
												ng-minlength="3" autocomplete="off" />
										</div>


										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Languages
												You know<span style="color: red">*</span>
											</label><span>e.g. Hindi,English,Telgu,Kannada</span> <input
												id="language" name="language"
												class="form-control-text col-2"
												ng-model="ctrl.profile.language"
												ng-init="ctrl.profile.language=u.language" required
												autocomplete="off" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Select
												Profile(public or private)<span style="color: red">*</span>
											</label> <select ng-model="ctrl.profile.profileType"
												ng-init="ctrl.profile.profileType=u.profile_type"
												name="profileType" class="form-control-text col-2" required
												oninvalid="this.setCustomValidity('Please Select your profile.')"
												oninput="setCustomValidity('')">
												<option value="">Please select your profile.</option>
												<option value="Public">Public</option>
												<option value="Private">Private</option>
											</select>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">About me </label>
											<textarea ng-model="ctrl.profile.aboutme"
												ng-init="ctrl.profile.aboutme=u.aboutme" name="aboutme"
												placeholder="About me (optional)"
												class="form-control form-control-text col-2" maxlength="200"
												style="overflow: auto; resize: none" rows="4"
												aria-invalid="false" autocomplete="off"></textarea>
										</div>

									</fieldset>
									<div class="form-group">
										<div class="row">
											<div class="col-xs-7">
												<label for="" class="text-muted"
													style="margin: 1px 1px 1px 25px;"> Mandatory field
													( <span style="color: red">*</span> )
												</label>
											</div>
											<div class="col-xs-4">
												<input type="submit" value="Update" class="btn btn-success" />
											</div>
										</div>
									</div>
								</form>
							</div>

							<div class="container-fluid"
								style="margin-left: -16px; margin-right: -16px;">
								<h4 class="text-muted text-thin text-center">Pictures</h4>
								<div class=" panel panel-default">
									<div class="panel-heading " style="height: 80px;"
										ng-controller="UploadController">
										<input type="hidden" name="userId"
											ng-model="imageNames.userId" />

										<div class="col-md-12">
											<strong>Note: </strong>Upload photos one by one - maximum 5
											pictures.
										</div>
										<div class="col-md-12">&nbsp;&nbsp;</div>


										<div class="col-md-5">
											<input class="bottom-marg-15" type="file" name="file"
												accept="image/*" file></input>
										</div>
										<div class="progress col-md-5">
											<span>
												<div class="progress-bar" role="progressbar"
													aria-valuenow="{{ uploadProgress }}" aria-valuemin="0"
													aria-valuemax="100" style="width: {{">{{
													uploadProgress == 0 ? '' : uploadProgress + '%' }}</div>
											</span>
										</div>
										<div class="col-md-2">
											<a class="btn btn-primary btn-block btn-lg"
												ng-click="upload()"
												style="padding: 5px 4px; font-size: 12px;">Upload</a>
										</div>
									</div>
									<div class="col-md-12">
										<div class=" table-responsive"
											ng-controller="UserOneImageController as imgs3"
											style="margin-left: -16px; margin-right: -16px;">
											<table class="table table-striped table-bordered table-hover"
												ng-if="imgs3.imagedata.length !=0">
												<thead>
													<tr>
														<th style="width: 99%">Picture</th>
														<th style="width: 1%">Delete</th>
													</tr>
												</thead>
												<tbody>
													<tr id="rowceleb1" ng-repeat="s3 in imgs3.imagedata">
														<td id="name_row1"><img
															ng-src="https://s3.amazonaws.com/a2zcinema-pics/{{s3.image_name}}"
															alt="user's profile" border=3 height=100 width=100></img></td>
														<td><a type="button" value="Delete"
															class="btn btn-danger btn-xs delete"
															data-ng-click="rowDelete(s3.profile_image_id);">Delete</a></td>
													</tr>

												</tbody>
											</table>
										</div>
									</div>

								</div>
							</div>

							<!-- <div class="panel panel-default" ng-controller="ImageController">
								<h4 class="text-muted text-thin text-center">Pictures</h4>
								<span class="btn btn-success fileinput-button"> <i class="fa fa-plus-circle"></i> 
								    <span>Add Photos</span>
									<input type="file" name="file" nv-file-select="" uploader="uploader" multiple>
							    </span>
							    
								<table class="table">
			                        <thead>
			                            <tr>
			                                <th width="50%">Name</th>
			                                <th ng-show="uploader.isHTML5">Size</th>
			                                <th ng-show="uploader.isHTML5">Progress</th>
			                                <th>Status</th>
			                                <th>Actions</th>
			                            </tr>
			                        </thead>
			                        <tbody>
			                            <tr ng-repeat="item in uploader.queue">
			                                <td>
			                                    <strong>{{ item.file.name }}</strong>
			                                    Image preview
			                                    auto height
			                                    <div ng-thumb="{ file: item.file, width: 100 }"></div>
			                                    auto width
			                                    <div ng-show="uploader.isHTML5" ng-thumb="{ file: item._file, height: 100 }"></div>
			                                    fixed width and height
			                                    <div ng-thumb="{ file: item.file, width: 100, height: 100 }"></div>
			                                </td>
			                                <td ng-show="uploader.isHTML5" nowrap>{{ item.file.size/1024/1024|number:2 }} MB</td>
			                                <td ng-show="uploader.isHTML5">
			                                    <div class="progress" style="margin-bottom: 0;">
			                                        <div class="progress-bar" role="progressbar" ng-style="{ 'width': item.progress + '%' }"></div>
			                                    </div>
			                                </td>
			                                <td class="text-center">
			                                    <span ng-show="item.isSuccess"><i class="glyphicon glyphicon-ok"></i></span>
			                                    <span ng-show="item.isCancel"><i class="glyphicon glyphicon-ban-circle"></i></span>
			                                    <span ng-show="item.isError"><i class="glyphicon glyphicon-remove"></i></span>
			                                </td>
			                                <td nowrap>
			                                    <button type="button" class="btn btn-success btn-xs" ng-click="item.upload()" ng-disabled="item.isReady || item.isUploading || item.isSuccess">
			                                        <span class="fa fa-cloud-upload"></span> Upload
			                                    </button>
			                                    <button type="button" class="btn btn-warning btn-xs" ng-click="item.cancel()" ng-disabled="!item.isUploading">
			                                        <span class="fa fa-times"></span> Cancel
			                                    </button>
			                                    <button type="button" class="btn btn-danger btn-xs" ng-click="item.remove()">
			                                        <span class="fa fa-trash-o"></span> Remove
			                                    </button>
			                                </td>
			                            </tr>
			                        </tbody>
			                    </table>

			                    <div>
			                        <div>
			                            Queue progress:
			                            <div class="progress" style="">
			                                <div class="progress-bar" role="progressbar" ng-style="{ 'width': uploader.progress + '%' }"></div>
			                            </div>
			                        </div>
			                        <button type="button" class="btn btn-success btn-s" ng-click="uploader.uploadAll()" ng-disabled="!uploader.getNotUploadedItems().length">
			                            <span class="fa fa-cloud-upload"></span> Upload all
			                        </button>
			                        <button type="button" class="btn btn-warning btn-s" ng-click="uploader.cancelAll()" ng-disabled="!uploader.isUploading">
			                            <span class="fa fa-times"></span> Cancel all
			                        </button>
			                        <button type="button" class="btn btn-danger btn-s" ng-click="uploader.clearQueue()" ng-disabled="!uploader.queue.length">
			                            <span class="fa fa-trash-o"></span> Remove all
			                        </button>
			                    </div>	
							 
								</div> -->

							<div class="panel panel-default">
								<h4 class="text-muted text-thin text-center">Video Url</h4>
								<form name="userVideoForm" class="form-horizontal"
									ng-controller="VideoController as ctrlVideo"
									ng-submit="ctrlVideo.submit()">

									<input type="hidden" name="userId"
										ng-model="ctrlVideo.video.userId" />

									<fieldset ng-if="ctrlVideo.videodata.length ==0">
										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-2 ">Video Url</label>
											<input ng-model="ctrlVideo.video.videoUrlOne"
												name="videoUrlOne" class="form-control-text col-2"
												placeholder="Paste video url" autocomplete="off">
										</div>
										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-2 ">Video Url</label>
											<input ng-model="ctrlVideo.video.videoUrlTwo"
												name="videoUrlTwo" class="form-control-text col-2"
												placeholder="Paste video url" autocomplete="off">
										</div>
										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-2 ">Video Url</label>
											<input ng-model="ctrlVideo.video.videoUrlThree"
												name="videoUrlThree" class="form-control-text col-2"
												placeholder="Paste video url" autocomplete="off">
										</div>
										<a href="https://www.youtube.com/upload" target="_blank">
											<label for=""><span style="color: red">*</span> If
												not yet.please upload videos </label>
										</a><i class="fa fa-youtube fa-2x" aria-hidden="true"></i>
									</fieldset>

									<fieldset ng-if="ctrlVideo.videodata.length !=0"
										ng-repeat="u in ctrlVideo.videodata">
										<input type="hidden" name="imageVideoId"
											ng-model="ctrlVideo.video.imageVideoId"
											ng-init="ctrlVideo.video.imageVideoId=u.image_video_id" />
										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-2 ">Video Url</label>
											<input ng-model="ctrlVideo.video.videoUrlOne"
												ng-init="ctrlVideo.video.videoUrlOne=u.video_url_one"
												name="videoUrlOne" class="form-control-text col-2"
												placeholder="Paste video url" autocomplete="off">
										</div>
										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-2 ">Video Url</label>
											<input ng-model="ctrlVideo.video.videoUrlTwo"
												ng-init="ctrlVideo.video.videoUrlTwo=u.video_url_two"
												name="videoUrlTwo" class="form-control-text col-2"
												placeholder="Paste video url" autocomplete="off">
										</div>
										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-2 ">Video Url</label>
											<input ng-model="ctrlVideo.video.videoUrlThree"
												ng-init="ctrlVideo.video.videoUrlThree=u.video_url_three"
												name="videoUrlThree" class="form-control-text col-2"
												placeholder="Paste video url" autocomplete="off">
										</div>
										<a href="https://www.youtube.com/upload" target="_blank">
											<label for=""><span style="color: red">*</span> If
												not yet.please upload videos </label>
										</a><i class="fa fa-youtube fa-2x" aria-hidden="true"></i>
									</fieldset>

									<div class="form-group">
										<div class="row">
											<div class="col-xs-7"></div>
											<div class="col-xs-4">
												<input type="submit" id="saveUserVideo"
													class="btn btn-success" value="Update" />
											</div>
										</div>
									</div>
								</form>
							</div>

						</div>

						<!-- ========================================Physical Details================================          -->

						<div class="col-lg-6">
							<div class="panel panel-default" id="createWorkExpdiv">
								<h4 class="text-muted text-thin text-center">Work
									Experience Details</h4>
								<form name="userPhyExpForm"
									ng-controller="BackProfessinalExpController as ctrlProExp"
									ng-submit="ctrlProExp.submit()" cssClass="form-horizontal">
									<input type="hidden" name="userId"
										ng-model="ctrlProExp.proExpdetails.userId" />

									<fieldset ng-if="ctrlProExp.expdata.length ==0">

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-6">Have Worked
												in<span style="color: red">*</span>
											</label> <span>e.g. Movie,Drama,Serial</span> <input id="preWorkInd"
												name=preWorkInd class="form-control-text col-2 m-b"
												ng-model="ctrlProExp.proExpdetails.preWorkInd" required
												autocomplete="off" />
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-6">Film
												Industry Intested in now<span style="color: red">*</span>
											</label> <select ng-model="ctrlProExp.proExpdetails.fileIndIntreste"
												name="fileIndIntreste" class="form-control-text col-2 m-b"
												required
												oninvalid="this.setCustomValidity('Please select cinema industry.')"
												oninput="setCustomValidity('')">
												<option value="">Select Cinema Industry of India</option>
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
												<option value="Bollywood">Bollywood</option>
												<option value="Jharkhandi">Jharkhandi Cinema
													Industry</option>
												<option value="Sandalwood">Sandalwood</option>
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
												<option value="Kollywood">Kollywood</option>
												<option value="Tollywood">Tollywood</option>
												<option value="Tulu">Tulu Cinema Industry</option>
											</select>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-6">What are
												your other talents/skills</label> <input
												ng-model="ctrlProExp.proExpdetails.reason" name="reason"
												class="form-control-text col-lg-2"
												placeholder="What are your other talents/skills"
												minlength="2" maxlength="50" autocomplete="off">
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-6">Name the
												Director you worked with</label> <input
												ng-model="ctrlProExp.proExpdetails.nameWorkWithDir"
												name="nameWorkWithDir" class="form-control-text col-lg-2"
												placeholder="Name the Director you worked with"
												minlength="2" maxlength="50" autocomplete="off">
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-6">Name the
												Films worked in</label> <input
												ng-model="ctrlProExp.proExpdetails.nameWorkFilm"
												name="filmName" class="form-control-text col-lg-2"
												placeholder="Name the Films worked in" minlength="2"
												maxlength="50" autocomplete="off">
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-6">Name the
												Production House you worked</label> <input
												ng-model="ctrlProExp.proExpdetails.nameWorkProHouse"
												name="phouseName" class="form-control-text col-lg-2"
												placeholder="Name the Production House you worked for"
												minlength="2" maxlength="50" autocomplete="off">
										</div>

									</fieldset>

									<fieldset ng-if="ctrlProExp.expdata.length !=0"
										ng-repeat="u in ctrlProExp.expdata">

										<input type="hidden" name="professionalDetailsId"
											ng-model="ctrlProExp.proExpdetails.professionalDetailsId"
											ng-init="ctrlProExp.proExpdetails.professionalDetailsId=u.professional_details_id" />

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-6">Have Worked
												in<span style="color: red">*</span>
											</label> <span>e.g. Movie,Drama,Serial</span> <input id="preWorkInd"
												name=preWorkInd class="form-control-text col-2 m-b"
												ng-model="ctrlProExp.proExpdetails.preWorkInd"
												ng-init="ctrlProExp.proExpdetails.preWorkInd=u.previous_work_indusry"
												required autocomplete="off" />
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-6">Film
												Industry Intested in now<span style="color: red">*</span>
											</label> <select ng-model="ctrlProExp.proExpdetails.fileIndIntreste"
												ng-init="ctrlProExp.proExpdetails.fileIndIntreste=u.film_industry_intrested"
												name="fileIndIntreste" class="form-control-text col-2 m-b"
												required
												oninvalid="this.setCustomValidity('Please select cinema industry.')"
												oninput="setCustomValidity('')">
												<option value="">Select Cinema Industry of India</option>
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
												<option value="Bollywood">Bollywood</option>
												<option value="Jharkhandi">Jharkhandi Cinema
													Industry</option>
												<option value="Sandalwood">Sandalwood</option>
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
												<option value="Kollywood">Kollywood</option>
												<option value="Tollywood">Tollywood</option>
												<option value="Tulu">Tulu Cinema Industry</option>
											</select>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-6">What are
												your other talents/skills</label> <input
												ng-model="ctrlProExp.proExpdetails.reason"
												ng-init="ctrlProExp.proExpdetails.reason=u.reason"
												name="reason" class="form-control-text col-lg-2"
												placeholder="What are your other talents/skills" required
												minlength="2" maxlength="50" autocomplete="off">
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-6">Name the
												Director you worked with</label> <input
												ng-model="ctrlProExp.proExpdetails.nameWorkWithDir"
												ng-init="ctrlProExp.proExpdetails.nameWorkWithDir=u.name_worked_with_director"
												name="nameWorkWithDir" class="form-control-text col-lg-2"
												placeholder="Name the Director you worked with"
												autocomplete="off">
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
												placeholder="Name the Production House you worked for"
												autocomplete="off">
										</div>

									</fieldset>
									<div class="form-group">
										<div class="row">
											<div class="col-xs-7">
												<label for="" class="text-muted"
													style="margin: 1px 1px 1px 25px;"> Mandatory field
													( <span style="color: red">*</span> )
												</label>
											</div>
											<div class="col-xs-4">
												<input type="submit" id="saveUserExpDetailsInfo"
													class="btn btn-success" value="Update" />
											</div>
										</div>
									</div>
								</form>
							</div>

							<div class="panel panel-default" id="createAddressdiv">
								<h4 class="text-muted text-thin text-center">Present
									Address</h4>
								<form name="userAddressForm" class="mb-lg"
									ng-controller="BackAddressController as ctrlAdd"
									ng-submit="ctrlAdd.submit()" class="form-horizontal">
									<input type="hidden" name="userId"
										ng-model="ctrl.profile.userId" />

									<fieldset ng-if="ctrlAdd.adddata.length == 0">

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Address<span
												style="color: red">*</span></label>
											<textarea ng-model="ctrlAdd.addressdetails.prAddress"
												name="prAddress" placeholder="Address"
												class="form-control form-control-text col-2" maxlength="500"
												style="overflow: auto; resize: none" rows="4"
												aria-invalid="false" autocomplete="off" required></textarea>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Country<span
												style="color: red">*</span></label> <select
												ng-model="ctrlAdd.addressdetails.prCountry"
												ng-init="ctrlAdd.addressdetails.prCountry='India'"
												name="prCountry" class="form-control-text col-2 m-b"
												required>
												<option value="India">India</option>
												<option value="Other">Other</option>
											</select>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">State<span
												style="color: red">*</span></label> <select
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
											<label for="" class="text-muted col-lg-4">District<span
												style="color: red">*</span></label> <input
												ng-model="ctrlAdd.addressdetails.prDistrict"
												name="prDistrict" class="form-control-text col-2"
												placeholder="District"
												onChange="this.value=this.value.substring(0, 1).toUpperCase() + this.value.substring(1);"
												maxlength="50" autocomplete="off" required>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Zipcode/Postalcode<span
												style="color: red">*</span></label> <input
												ng-model="ctrlAdd.addressdetails.prZipPostal"
												name="prZipPostal" class="form-control-text col-2"
												placeholder="Zipcode/Postalcode" maxlength="50"
												autocomplete="off" required>
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
												placeholder="District"
												onChange="this.value=this.value.substring(0, 1).toUpperCase() + this.value.substring(1);"
												autocomplete="off" required>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Zipcode/Postalcode</label>
											<input ng-model="ctrlAdd.addressdetails.pmZipPostal"
												name="pmZipPostal" class="form-control-text col-2"
												placeholder="Zipcode/Postalcode" autocomplete="off" required>
										</div>

										<!-- <div class="form-group has-feedback">
								<label for="" class="text-muted col-lg-4">Comment</label>
								<textarea name="comment" id="comment" placeholder="Comment" class="form-control-text col-2" maxlength="500"
								style="overflow: auto; resize: none" rows="3"
								aria-invalid="false"></textarea>
							</div> -->

									</fieldset>


									<fieldset ng-if="ctrlAdd.adddata.length != 0"
										ng-repeat="u in ctrlAdd.adddata">

										<input type="hidden" name="addressId"
											ng-model="ctrlAdd.addressdetails.addressId"
											ng-init="ctrlAdd.addressdetails.addressId=u.address_id" />

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Address<span
												style="color: red">*</span></label>
											<textarea ng-model="ctrlAdd.addressdetails.prAddress"
												ng-init="ctrlAdd.addressdetails.prAddress=u.pr_address"
												name="prAddress" placeholder="Address"
												class="form-control form-control-text col-2" maxlength="500"
												style="overflow: auto; resize: none" rows="4"
												aria-invalid="false" autocomplete="off" required></textarea>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Country<span
												style="color: red">*</span></label> <select
												ng-model="ctrlAdd.addressdetails.prCountry"
												ng-init="ctrlAdd.addressdetails.prCountry=u.pr_country"
												name="prCountry" class="form-control-text col-2" required>
												<option value="India">India</option>
												<option value="Other">Other</option>
											</select>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">State<span
												style="color: red">*</span></label> <select
												ng-model="ctrlAdd.addressdetails.prState"
												ng-init="ctrlAdd.addressdetails.prState=u.pr_state"
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
											<label for="" class="text-muted col-lg-4">District<span
												style="color: red">*</span></label> <input
												ng-model="ctrlAdd.addressdetails.prDistrict"
												ng-init="ctrlAdd.addressdetails.prDistrict=u.pr_district"
												name="prDistrict" class="form-control-text col-2"
												placeholder="District"
												onChange="this.value=this.value.substring(0, 1).toUpperCase() + this.value.substring(1);"
												maxlength="50" autocomplete="off" required>
										</div>

										<div class="form-group has-feedback">
											<label for="" class="text-muted col-lg-4">Zipcode/Postalcode<span
												style="color: red">*</span></label> <input
												ng-model="ctrlAdd.addressdetails.prZipPostal"
												ng-init="ctrlAdd.addressdetails.prZipPostal=u.pr_zip_postal"
												name="prZipPostal" class="form-control-text col-2"
												placeholder="Zipcode/Postalcode" maxlength="50"
												autocomplete="off" required>
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
												aria-invalid="false" autocomplete="off"></textarea>
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
												placeholder="District"
												onChange="this.value=this.value.substring(0, 1).toUpperCase() + this.value.substring(1);"
												autocomplete="off">
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
								<textarea name="comment" id="comment" placeholder="Comment" class="form-control-text col-2" maxlength="500"
								style="overflow: auto; resize: none" rows="3"
								aria-invalid="false"></textarea>
							</div> -->

									</fieldset>
									<div class="form-group">
										<div class="row">
											<div class="col-xs-7">
												<label for="" class="text-muted"
													style="margin: 1px 1px 1px 25px;"> Mandatory field
													( <span style="color: red">*</span> )
												</label>
											</div>
											<div class="col-xs-4">
												<input type="submit" id="saveUserPersonalInfo"
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

	<div class="modal fade width30" id="ChangePasswordModal"
		style="margin-right: 30px;">
		<div class="modal-dialog">
			<div class="modal-content" id="ChangePasswordFormdiv">
				<div class="modal-header">
					<button type="button" class="close popupChangePasswordClose"
						data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">Change Password</h4>
				</div>
				<form name="ChangePasswordForm"
					ng-controller="ChangePassController as ctrl"
					ng-submit="ctrl.submit()" class="mb-lg">
					<div class="modal-body">
						<div class="form-group has-feedback"
							ng-class="{ 'has-error' : ChangePasswordForm.password.$invalid && !ChangePasswordForm.password.$pristine }">
							<label class="text-muted">Current Password</label> <input
								id="password" name="password"
								ng-model="ctrl.passChange.password" type="password"
								placeholder="Current Password" autocomplete="off" required
								class="form-control" ng-minlength="6" ng-maxlength="20"
								maxlength="21"> <span
								class="icon-lock form-control-feedback text-muted"></span>
							<p ng-show="ChangePasswordForm.password.$error.minlength"
								class="help-block">Password is too short minlength 6.</p>
							<p ng-show="ChangePasswordForm.password.$error.maxlength"
								class="help-block">Password is too long maxlength 20.</p>
						</div>
						<div class="form-group has-feedback"
							ng-class="{ 'has-error' : ChangePasswordForm.newPassword.$invalid && !ChangePasswordForm.newPassword.$pristine }">
							<label class="text-muted">New Password</label> <input
								id="newPassword" name="newPassword"
								ng-model="ctrl.passChange.newPassword" type="password"
								placeholder="New Password" autocomplete="off" required
								class="form-control" ng-minlength="6" ng-maxlength="20"
								maxlength="21"> <span
								class="icon-lock form-control-feedback text-muted"></span>
							<p ng-show="ChangePasswordForm.newPassword.$error.minlength"
								class="help-block">Password is too short minlength 6.</p>
							<p ng-show="ChangePasswordForm.newPassword.$error.maxlength"
								class="help-block">Password is too long maxlength 20.</p>
						</div>
						<div class="form-group has-feedback"
							ng-class="{ 'has-error' : ChangePasswordForm.confirmNewPassword.$invalid && !ChangePasswordForm.confirmNewPassword.$pristine }">
							<label class="text-muted">Confirm Password</label> <input
								id="confirmNewPassword" name="confirmNewPassword"
								ng-model="ctrl.passChange.confirmNewPassword" type="password"
								placeholder="Confirm Password" autocomplete="off" required
								class="form-control" ng-minlength="6" ng-maxlength="20"
								maxlength="21"> <span
								class="icon-lock form-control-feedback text-muted"></span>
							<p
								ng-show="ChangePasswordForm.confirmNewPassword.$error.minlength"
								class="help-block">Password is too short minlength 6.</p>
							<p
								ng-show="ChangePasswordForm.confirmNewPassword.$error.maxlength"
								class="help-block">Password is too long maxlength 20.</p>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" ng-click="reset();"
							class="btn btn-sm btn-primary">Reset</button>
						<button type="submit" class="btn btn-sm btn-success">Change
							Password</button>
					</div>
				</form>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	
	<div class="modal fade width25" id="ChangeProfilePicModal"
		style="margin-left: 250px;">
		<div class="modal-dialog" id="ChangeProfilePicFormdiv" >
			<div class="modal-content" ng-controller="UploadUserPicController" style="width: 290px;">
				<div class="modal-header">
					<button type="button" class="close popupChangePasswordClose"
						data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">Change Profile Picture</h4>
				</div>
				<div style="margin-left: 30px; margin-top: 10px;">
					<input class="bottom-marg-15" type="file" name="file" accept="image/*" file></input>
				</div>
				<div class="progress">
					<span>
					    <div class="progress-bar" role="progressbar"
						aria-valuenow="{{ uploadProgress }}" aria-valuemin="0"
						aria-valuemax="100" style="width: {{">{{
						uploadProgress == 0 ? '' : uploadProgress + '%' }}</div>
					</span>
				</div>	
				<div class="modal-footer">
				    <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
				    <button type="button" class="btn btn-success" ng-click="uploadUserPic()">Upload</button>
				</div> 
			</div>
		</div>
	</div>

	<footer class="footer">
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

