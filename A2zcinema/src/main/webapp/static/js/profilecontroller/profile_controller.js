'use strict';
angular.module('profileApp').controller('ProfileController', ['$scope', '$window', 'ProfileService', 
             '$localStorage', '$http', function($scope, $window, ProfileService, $localStorage, $http,toster ) {
	
		var self = this;
		self.profile = {profileDetailsId:'',firstName:'', fatherName:'', gender:'', dob:'', age:'', mobile:'',
			        email:'', whatsupNo:'', landlineNo:'', eduQualification:'',
			        courseRelatedProfession:'', language:'',profileType:'', aboutme:''};
	
		self.submit = submit;
		
		function submit() {
	        userProfilePersonalInfo(JSON.stringify($scope.ctrl.profile));
	    }
		/**/
		function userProfilePersonalInfo(){
			$('#createProfilediv').addClass('whirl');
			$http({
			    url: "http://localhost:8080/A2zcinema/profile/",
			    dataType: "json",
			    method: "POST",
			    data: JSON.stringify($scope.ctrl.profile),
			    headers: {
			        "Content-Type": "application/json; charset=utf-8"
			    }
			}).then(function(response){
			    $scope.response = response;
			    toastr.success('User personal info update successfully.');	
			    getProfileDetailsById();
			    $('#createProfilediv').removeClass('whirl');
			    console.log("$scope.response.data :",$scope.response.data);
			    console.log("response data :",response.data);
			    
			},function(error){
				 $('#createProfilediv').removeClass('whirl');
				toastr.error('Error while save personal info.');
			    $scope.error = error;
			});
			/*$http.post("http://localhost:8080/A2zcinema/profile/",self.profile)
			.then(function(response) {
					   var getdata = response.data;
					   console.log("data :",getdata);
					  // alert("Latest news save successfully.");
					   toastr.success('User personal info update successfully.');	
					  // $window.location.reload();
					   getProfileDetailsById();
		     }, function(errResponse) {
		    	 toastr.error('Error while save latest nesw.');
				  console.error('Error while save latest nesw.');
		     });*/
			
		/* ProfileService.userProfilePersonalInfo(profile)
		 .then(
	    		function(response) {
	    			 var profildata = response.data;
	                 self.profile = response;
	                 toastr.success('User personal info update successfully.');
	                 $window.location.reload();
	                },
	    		 function(errResponse){
	                	toastr.error('Error while update profile user.');
		                //alert("Error while update profile user.")
		            }
				 );*/
	       }
	
	   /*
	    * At time of Register and Login get value from lacalstoreage 
	    * */
		$scope.init = function() {
			var userId = $scope.ctrl.profile.userId = $window.localStorage.getItem('userId');
			var mobile = $scope.ctrl.profile.mobile = $window.localStorage.getItem('mobile');
			var email = $scope.ctrl.profile.email =  $window.localStorage.getItem('email');
		    getProfileDetailsById();
		};
		
	   $scope.init();
	   
	   
	   /*
	    * fetch profile data function name 'getProfileDetailsById'
	    * */
	   self.profiledata = {};
	   function getProfileDetailsById() {
		   //alert('hii');
		  //$('#createProfilediv').addClass('whirl');
		  $http.get("http://localhost:8080/A2zcinema/getProfileDetailsById/"+$scope.ctrl.profile.userId)
				   .then(function(response) {
					   var getdata = response.data;
					   console.log("$scope.response.data getProfileDetailsById :",response.data);
					   self.profiledata = response.data;
				   }, function(errResponse) {
					   toastr.error('Error while fetching Users.');
				        //alert("Error while fetching Users.")
		        });
	       };
}]);

