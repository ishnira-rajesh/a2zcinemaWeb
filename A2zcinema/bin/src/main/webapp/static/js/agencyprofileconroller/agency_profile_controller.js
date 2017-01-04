'use strict';
angular.module('profileApp').controller('AgencyController', ['$scope', '$window', 'AgencyProfileService', 
             '$localStorage', '$http', function($scope, $window, AgencyProfileService, $localStorage, $http) {
		var self = this;
		self.agencyProDetails = {profileDetailsAgencyId:null, nameOfAgency:'', officeContNo:'', website:'',service:''}
	    self.submit = submit;
		
		   /*
		    * At time of Register and Login get value from lacalstoreage 
		    * */
			var userId = $scope.ctrlAgency.agencyProDetails.userId = $window.localStorage.getItem('userId');
			var mobile = $scope.ctrlAgency.agencyProDetails.mobile = $window.localStorage.getItem('mobile');
			var email = $scope.ctrlAgency.agencyProDetails.email =  $window.localStorage.getItem('email');
			console.log('UserId :'+$scope.ctrlAgency.agencyProDetails.userId +',Mobile:'+$scope.ctrlAgency.agencyProDetails.mobile + ',email:'+$scope.ctrlAgency.agencyProDetails.email);
			
			getAgnProfileDetailsById();
		
		function submit() {
	        console.log('Saving AgencyController User',self.agencyProDetails);
	        userAgencyProfilePersonalInfo(self.agencyProDetails);
	    }
		
		function userAgencyProfilePersonalInfo(agencyProDetails){
		 console.log('userProfilePersonalInfo execute ',self.agencyProDetails);
		 AgencyProfileService.userAgencyProfilePersonalInfo(agencyProDetails).then(
	    		 function(d) {
	    			 console.log('userProfilePersonalInfo resp Data ',d.data);
	    			 var profildata = d.data;
	                 self.agencyProDetails = d;
	                 alert("User personal info update.")
	                 $window.location.reload();
	                },
	    		 function(errResponse){
		                console.error('Error while creating User');
		            }
				 );
	       }
	   
	   /*
	    * fetch Regprofile data function name 'getAgnProfileDetailsById'
	    * */
	   self.agnpdata = {};
	   function getAgnProfileDetailsById() {
		   console.log('$scope.ctrlAgency.agencyProDetails.userId : ',$scope.ctrlAgency.agencyProDetails.userId);
		   $http.get("http://localhost:8080/A2zcinema/getAgnProfileDetailsById/"+$scope.ctrlAgency.agencyProDetails.userId)
				   .then(function(response) {
					   console.log('response data :',response.data);
					   var getdata = response.data;
					   console.log('agnpdata data :',getdata);
					   self.agnpdata = response.data;
				   }, function(errResponse) {
				   console.error('Error while fetching Users');
		        });
	       };
}]);

angular.module('profileApp').controller('AgnProfessinalExpController', ['$scope', '$window', 'AgencyProfileService', 
           '$localStorage', '$http', function($scope, $window, AgencyProfileService, $localStorage, $http) {
	//alert("PhysicalController hii")
	var self = this;
	self.proExpdetails={professionalDetailsId:null,preWorkInd:'',nameWorkFilm:'', nameWorkProHouse:''}
    //self.profiledata=[];
    self.submit = submit;
	
	/*
     * At time of Register and Login get value from lacalstoreage 
     * */
     var userId = $scope.ctrlProExp.proExpdetails.userId = $window.localStorage.getItem('userId');
     console.log('proExpdetails.userId ',$scope.ctrlProExp.proExpdetails.userId);
     getAngExpDetailsById();
     
	 function agnProfessinalExpDetails(proExpdetails){
		 console.log('agnProfessinalExpDetails execute ',self.proExpdetails);
		 AgencyProfileService.agnProfessinalExpDetails(proExpdetails)
		     .then(
	    		 function(response) {
	    			 alert("User experience info updated.")
	    			 console.log('agnProfessinalExpDetails response ',response.data);
	    			 $window.location.reload();
	                 self.proExpdetails = response;
	             },
	    		 function(errResponse){
		                console.error('Error while creating User');
		            }
				 );
	      }
	    function submit() {
	    	//alert("Submit PhysicalController hii")
            console.log('Saving agnProfessinalExpDetails New Adress', self.proExpdetails);
            agnProfessinalExpDetails(self.proExpdetails);
	    }
	    
	    /*
		    * fetch Address Details data function name 'getAddressDetailsById'
		    * */
		   self.expdata = {};
		   function getAngExpDetailsById() {
			   console.log('$scope.ctrlProExp.proExpdetails.userId : ',$scope.ctrlProExp.proExpdetails.userId);
			   $http.get("http://localhost:8080/A2zcinema/getExpDetailsById/"+$scope.ctrlProExp.proExpdetails.userId)
					   .then(function(response) {
						   console.log('response data :',response.data);
						   var getdata = response.data;
						   console.log('agnProfessinalExpDetails data :',getdata);
						   self.expdata = response.data;
					   }, function(errResponse) {
					   console.error('Error while fetching Users');
			        });
		       };
}]);

angular.module('profileApp').controller('AgnAddressController', ['$scope', '$window', 'AgencyProfileService', 
      '$localStorage', '$http', function($scope, $window, AgencyProfileService, $localStorage, $http) {
	//alert("PhysicalController hii")
	var self = this;
    self.addressdetails={addressId:null,prAddress:'',prCountry:'', prState:'', prDistrict:'', prZipPostal:'',
    		pmAddress:'', pmCountry:'', pmState:'', pmDistrict:'', pmZipPostal:''};
 
    self.submit = submit;
    
    /*
     * At time of Register and Login get value from lacalstoreage 
     * */
     var userId = $scope.ctrlAdd.addressdetails.userId = $window.localStorage.getItem('userId');
     console.log('addressdetails.userId ',$scope.ctrlAdd.addressdetails.userId);
     getAddressDetailsById();
 
	 function userAgnAddressDetails(addressdetails){
		 console.log('userAddressDetails execute ',self.addressdetails);
		 AgencyProfileService.userAgnAddressDetails(addressdetails)
		     .then(
	             function(response) {
	    			 alert("User address info updated.")
	    			 console.log('userAddressDetails response ',response.data);
	    			 $window.location.reload();
	                 self.addressdetails = response;
	             },
	    		 function(errResponse){
		                console.error('Error while creating User');
		            }
				 );
	      }

	    function submit() {
	    	//alert("Submit PhysicalController hii")
            console.log('Saving userAddressDetails New Adress', self.addressdetails);
            userAgnAddressDetails(self.addressdetails);
	    }
	    
	        /*
		    * fetch Address Details data function name 'getAddressDetailsById'
		    * */
		   self.adddata = {};
		   function getAddressDetailsById() {
			   console.log('$scope.ctrlAdd.addressdetails.userId : ',$scope.ctrlAdd.addressdetails.userId);
			   $http.get("http://localhost:8080/A2zcinema/getAddressDetailsById/"+$scope.ctrlAdd.addressdetails.userId)
					   .then(function(response) {
						   console.log('response data :',response.data);
						   var getdata = response.data;
						   console.log('getdata data :',getdata);
						   self.adddata = response.data;
					   }, function(errResponse) {
					   console.error('Error while fetching Users');
			        });
		       };
}]);