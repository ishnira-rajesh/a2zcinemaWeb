'use strict';
angular.module('profileApp').controller('AgencyController', ['$scope', '$window', 'AgencyProfileService', 
             '$localStorage', '$http', function($scope, $window, AgencyProfileService, $localStorage, $http) {
		var self = this;
		self.agencyProDetails = {profileDetailsAgencyId:'',firstName:'', nameOfAgency:'', officeContNo:'',
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
	        userAgencyProfilePersonalInfo(JSON.stringify($scope.ctrlAgency.agencyProDetails));
	    }
		
		/*function userAgencyProfilePersonalInfo(agencyProDetails){
		 AgencyProfileService.userAgencyProfilePersonalInfo(agencyProDetails).then(
	    		 function(d) {
	    			 var profildata = d.data;
	                 self.agencyProDetails = d;
	                 toastr.success('User personal info update successfully.');
	                 //alert("User personal info update successfully.");
	                 $window.location.reload();
	                },
	    		 function(errResponse){
	                	toastr.error('Error while update profile user.');
	                	 //alert("Error while update profile user.");
		            }
				 );
	       }
	   */
		
		function userAgencyProfilePersonalInfo(){
			$('#createProfilediv').addClass('whirl');
			$http({
			    url: "http://localhost:8080/A2zcinema/agencyprofileinfo/",
			    dataType: "json",
			    method: "POST",
			    data: JSON.stringify($scope.ctrlAgency.agencyProDetails),
			    headers: {
			        "Content-Type": "application/json; charset=utf-8"
			    }
			}).then(function(response){
			    $scope.response = response;
			    toastr.success('User personal info update successfully.');	
			    getAgnProfileDetailsById();
			    $('#createProfilediv').removeClass('whirl');
			    console.log("$scope.response.data :",$scope.response.data);
			    console.log("response data :",response.data);
			    
			},function(error){
				 $('#createProfilediv').removeClass('whirl');
				toastr.error('Error while save personal info.');
			    $scope.error = error;
			});
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
     
	 /*function agnProfessinalExpDetails(proExpdetails){
		 AgencyProfileService.agnProfessinalExpDetails(proExpdetails)
		     .then(
	    		 function(response) {
	    			 toastr.success('User experience info updated successfully.');
	    			// alert("User experience info updated successfully.");
	    			 $window.location.reload();
	                 self.proExpdetails = response;
	             },
	    		 function(errResponse){
	            	 toastr.error('Error while update professinal details.');
	            	 //alert("Error while update professinal details.");
		            }
				 );
	      }*/
     
     function agnProfessinalExpDetails(){
			$('#createWorkdiv').addClass('whirl');
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
			    getAngExpDetailsById();
			    $('#createWorkdiv').removeClass('whirl');
			    console.log("$scope.response.data :",$scope.response.data);
			    console.log("response data :",response.data);
			    
			},function(error){
				 $('#createWorkdiv').removeClass('whirl');
				toastr.error('Error while save experience info.');
			    $scope.error = error;
			});
		    }
	    function submit() {
            agnProfessinalExpDetails(JSON.stringify($scope.ctrlProExp.proExpdetails));
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
 
	 /*function userAgnAddressDetails(addressdetails){
		 AgencyProfileService.userAgnAddressDetails(addressdetails)
		     .then(
	             function(response) {
	            	 toastr.success('User address info updated successfully.');
	            	 //alert("User address info updated successfully.");
	    			 $window.location.reload();
	                 self.addressdetails = response;
	             },
	    		 function(errResponse){
	            	 toastr.error('Error while update address details.');
	            	 //alert("Error while update address details.");
		            }
				 );
	      }
*/
     
     function userAgnAddressDetails(){
			$('#createOfficeAdddiv').addClass('whirl');
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
			    toastr.success('User experience info updated successfully.');	
			    getAddressDetailsById();
			    $('#createOfficeAdddiv').removeClass('whirl');
			    console.log("$scope.response.data :",$scope.response.data);
			    console.log("response data :",response.data);
			    
			},function(error){
				 $('#createOfficeAdddiv').removeClass('whirl');
				toastr.error('Error while save experience info.');
			    $scope.error = error;
			});
		    }
	    function submit() {
            userAgnAddressDetails(JSON.stringify($scope.ctrlAdd.addressdetails));
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