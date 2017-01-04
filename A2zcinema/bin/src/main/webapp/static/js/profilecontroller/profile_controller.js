'use strict';
angular.module('profileApp').controller('ProfileController', ['$scope', '$window', 'ProfileService', 
             '$localStorage', '$http', function($scope, $window, ProfileService, $localStorage, $http) {
	
		var self = this;
		self.profile = {fatherName:'', gender:'', dob:'', age:'', mobile:'',
			        email:'', whatsupNo:'', landlineNo:'', eduQualification:'',
			        courseRelatedProfession:'', language:''};
	
		self.submit = submit;
	
		function submit() {
	        console.log('Saving ProfileController User',self.profile);
	        userProfilePersonalInfo(self.profile);
	    }
		
		function userProfilePersonalInfo(profile){
		 console.log('userProfilePersonalInfo execute ',self.profile);
		 ProfileService.userProfilePersonalInfo(profile).then(
	    		 function(d) {
	    			 console.log('userProfilePersonalInfo resp Data ',d.data);
	    			 var profildata = d.data;
	                 self.profile = d;
	                 alert("User personal info update.")
	                 $window.location.reload();
	                },
	    		 function(errResponse){
		                console.error('Error while creating User');
		            }
				 );
	       }
	
	   /*
	    * At time of Register and Login get value from lacalstoreage 
	    * */
		$scope.init = function() {
			console.log('UserData on ProfileController :',$window.localStorage.getItem('userId'));
			var userId = $scope.ctrl.profile.userId = $window.localStorage.getItem('userId');
			var mobile = $scope.ctrl.profile.mobile = $window.localStorage.getItem('mobile');
			var email = $scope.ctrl.profile.email =  $window.localStorage.getItem('email');
			getProfileDetailsById();
			console.log('UserId :'+$scope.ctrl.profile.userId +',Mobile:'+$scope.ctrl.profile.mobile + ',email:'+$scope.ctrl.profile.email);
		};
	   $scope.init();
	   
	   
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
					   console.log('getdata data :',getdata);
					   self.profiledata = response.data;
				   }, function(errResponse) {
				   console.error('Error while fetching Users');
		        });
	       };
}]);

angular.module('profileApp').controller('PhysicalController', ['$scope', '$window',
     'ProfileService', '$localStorage', '$http', function($scope, $window, ProfileService, $localStorage, $http) {
	//alert("PhysicalController hii")
	var self = this;
    self.phydetails={physicalDetailId:null,complexion:'',skinQuality:'', eyeColor:'', heightUnit:'', weightUnit:'',
    		         physique:'', facialHair:'', hairStyle:'', hairColor:'', hairLength:''}
    self.submit = submit;
 
   /*
    * At time of Register and Login get value from lacalstoreage 
    * */
    var userId = $scope.ctrlPhy.phydetails.userId = $window.localStorage.getItem('userId');
    console.log('phydetails.userId Register ',$scope.ctrlPhy.phydetails.userId);
    getPhysicalDetailsById();
    
	 function userPhysicalDetails(phydetails){
		 console.log('userPhysicalDetails execute ',self.phydetails);
		 ProfileService.userPhysicalDetails(phydetails)
		     .then(
	    		 function(response) {
	    			 console.log('userPhysicalDetails resp Data ',response.data.complexion);
	    			 var phdata = response.data; 
	    			 alert("User physical details updated.")
	    			 $window.location.reload();
	    			 console.log('phdata:',phdata);
	                 console.log('phydetails resp Data ', self.phydetails);
	    		 },
	    		 function(errResponse){
		                console.error('Error while creating User');
		            }
				 );
	      }

	    function submit() {
            console.log('Saving New User', self.phydetails);
            userPhysicalDetails(self.phydetails);
	    }
	    
	       /*
		    * fetch Physical Details data function name 'getPhysicalDetailsById'
		    * */
		   self.phydata = {};
		   function getPhysicalDetailsById() {
			   console.log('$scope.ctrlPhy.phydetails.userId : ',$scope.ctrlPhy.phydetails.userId);
			   $http.get("http://localhost:8080/A2zcinema/getPhysicalDetailsById/"+$scope.ctrlPhy.phydetails.userId)
					   .then(function(response) {
						   console.log('response data :',response.data);
						   var getdata = response.data;
						   console.log('phydetails data :',getdata);
						   self.phydata = response.data;
					   }, function(errResponse) {
					   console.error('Error while fetching Users');
			        });
		       };
}]);

angular.module('profileApp').controller('AddressController', ['$scope', '$window', 'ProfileService', 
             '$localStorage', '$http', function($scope, $window, ProfileService, $localStorage, $http) {
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
     
	 function userAddressDetails(addressdetails){
		 console.log('userAddressDetails execute ',self.addressdetails);
		 ProfileService.userAddressDetails(addressdetails)
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
            console.log('Saving userAddressDetails New Adress', self.addressdetails);
            userAddressDetails(self.addressdetails);
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
angular.module('profileApp').controller('ProfessinalExpController', ['$scope', '$window', 'ProfileService', 
               '$localStorage', '$http', function($scope, $window, ProfileService, $localStorage, $http) {
	//alert("PhysicalController hii")
	var self = this;
    self.proExpdetails={professionalDetailsId:null,preWorkInd:'',nameWorkWithDir:'', nameWorkFilm:'',
    		nameWorkProHouse:'', fileIndIntreste:'',reason:''}
    self.submit = submit;

    /*
     * At time of Register and Login get value from lacalstoreage 
     * */
     var userId = $scope.ctrlProExp.proExpdetails.userId = $window.localStorage.getItem('userId');
     console.log('proExpdetails.userId ',$scope.ctrlProExp.proExpdetails.userId);
     getExpDetailsById();
     
	 function userProfessinalExpDetails(proExpdetails){
		 console.log('userProfessinalExpDetails execute ',self.proExpdetails);
		 ProfileService.userProfessinalExpDetails(proExpdetails)
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
            console.log('Saving userProfessinalExpDetails New Adress', self.proExpdetails);
            userProfessinalExpDetails(self.proExpdetails);
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
