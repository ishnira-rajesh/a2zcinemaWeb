'use strict';
	angular.module('profileApp').controller('BackProfileController', ['$scope', '$window', 'BackProfileService', 
	              '$localStorage', '$http', function($scope, $window, BackProfileService, $localStorage, $http) {	
	
	var self = this;
    self.profile={profileDetailsId:null,fatherName:'',gender:'', dob:'', age:'',
    		whatsupNo:'', landlineNo:'', eduQualification:'', courseRelatedProfession:'',language:''}
    
    self.submit = submit;
    
    /*
     * Fetch the value from localStorage 
     **/
    var userId = $scope.ctrl.profile.userId = $window.localStorage.getItem('userId');
	var mobile = $scope.ctrl.profile.mobile = $window.localStorage.getItem('mobile');
	var email = $scope.ctrl.profile.email =  $window.localStorage.getItem('email');
	getProfileDetailsById();
	console.log('UserId :'+$scope.ctrl.profile.userId +',Mobile:'+$scope.ctrl.profile.mobile + ',email:'+$scope.ctrl.profile.email);
 
	
	 function userBackProfilePersonalInfo(profile){
		 console.log('userBackProfilePersonalInfo execute ',self.profile);
		 BackProfileService.userBackProfilePersonalInfo(profile)
		     .then(
	    		 function(response) {
	    			 console.log('userBackProfilePersonalInfo :',response.data);
	    			 alert("User personal info update.")
	                 $window.location.reload();
	                 self.profile = response;
	             },
	    		 function(errResponse){
		                console.error('Error while creating User');
		            }
				 );
	      }
	    function submit() {
            console.log('Saving New User', self.profile);
            userBackProfilePersonalInfo(self.profile);
	    }
	    
	       /*
		    * fetch profile data function name 'getProfileDetailsById'
		    * */
		   self.profiledata = {};
		   function getProfileDetailsById() {
			   console.log('$scope.ctrl.profile.userId : ',$scope.ctrl.profile.userId);
			   $http.get("http://localhost:8080/A2zcinema/getProfileDetailsById/"+$scope.ctrl.profile.userId)
					   .then(function(response) {
						   console.log('response data :',response.data);
						   var getdata = response.data;
						   console.log('profile data :',getdata);
						   self.profiledata = response.data;
					   }, function(errResponse) {
					   console.error('Error while fetching Users');
			        });
		       };
}]);

angular.module('profileApp').controller('BackProfessinalExpController', ['$scope', '$window', 'BackProfileService', 
	          '$localStorage', '$http', function($scope, $window, BackProfileService, $localStorage, $http) {
	//alert("PhysicalController hii")
	var self = this;
    self.proExpdetails={professionalDetailsId:null, preWorkInd:'', nameWorkWithDir:'', nameWorkFilm:'',
    		nameWorkProHouse:'', fileIndIntreste:'', reason:''}
    self.submit = submit;
    
    /*
     * At time of Register and Login get value from lacalstoreage 
     * */
     var userId = $scope.ctrlProExp.proExpdetails.userId = $window.localStorage.getItem('userId');
     console.log('proExpdetails.userId ',$scope.ctrlProExp.proExpdetails.userId);
     getExpDetailsById();
 
	 function userBackProfessinalExpDetails(proExpdetails){
		 console.log('userBackProfessinalExpDetails execute ',self.proExpdetails);
		 BackProfileService.userBackProfessinalExpDetails(proExpdetails)
		     .then(
	    		 function(response) {
	    			 alert("User experience info updated.")
	    			 console.log('experience response ',response.data);
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
            console.log('Saving userBackProfessinalExpDetails New Adress', self.proExpdetails);
            userBackProfessinalExpDetails(self.proExpdetails);
	    }
	    
	        /*
		    * fetch Address Details data function name 'getAddressDetailsById'
		    * */
		   self.expdata = {};
		   function getExpDetailsById() {
			   console.log('$scope.ctrlProExp.proExpdetails.userId : ',$scope.ctrlProExp.proExpdetails.userId);
			   $http.get("http://localhost:8080/A2zcinema/getExpDetailsById/"+$scope.ctrlProExp.proExpdetails.userId)
					   .then(function(response) {
						   console.log('response data :',response.data);
						   var getdata = response.data;
						   console.log('proExpdetails data :',getdata);
						   self.expdata = response.data;
					   }, function(errResponse) {
					   console.error('Error while fetching Users');
			        });
		       };
}]);

angular.module('profileApp').controller('BackAddressController', ['$scope', '$window', 'BackProfileService', 
    '$localStorage', '$http', function($scope, $window, BackProfileService, $localStorage, $http) {
	//alert("PhysicalController hii")
	var self = this;
    self.addressdetails={addressId:null,prAddress:'',prCountry:'', prState:'', prDistrict:'', prZipPostal:'',
    		pmAddress:'', pmCountry:'', pmState:'', pmDistrict:'', pmZipPostal:''}
    self.submit = submit;
    
    /*
     * At time of Register and Login get value from lacalstoreage 
     * */
     var userId = $scope.ctrlAdd.addressdetails.userId = $window.localStorage.getItem('userId');
     console.log('addressdetails.userId ',$scope.ctrlAdd.addressdetails.userId);
     getAddressDetailsById();
 
	 function userBackAddressDetails(addressdetails){
		 console.log('userBackAddressDetails execute ',self.addressdetails);
		 BackProfileService.userBackAddressDetails(addressdetails)
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
            userBackAddressDetails(self.addressdetails);
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
