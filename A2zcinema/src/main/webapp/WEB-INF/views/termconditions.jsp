<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en-US">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

<title>A2zcinema | TermConditions</title>

<link rel="stylesheet" href="static/assets/css/bootstrap.css" id="bscss">
<link rel="stylesheet" href="static/assets/css/app.css" id="maincss">
<link rel="stylesheet" href="static/mainfiles/js/bootstrap.min.css"></link>
<script type="text/javascript" src="static/mainfiles/js/jquery.min.js"></script>
<script type="text/javascript" src="static/mainfiles/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="static/mainfiles/js/site-demos.css"></link>
<link rel="stylesheet" href="static/mainfiles/css/simple-line-icons.css">
<link rel="stylesheet" href="static/mainfiles/css/font-awesome.min.css">
<link rel="stylesheet" href="static/mainfiles/css/style.css">
<script type="text/javascript" src="static/mainfiles/js/angular.js"></script>
<script type="text/javascript" src="static/mainfiles/js/ngStorage.js"></script>
<script src="static/js/app.js"></script>
<link rel="stylesheet" href="static/mainfiles/css/whirl.css">
<script src="static/js/aboutcontroller/aboutuscontroller.js"></script>
<script src="static/js/homecontroller/home_service.js"></script>
<script src="static/js/homecontroller/home_controller.js"></script>
<script src="static/js/loginjs/login.js"></script>
<script type="text/javascript" src="static/mainfiles/js/plugins.js"></script>
<script type="text/javascript" src="static/mainfiles/js/custom.js"></script>
<link rel="stylesheet" type="text/css" href="static/mainfiles/css/useroneprofile.css" />

