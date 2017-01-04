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
 
	
	function userBackProfilePersonalInfo(){
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
	}
	/* function userBackProfilePersonalInfo(profile){
		 BackProfileService.userBackProfilePersonalInfo(profile)
		     .then(
	    		 function(response) {
	    			 toastr.success('User personal info update successfully.');
	    			// alert("User personal info update successfully.");
	                 $window.location.reload();
	                 self.profile = response;
	             },
	    		 function(errResponse){
	            	 toastr.error('Error while update profile user.');
	            	 //alert("Error while update profile user.")
		            }
				 );
	      }*/
	    function submit() {
            userBackProfilePersonalInfo(JSON.stringify($scope.ctrl.profile));
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
						   toastr.error('Error while fetching Users');
					     //console.error('Error while fetching Users');
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
 
	 /*function userBackProfessinalExpDetails(proExpdetails){
		 BackProfileService.userBackProfessinalExpDetails(proExpdetails)
		     .then(
	    		 function(response) {
	    			 toastr.success('User experience info updated successfully.');
	    			 //alert("User experience info updated successfully.");
	    			 $window.location.reload();
	                 self.proExpdetails = response;
	             },
	    		 function(errResponse){
	            	 toastr.error('Error while update professinal details.');
		             // alert("Error while update professinal details.");
		            }
				 );
	      }*/
     
     function userBackProfessinalExpDetails(){
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
            userBackProfessinalExpDetails(JSON.stringify($scope.ctrlProExp.proExpdetails));
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
						   toastr.error('Error while fetching Users');
					    //console.error('Error while fetching Users');
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
 
	/* function userBackAddressDetails(addressdetails){
		 BackProfileService.userBackAddressDetails(addressdetails)
		     .then(
	    		 function(response) {
	    			 toastr.success('User address info updated successfully.');
	    			// alert("User address info updated successfully.");
	    			 $window.location.reload();
	                 self.addressdetails = response;
	             },
	    		 function(errResponse){
	            	 toastr.error('Error while update address details.');
	            	// alert("Error while update address details.");
		            }
				 );
	      }*/
     
     function userBackAddressDetails(){
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
            userBackAddressDetails(JSON.stringify($scope.ctrlAdd.addressdetails));
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
