'use strict';
angular.module('profileApp').controller(
		'CrowfundController',
		[
			'$scope',
			'$window',
			'$localStorage',
			'$http',
			function($scope, $window, $localStorage,$http) {
				var self = this;
				$scope.aboutus = $window.localStorage.getItem('sessionMenuId');
				
				fetchAllUsers();
				
				self.users = {};
				   function fetchAllUsers() {
					  $http.get("http://localhost:8080/A2zcinema/getCrowdfund/")
							   .then(function(response) {
								   self.users = response.data;
							   }, function(errResponse) {
							      console.error('Error while fetching users.');
					        });
				       };
				
				       self.movie = {};
				       $scope.contctEmail = function(crowd_funding_id) {
					       $http.get("http://localhost:8080/A2zcinema/moviedistributiondetails/"+crowd_funding_id)
					            .then(function(response) {
					              self.movie = response.data;
					       }, function(errResponse) {
					             console.error('Error while fetching Users');
					       });
				       };
				 self.contEmail={emailId:'', name:'', emailTo:'',emailFrom:'',subject:'',contact:'',message:'',mDataId:''}
				 self.save = save;
				 
				  function save(){
					 saveContactEmail(JSON.stringify($scope.ctrl.contEmail))
			 	    }
				
				  function saveContactEmail() {
					$http.post("http://localhost:8080/A2zcinema/saveContactEmail/",self.contEmail)
						.then(function(response) {
								   var getdata = response.data;
								   //console.log("data :",getdata);
								  // alert("Latest news save successfully.");
								   $window.location.reload();
								   $("#myModal").modal("hide");
					     }, function(errResponse) {
							  console.error('Error while save latest nesw.');
					     });
					 toastr.success('Send email  successfully.');
				  };

				  
			} ]);