angular.module('profileApp').controller('PhysicalController', ['$scope', '$window',
     'ProfileService', '$localStorage', '$http', function($scope, $window, ProfileService, $localStorage, $http) {
	var self = this;
    self.phydetails={physicalDetailId:'',complexion:'',skinQuality:'', eyeColor:'', heightUnit:'', weightUnit:'',
    		         physique:'', facialHair:'', hairStyle:'', hairColor:'', hairLength:''}
    self.submit = submit;
   
    var userId = $scope.ctrlPhy.phydetails.userId = $window.localStorage.getItem('userId');
    getPhysicalDetailsById();
    
	 /*function userPhysicalDetails(phydetails){
		 ProfileService.userPhysicalDetails(phydetails)
		     .then(
	    		 function(response) {
	    			 var phdata = response.data; 
	    			 toastr.success('User physical details updated successfully.');
	    			 getPhysicalDetailsById();
	    			 //$window.location.reload(); 
	    		 },
	    		 function(errResponse){
	    			 toastr.error('Error while update physical details.');
	    			    //alert("Error while update physical details.")
		            }
				 );
	      }*/
    
		    function userPhysicalDetails(){
		    	$('#createPhysicaldiv').addClass('whirl');
				$http({
				    url: "http://localhost:8080/A2zcinema/physicalDetails/",
				    dataType: "json",
				    method: "POST",
				    data: JSON.stringify($scope.ctrlPhy.phydetails),
				    headers: {
				        "Content-Type": "application/json; charset=utf-8"
				    }
				}).then(function(response){
				    $scope.response = response;
				    toastr.success('User physical details updated successfully.');	
				    getPhysicalDetailsById();
				    $('#createPhysicaldiv').removeClass('whirl');
				    console.log("$scope.response.data :",$scope.response.data);
				    console.log("response data :",response.data);
				},function(error){
					toastr.error('Error while update physical details.');	
				    $scope.error = error;
				});
		    }
		    
	    function submit() {
            userPhysicalDetails(JSON.stringify($scope.ctrlPhy.phydetails));
	    }
	    
	       /*
		    * */
		   self.phydata = {};
		   function getPhysicalDetailsById() {
			   //alert('hii');
			 $http.get("http://localhost:8080/A2zcinema/getPhysicalDetailsById/"+$scope.ctrlPhy.phydetails.userId)
			   //$http.get("http://a2zcinemaworld.com/getPhysicalDetailsById/"+$scope.ctrlPhy.phydetails.userId)
					   .then(function(response) {
						   var getdata = response.data;
						   console.log("$scope.response.data getPhysicalDetailsById :",response.data);
						   self.phydata = response.data;
					   }, function(errResponse) {
						   toastr.error('Error while fetching Users.');
					     // console.error('Error while fetching Users');
			        });
		       };
		       
}]);

