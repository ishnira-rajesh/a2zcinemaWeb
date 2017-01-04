'use strict';
angular.module('profileApp').controller('AgencyController', ['$scope', '$window', 'AgencyProfileService', 
             '$localStorage', '$http', function($scope, $window, AgencyProfileService, $localStorage, $http) {
		var self = this;
		self.agencyProDetails = {profileDetailsAgencyId:'', nameOfAgency:'', officeContNo:'',
				mobile:'', email:'', website:'',service:'',abourme:''}
	    self.submit = submit;
		
		   /*
		    * At time of Register and Login get value from lacalstoreage 
		    * */
			var userId = $scope.ctrlAgency.agencyProDetails.userId = $window.localStorage.getItem('userId');
			var mobile = $scope.ctrlAgency.agencyProDetails.mobile = $window.localStorage.getItem('mobile');
			var email = $scope.ctrlAgency.agencyProDetails.email =  $window.localStorage.getItem('email');
			
			getAgnProfileDetailsById();
		
		function submit() {
	        userAgencyProfilePersonalInfo(self.agencyProDetails);
	    }
		
		function userAgencyProfilePersonalInfo(agencyProDetails){
		 AgencyProfileService.userAgencyProfilePersonalInfo(agencyProDetails).then(
	    		 function(d) {
	    			 var profildata = d.data;
	                 self.agencyProDetails = d;
	                 alert("User personal info update successfully.");
	                 $window.location.reload();
	                },
	    		 function(errResponse){
	                	 alert("Error while update profile user.");
		            }
				 );
	       }
	   
	   /*
	    * fetch Regprofile data function name 'getAgnProfileDetailsById'
	    * */
	   self.agnpdata = {};
	   function getAgnProfileDetailsById() {
		  $http.get("http://localhost:8080/A2zcinema/getAgnProfileDetailsById/"+$scope.ctrlAgency.agencyProDetails.userId)
		    //$http.get("http://a2zcinemaworld.com/getAgnProfileDetailsById/"+$scope.ctrlAgency.agencyProDetails.userId)
				   .then(function(response) {
					   var getdata = response.data;
					   self.agnpdata = response.data;
				   }, function(errResponse) {
				      console.error('Error while fetching Users');
		        });
	       };
}]);

angular.module('profileApp').controller('AgnProfessinalExpController', ['$scope', '$window', 'AgencyProfileService', 
           '$localStorage', '$http', function($scope, $window, AgencyProfileService, $localStorage, $http) {
	var self = this;
	self.proExpdetails={professionalDetailsId:'',preWorkInd:'',nameWorkFilm:'', nameWorkProHouse:''}
    self.submit = submit;
	
	/*
     * At time of Register and Login get value from lacalstoreage 
     * */
     var userId = $scope.ctrlProExp.proExpdetails.userId = $window.localStorage.getItem('userId');
     getAngExpDetailsById();
     
	 function agnProfessinalExpDetails(proExpdetails){
		 AgencyProfileService.agnProfessinalExpDetails(proExpdetails)
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
            agnProfessinalExpDetails(self.proExpdetails);
	    }
	    
	    /*
		    * fetch Address Details data function name 'getAddressDetailsById'
		    * */
		   self.expdata = {};
		   function getAngExpDetailsById() {
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

angular.module('profileApp').controller('AgnAddressController', ['$scope', '$window', 'AgencyProfileService', 
      '$localStorage', '$http', function($scope, $window, AgencyProfileService, $localStorage, $http) {
	var self = this;
    self.addressdetails={addressId:'',prAddress:'',prCountry:'', prState:'', prDistrict:'', prZipPostal:'',
    		pmAddress:'', pmCountry:'', pmState:'', pmDistrict:'', pmZipPostal:''};
    self.submit = submit;
    
    /*
     * At time of Register and Login get value from lacalstoreage 
     * */
     var userId = $scope.ctrlAdd.addressdetails.userId = $window.localStorage.getItem('userId');
     getAddressDetailsById();
 
	 function userAgnAddressDetails(addressdetails){
		 AgencyProfileService.userAgnAddressDetails(addressdetails)
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
            userAgnAddressDetails(self.addressdetails);
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