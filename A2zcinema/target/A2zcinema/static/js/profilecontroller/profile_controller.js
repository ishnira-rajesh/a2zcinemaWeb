'use strict';
angular.module('profileApp').controller('ProfileController', ['$scope', '$window', 'ProfileService', 
             '$localStorage', '$http', function($scope, $window, ProfileService, $localStorage, $http) {
	
		var self = this;
		self.profile = {profileDetailsId:'',fatherName:'', gender:'', dob:'', age:'', mobile:'',
			        email:'', whatsupNo:'', landlineNo:'', eduQualification:'',
			        courseRelatedProfession:'', language:'', aboutme:''};
	
		self.submit = submit;
	
		function submit() {
	        userProfilePersonalInfo(self.profile);
	    }
		
		function userProfilePersonalInfo(profile){
		 ProfileService.userProfilePersonalInfo(profile).then(
	    		 function(d) {
	    			 var profildata = d.data;
	                 self.profile = d;
	                 alert("User personal info update successfully.")
	                 $window.location.reload();
	                },
	    		 function(errResponse){
		                alert("Error while update profile user.")
		            }
				 );
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
		  $http.get("http://localhost:8080/A2zcinema/getProfileDetailsById/"+$scope.ctrl.profile.userId)
		   //$http.get("http://a2zcinemaworld.com/getProfileDetailsById/"+$scope.ctrl.profile.userId)
				   .then(function(response) {
					   var getdata = response.data;
					   self.profiledata = response.data;
				   }, function(errResponse) {
				    alert("Error while fetching Users.")
		        });
	       };
}]);

angular.module('profileApp').controller('PhysicalController', ['$scope', '$window',
     'ProfileService', '$localStorage', '$http', function($scope, $window, ProfileService, $localStorage, $http) {
	var self = this;
    self.phydetails={physicalDetailId:'',complexion:'',skinQuality:'', eyeColor:'', heightUnit:'', weightUnit:'',
    		         physique:'', facialHair:'', hairStyle:'', hairColor:'', hairLength:''}
    self.submit = submit;
 
   /*
    * At time of Register and Login get value from lacalstoreage 
    * */
    var userId = $scope.ctrlPhy.phydetails.userId = $window.localStorage.getItem('userId');
    getPhysicalDetailsById();
    
	 function userPhysicalDetails(phydetails){
		 ProfileService.userPhysicalDetails(phydetails)
		     .then(
	    		 function(response) {
	    			 var phdata = response.data; 
	    			 alert("User physical details updated successfully.")
	    			 $window.location.reload();
	    		 },
	    		 function(errResponse){
	    			    alert("Error while update physical details.")
		            }
				 );
	      }

	    function submit() {
            userPhysicalDetails(self.phydetails);
	    }
	    
	       /*
		    * */
		   self.phydata = {};
		   function getPhysicalDetailsById() {
			 $http.get("http://localhost:8080/A2zcinema/getPhysicalDetailsById/"+$scope.ctrlPhy.phydetails.userId)
			   //$http.get("http://a2zcinemaworld.com/getPhysicalDetailsById/"+$scope.ctrlPhy.phydetails.userId)
					   .then(function(response) {
						   var getdata = response.data;
						   self.phydata = response.data;
					   }, function(errResponse) {
					      console.error('Error while fetching Users');
			        });
		       };
}]);

angular.module('profileApp').controller('AddressController', ['$scope', '$window', 'ProfileService', 
             '$localStorage', '$http', function($scope, $window, ProfileService, $localStorage, $http) {
	var self = this;
    self.addressdetails={addressId:'',prAddress:'',prCountry:'', prState:'', prDistrict:'', prZipPostal:'',
    		pmAddress:'', pmCountry:'', pmState:'', pmDistrict:'', pmZipPostal:''}
    self.submit = submit;
    
    /*
     * At time of Register and Login get value from lacalstoreage 
     * */
     var userId = $scope.ctrlAdd.addressdetails.userId = $window.localStorage.getItem('userId');
     getAddressDetailsById();
     
	 function userAddressDetails(addressdetails){
		 ProfileService.userAddressDetails(addressdetails)
		     .then(
	    		 function(response) {
	    			 alert("User address info updated successfully.")
	    			 $window.location.reload();
	                 self.addressdetails = response;
	             },
	    		 function(errResponse){
	            	  alert("Error while update address details.")
		            }
				 );
	      }

	    function submit() {
            userAddressDetails(self.addressdetails);
	    }
	    
	        /*
		    * fetch Address Details data function name 'getAddressDetailsById'
		    * */
		   self.adddata = {};
		   function getAddressDetailsById() {
			   $http.get("http://localhost:8080/A2zcinema/getAddressDetailsById/"+$scope.ctrlAdd.addressdetails.userId)
			   //$http.get("http://a2zcinemaworld.com/getAddressDetailsById/"+$scope.ctrlAdd.addressdetails.userId)
					   .then(function(response) {
						   var getdata = response.data;
						   self.adddata = response.data;
					   }, function(errResponse) {
					   console.error('Error while fetching Users');
			        });
		       };
}]);
angular.module('profileApp').controller('ProfessinalExpController', ['$scope', '$window', 'ProfileService', 
               '$localStorage', '$http', function($scope, $window, ProfileService, $localStorage, $http) {
	var self = this;
    self.proExpdetails={professionalDetailsId:'',preWorkInd:'',nameWorkWithDir:'', nameWorkFilm:'',
    		nameWorkProHouse:'', fileIndIntreste:'',reason:''}
    self.submit = submit;

    /*
     * At time of Register and Login get value from lacalstoreage 
     * */
     var userId = $scope.ctrlProExp.proExpdetails.userId = $window.localStorage.getItem('userId');
     getExpDetailsById();
     
	 function userProfessinalExpDetails(proExpdetails){
		 ProfileService.userProfessinalExpDetails(proExpdetails)
		     .then(
	    		 function(response) {
	    			 alert("User experience info updated successfully.")
	    			 $window.location.reload();
	                 self.proExpdetails = response;
	             },
	    		 function(errResponse){
	            	 alert("Error while update professinal details.")
		            }
				 );
	      }

	    function submit() {
            userProfessinalExpDetails(self.proExpdetails);
	    }
	    
	    
	       /*
		    * fetch Address Details data function name 'getAddressDetailsById'
		    * */
		   self.expdata = {};
		   function getExpDetailsById() {
			 $http.get("http://localhost:8080/A2zcinema/getExpDetailsById/"+$scope.ctrlProExp.proExpdetails.userId)
			    //$http.get("http://a2zcinemaworld.com/getExpDetailsById/"+$scope.ctrlProExp.proExpdetails.userId)
					   .then(function(response) {
						   var getdata = response.data;
						   self.expdata = response.data;
					   }, function(errResponse) {
					      console.error('Error while fetching Users');
			        });
		       };
}]);