angular.module('profileApp').controller('AddressController', ['$scope', '$window', 'ProfileService', 
             '$localStorage', '$http', function($scope, $window, ProfileService, $localStorage, $http) {
	var self = this;
    self.addressdetails={addressId:'',prAddress:'',prCountry:'', prState:'', prDistrict:'', prZipPostal:'',
    		pmAddress:'', pmCountry:'', pmState:'', pmDistrict:'', pmZipPostal:''}
    self.submit = submit;
    var userId = $scope.ctrlAdd.addressdetails.userId = $window.localStorage.getItem('userId');
    getAddressDetailsById();
    
	 /*function userAddressDetails(addressdetails){
		 ProfileService.userAddressDetails(addressdetails)
		     .then(
	    		 function(response) {
	    			// alert("User address info updated successfully.")
	    			  toastr.success('User address info updated successfully.');
	    			  getAddressDetailsById();
	    			 //$window.location.reload();
	    			 //$scope.init();   
	                 self.addressdetails = response;
	             },
	    		 function(errResponse){
	            	  //alert("Error while update address details.")
	            	 toastr.error('Error while update address details.');
		            }
				 );
	      }*/
    
		    function userAddressDetails(){
		    	$('#createAddressdiv').addClass('whirl');
				$http({
				    url: "http://localhost:8080/A2zcinema/userAddress/",
				    dataType: "json",
				    method: "POST",
				    data: JSON.stringify($scope.ctrlAdd.addressdetails),
				    headers: {
				        "Content-Type": "application/json; charset=utf-8"
				    }
				}).then(function(response){
				    $scope.response = response;
				    toastr.success('User address info updated successfully.');	
				    getAddressDetailsById();
				    $('#createAddressdiv').removeClass('whirl');
				    console.log("$scope.response.data :",$scope.response.data);
				    console.log("response data :",response.data);
				},function(error){
					 $('#createAddressdiv').removeClass('whirl');
					toastr.error('Error while update address details.');	
				    $scope.error = error;
				});
		    }

	    function submit() {
            userAddressDetails(JSON.stringify($scope.ctrlAdd.addressdetails));
	    }
	    
	        /*
		    * fetch Address Details data function name 'getAddressDetailsById'
		    * */
		   self.adddata = {};
		   function getAddressDetailsById() {
			  // alert('hii');
			   $http.get("http://localhost:8080/A2zcinema/getAddressDetailsById/"+$scope.ctrlAdd.addressdetails.userId)
			   //$http.get("http://a2zcinemaworld.com/getAddressDetailsById/"+$scope.ctrlAdd.addressdetails.userId)
					   .then(function(response) {
						   var getdata = response.data;
						   console.log("$scope.response.data getAddressDetailsById :",getdata);
						   //$window.location.reload();
						   self.adddata = response.data;
					   }, function(errResponse) {
						   toastr.error('Error while fetching Address Details');
					     // console.error('Error while fetching Users');
			        });
		       };
		       
}]);
angular.module('profileApp').controller('ProfessinalExpController', ['$scope', '$window', 'ProfileService', 
               '$localStorage', '$http', function($scope, $window, ProfileService, $localStorage, $http) {
	var self = this;
    self.proExpdetails={professionalDetailsId:'',preWorkInd:'',nameWorkWithDir:'', nameWorkFilm:'',
    		nameWorkProHouse:'', fileIndIntreste:'',reason:''}
    self.submit = submit;
    var userId = $scope.ctrlProExp.proExpdetails.userId = $window.localStorage.getItem('userId');
    getExpDetailsById();
    
	 /*function userProfessinalExpDetails(proExpdetails){
		 ProfileService.userProfessinalExpDetails(proExpdetails)
		     .then(
	    		 function(response) {
	    			 toastr.success('User experience info updated successfully.');
	    			 getExpDetailsById();
	    			 //$window.location.reload();
	                 self.proExpdetails = response;
	             },
	    		 function(errResponse){
	            	  toastr.error('Error while update professinal experience details.');
	            	// alert("Error while update professinal details.")
		            }
				 );
		    
	      }*/
    
		    function userProfessinalExpDetails(){
		    	$('#createWorkExpdiv').addClass('whirl');
				$http({
				    url: "http://localhost:8080/A2zcinema/userProExp/",
				    dataType: "json",
				    method: "POST",
				    data: JSON.stringify($scope.ctrlProExp.proExpdetails),
				    headers: {
				        "Content-Type": "application/json; charset=utf-8"
				    }
				}).then(function(response){
				    $scope.response = response;
				    toastr.success('User experience info updated successfully.');	
				    getExpDetailsById();
				    $('#createWorkExpdiv').removeClass('whirl');
				    console.log("$scope.response.data :",$scope.response.data);
				    console.log("response data :",response.data);
				},function(error){
					$('#createWorkExpdiv').removeClass('whirl');
					toastr.error('Error while update professinal details.');	
				    $scope.error = error;
				});
		    }

	    function submit() {
            userProfessinalExpDetails(JSON.stringify($scope.ctrlProExp.proExpdetails));
            //getExpDetailsById();
	    }
	       /*
		    * fetch Address Details data function name 'getAddressDetailsById'
		    * */
		   self.expdata = {};
		   function getExpDetailsById() {
			  // alert('hii');
			 $http.get("http://localhost:8080/A2zcinema/getExpDetailsById/"+$scope.ctrlProExp.proExpdetails.userId)
			    //$http.get("http://a2zcinemaworld.com/getExpDetailsById/"+$scope.ctrlProExp.proExpdetails.userId)
					   .then(function(response) {
						   var getdata = response.data;
						   console.log("$scope.response.data getAddressDetailsById :",getdata);
						   self.expdata = response.data;
					   }, function(errResponse) {
						  toastr.error('Error while fetching Users');
					      //console.error('Error while fetching Users');
			        });
		       };
	   
}]);
