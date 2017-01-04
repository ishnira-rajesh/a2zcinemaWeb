'use strict';
	angular.module('profileApp').controller('BackProfileController', ['$scope', '$window', 'BackProfileService', 
	              '$localStorage', '$http', function($scope, $window, BackProfileService, $localStorage, $http) {	
	
	var self = this;
    self.profile={profileDetailsId:'',fatherName:'',gender:'', dob:'', age:'',
    		whatsupNo:'', landlineNo:'', eduQualification:'', courseRelatedProfession:'',language:'',aboutme:''}
    
    self.submit = submit;
    
    /*
     * Fetch the value from localStorage 
     **/
    var userId = $scope.ctrl.profile.userId = $window.localStorage.getItem('userId');
	var mobile = $scope.ctrl.profile.mobile = $window.localStorage.getItem('mobile');
	var email = $scope.ctrl.profile.email =  $window.localStorage.getItem('email');
	getProfileDetailsById();
 
	
	 function userBackProfilePersonalInfo(profile){
		 BackProfileService.userBackProfilePersonalInfo(profile)
		     .then(
	    		 function(response) {
	    			 alert("User personal info update successfully.");
	                 $window.location.reload();
	                 self.profile = response;
	             },
	    		 function(errResponse){
	            	 alert("Error while update profile user.")
		            }
				 );
	      }
	    function submit() {
            userBackProfilePersonalInfo(self.profile);
	    }
	    
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
					     console.error('Error while fetching Users');
			        });
		       };
}]);

angular.module('profileApp').controller('BackProfessinalExpController', ['$scope', '$window', 'BackProfileService', 
	          '$localStorage', '$http', function($scope, $window, BackProfileService, $localStorage, $http) {
	var self = this;
    self.proExpdetails={professionalDetailsId:'', preWorkInd:'', nameWorkWithDir:'', nameWorkFilm:'',
    		nameWorkProHouse:'', fileIndIntreste:'', reason:''}
    self.submit = submit;
    
    /*
     * At time of Register and Login get value from lacalstoreage 
     * */
     var userId = $scope.ctrlProExp.proExpdetails.userId = $window.localStorage.getItem('userId');
     getExpDetailsById();
 
	 function userBackProfessinalExpDetails(proExpdetails){
		 BackProfileService.userBackProfessinalExpDetails(proExpdetails)
		     .then(
	    		 function(response) {
	    			 alert("User experience info updated successfully.");
	    			 $window.location.reload();
	                 self.proExpdetails = response;
	             },
	    		 function(errResponse){
		              alert("Error while update professinal details.");
		            }
				 );
	      }

	    function submit() {
            userBackProfessinalExpDetails(self.proExpdetails);
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

angular.module('profileApp').controller('BackAddressController', ['$scope', '$window', 'BackProfileService', 
    '$localStorage', '$http', function($scope, $window, BackProfileService, $localStorage, $http) {
	var self = this;
    self.addressdetails={addressId:'',prAddress:'',prCountry:'', prState:'', prDistrict:'', prZipPostal:'',
    		pmAddress:'', pmCountry:'', pmState:'', pmDistrict:'', pmZipPostal:''}
    self.submit = submit;
    
    /*
     * At time of Register and Login get value from lacalstoreage 
     * */
     var userId = $scope.ctrlAdd.addressdetails.userId = $window.localStorage.getItem('userId');
     getAddressDetailsById();
 
	 function userBackAddressDetails(addressdetails){
		 BackProfileService.userBackAddressDetails(addressdetails)
		     .then(
	    		 function(response) {
	    			 alert("User address info updated successfully.");
	    			 $window.location.reload();
	                 self.addressdetails = response;
	             },
	    		 function(errResponse){
	            	 alert("Error while update address details.");
		            }
				 );
	      }

	    function submit() {
            userBackAddressDetails(self.addressdetails);
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
