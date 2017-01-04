'use strict';
angular.module('profileApp').controller(
		'MovieDistributionController',
		[
			'$scope',
			'$window',
			'$localStorage',
			'HomeService',
			'$http',
			function($scope, $window, $localStorage, HomeService,$http) {
				var self = this;
				$scope.aboutus = $window.localStorage.getItem('sessionMenuId');
				self.users = {};
				
				fetchAllUsers();
				
				function fetchAllUsers() {
					HomeService.fetchAllmoviedistribution().then(function(d) {
						self.users = d;
					}, function(errResponse) {
						console.error('Error while fetching Users');
					});
				}
               
				self.movie ={}
				$scope.contctEmail = function(movie_distribution_id) {
					//alert(movie_distribution_id);
					$http.get("http://localhost:8080/A2zcinema/getMovieDistriDetailById/"+movie_distribution_id)
							.then(function(response) {
								self.movie = response.data;
							}, function(errResponse) {
								console.error('Error while fetching Users');
							});
				      };
				      
				      
			      self.contEmail={emailId:'', name:'', emailTo:'',emailFrom:'',subject:'',contact:'',message:'',mDataId:''}
					 self.save = save;
					 
					  function save(){
						  saveContactEmailMovie(JSON.stringify($scope.ctrl.contEmail))
				 	    }
					
					  function saveContactEmailMovie() {
						$http.post("http://localhost:8080/A2zcinema/saveContactEmailMovie/",self.contEmail)
							.then(function(response) {
									   var getdata = response.data;
									   $("#myModal").modal("hide");
									   $window.location.reload();
						     }, function(errResponse) {
								  console.error('Error while save Contact Email.');
						     });
						 toastr.success('Send email  successfully.');
					  };	      

			} ]);