<script src="static/js/loginjs/forgotPasswordSend.js"></script>

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
			<div class="col-lg-12 panel panel-default" >
				<div class="col-lg-11 panel panel-default" style="margin-left: 60px; margin-right: 60px;">
					<h3 class="text-center"> Terms and Conditions </h3>
				
				<!-- <div class="col-lg-6 panel panel-default">
					<img src="static/mainfiles/img/aboutus.jpg"
						style="width: 400px; height: 400px" />
				</div> -->
				
				<p> 
				This AGREEMENT ("Agreement") describes the Terms and conditions that apply to and govern your use of the A2zcinemaworld.com WEB SITE AND THE SERVICES AVAILABLE THEREON ("A2zcinemaworld services" or "Services"). By clicking in the box on the Site indicating your acceptance of these terms and conditions, you represent that you have read, understand and agree to this Agreement and are legally bound to the terms and conditions of this Agreement. As used in this Agreement, the terms "A2zcinemaworld", "we", "our" or "us" refer to A2zcinemaworld. And its designated affiliates and service providers, and the terms "you" and "your" refer to any person or entity that uses the Site or Services. We may amend this Agreement, in whole or in part, at any time, by posting the amended terms and conditions on the Website. You understand that your continued use of the Site or Services after a change has been posted constitutes acceptance of the amended terms and conditions.
				</br>
				  <strong>Warning: </strong>Do not post your contact details like phone no. and mailing address; this is a public comment visible to everyone. For security reasons A2zcinemaworld tracks your IP address and location. Do not post illegal comments and information, you will be reported to police.
				</p>
				
				<h4>General Rules:</h4>
				<p>Visitors may not use the Web Site in order to transmit, distribute, store or destroy material
				<ul style="font-size:1em"> <li> that could constitute or encourage conduct that would be considered a criminal offence or violate any applicable law or regulation</li>
				 <li>in a manner that will infringe the copyright, trademark, trade secret or other intellectual property rights of others or violate the privacy or publicity of other personal rights of others</li>
				 <li> that is libellous, defamatory, pornographic, profane, obscene, threatening, abusive or hateful.</li>
				 </ul></p>
				<h4>Liability: </h4>
				<p>While all reasonable care has been taken in providing the content on this Web Site, A2zcinemaworld. and / or its associate entities shall not be responsible or liable as to the completeness or correctness of such information and any or all consequential liabilities arising out of use of any information or contents on this Web Site.
				<br>
				No warranty is given that the Web Site will operate error-free or that this Web Site and its server are free of computer viruses or other harmful mechanisms. If your use of the Web site results in the need for servicing or replacing equipment or data, A2zcinemaworld and / or its associate entities are not responsible for those costs.
				</br>
				The web site is provided on an 'as is' basis without any warranties either express or implied whatsoever. A2zcinemaworld and / or its associate entities, to the fullest extent permitted by law, disclaims all warranties, including non-infringement of third parties rights, and the warranty of fitness for a particular purpose and makes no warranties about the accuracy, reliability, completeness, or timeliness of the content, services, software, text, graphics, and links.
				
				</p>
				<h4>Use of Content:</h4>
				<p>
				All logos, brands, marks headings, labels, names, signatures, numerals, shapes or any combinations thereof, appearing in this site, except as otherwise noted, are properties either owned, or used under licence, by A2zcinemaworld and / or its associate entities who feature on this website. The use of these properties or any other content on this site, except as provided in these terms and conditions or in the site content, is strictly prohibited.
				
				<br>
				You may not sell or modify the content of this Web Site or reproduce, display, publicly perform, distribute, or otherwise use the materials in any way for any public or commercial purpose without the respective organisation's or entity's written permission.</p>
				<ul style="font-size:1em">
				<li><strong> CUSTOMER SERVICE: </strong> If you discover any errors or have any problems with or related to the Site or Services, you should first contact by email at <a href="" >contact@a2zcinemaworld.com</a></li><br>
				<li><strong> SERVICE TERMS:</strong> By using Services, you acknowledge and agree that expressly reserves the right to refuse to provide Services to you, at any time, for any reason deemed necessary to protect A2zcinemaworld's interest.</li><br>
				<li><strong>PAYMENT TERMS:</strong > You can purchase Services by using your VISA debit or credit card, your MasterCard debit or credit card, your Discover card or your American Express card ("bank card") or via payment gateways. You understand and agree that A2zcinemaworld will not transact any payment that is not in Indian Rupees Or U.S. dollars. By completing and submitting the forms required on the Site to purchase paid Services, including but not limited to, the designation of a bank card for payment, you agree that the purchase price will be immediately charged to or withdrawn from the account associated with such card. All purchases are non-refundable; in-store credit only when applicable.</li><br>
				<li><strong>REGISTRATION: </strong> You may be required to register in order to use our Services. Registration is subject to the terms and conditions set forth in this Agreement. When registering, you must provide us with true, accurate, current and complete information as prompted on the forms on the Web Site and you must maintain and promptly update such information to keep it true, accurate, current and complete.</li><br>
				<li><strong>PASSWORD AND SECURITY: </strong> You will choose a password and account email login upon registering. You are responsible for maintaining the confidentiality of your password and account email login, and are fully responsible for all activities that occur under your password or account email login. You agree to immediately notify A2zcinemaworld of any unauthorized use of your password or account email login or any other breach of security. Notwithstanding anything in this Agreement, A2zcinemaworld is not liable for any loss or damage arising from your failure to comply with this section or the section above entitled "Registration."</li><br>
				<li><strong> ACCESS TO PASSWORD PROTECTED/SECURE AREAS:</strong> Access to and use of Password protected and/or secure areas of the Web Site is restricted to authorized users only. You are responsible for maintaining the security of your password and not permitting any other person access through the use of your password. Unauthorized individuals attempting to access these areas of the Web Site may be subject to prosecution.</li><br>
				<li><strong> INDEMNIFICATION:</strong> You agree to defend, indemnify, and hold harmless A2zcinemaworld and/ or its associate entities, their officers, directors, employees and agents, from and against any claims, actions or demands, including without limitation reasonable legal and accounting fees, alleging or resulting from your use of the Web site material or your breach of these terms and conditions of Web Site use.</li><br>
				<li><strong>VIOLATIONS OF RULES AND REGULATIONS: </strong> We reserve the right to seek all remedies available at law and in equity for violations of this Agreement.</li><br>
				<li><strong>ENTIRE AGREEMENT: </strong> This Agreement, together with all other items incorporated herein by reference, embodies the entire agreement and understanding between you and A2zcinemaworld and super cedes and terminates all prior agreements or understandings you may have with A2zcinemaworld.</li><br>
				<li><strong> ASSIGNMENT: </strong> We have the right to assign this Agreement to a subsidiary or affiliate company, or any third party, at any time without your consent. You may not assign or transfer this Agreement without our prior written consent.</li><br>
				<li><strong>SEVERABILITY: </strong> In the event any one or more of the provisions of this Agreement shall for any reason be held to be invalid, illegal or unenforceable, such provision(s) will be deemed modified to the minimum extent necessary to make them valid, legal and enforceable and the remaining provisions shall remain valid and enforceable.</li><br>
				<li><strong>Additional terms for casting professionals: </strong> You warrant that you are a bona fide casting professional and that you will register and log on as such. You shall use the Information contained on the Website for the sole purpose of considering employing or otherwise retaining the services of the individuals and organisations contained on the Website. By using the A2zcinemaworld system in any way, you are agreeing not to use the system to solicit, promote, or otherwise, any products or services. The system is for casting/booking purposes only.  The licence granted herein is personal and may not be assigned.
				<br>
				We do not provide any warranty or guarantee concerning the information relating to individuals contained on the Website (the 'Information') and therefore we cannot accept any liability associated with its use.</li><br>
				<li><strong>Additional terms for actors, presenters and models: </strong> We cannot guarantee work, as the jobs rest with the casting agents and are affected by the state of the industry as a whole. We cannot guarantee that employers who view your profile will call you in for an audition or that you will be offered the position after audition. Those decisions rest with the casting agents.
				<br>
				We are unable to verify or provide any assurance relating to the nature or duration of any work or appointment that you may be offered as a result of using the Service. It remains your sole responsibility to ensure that any work or appointment is acceptable to you.</li>
				<li><strong>Internet Access: </strong> You acknowledge and agree that in connection with your use of the site you must:
				<ul style="font-size:1em">
				<li>provide for your own access to the World Wide Web and pay any service fees associated with such access,</li><br>
				<li>provide all equipment necessary for you to make such access and connection to the World Wide Web, including a computer, software, a modem and a means of connecting to or accessing the Internet. A2zcinemaworld shall not be responsible for any malfunctions, errors, crashes or other adverse events that may occur from your use of the Site.</li><br>
				</ul> 
				</li>
				<li><strong>Proprietary Rights: </strong> Any commercial use of the Site is strictly prohibited, except as allowed herein or otherwise approved by us. You may not download or save a copy of any of the content or screens except as otherwise provided in these Terms and Conditions, for any purpose. We do not grant any license or other authorization to any user of our trademarks, service marks, other copyrightable material or any other intellectual property, by including them on the Site. You also agree and acknowledge that any ideas, concepts, methods, systems, designs, plans, techniques or other similar materials that you submit or otherwise communicate to the Site, may be used by us in any manner.</li>
				</ul>
				
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