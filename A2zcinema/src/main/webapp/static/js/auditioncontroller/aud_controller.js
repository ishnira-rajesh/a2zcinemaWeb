'use strict';
angular.module('profileApp').controller(
		'AuditionController',
		[
				'$scope',
				'$window',
				'$localStorage',
				'HomeService',
				function($scope, $window, $localStorage, HomeService) {
					var self = this;
					$scope.aboutus = $window.localStorage.getItem('sessionMenuId');
					self.users = {};
					
					fetchAllUsers();
					
					function fetchAllUsers() {
						HomeService.fetchAllUsers().then(function(d) {
							self.users = d;

						}, function(errResponse) {
							console.error('Error while fetching Users');
						});
					}

					$scope.redirectpage = function(id) {
						$window.localStorage.setItem('snoId', id);
					};

				} ]);

angular.module('profileApp').controller(
		'UserOneController',
		[
				'$scope',
				'$window',
				'$localStorage',
				'$http',
				function($scope, $window, $localStorage, $http) {
					var self = this;
					$scope.aboutus = $window.localStorage.getItem('sessionMenuId');
					$scope.loginAsId = $window.localStorage.getItem('loginAsId');
					self.users = [];
					$http.get(
							"http://localhost:8080/A2zcinema/userDetails/"
									+ $window.localStorage.getItem('snoId'))
					/*$http.get(
							"http://a2zcinemaworld.com/userDetails/"
									+ $window.localStorage.getItem('snoId'))*/
							.then(function(response) {
								self.users = response.data;
								console.log("response.data 77777:",response.data);
							}, function(errResponse) {
								console.error('Error while fetching Users');
							});
					
					 self.imagedata = {};
					 
				  	  $http.get("http://localhost:8080/A2zcinema/getProfileImageByUserId/"+ $window.localStorage.getItem('snoId'))
				  		   .then(function(response) {
				  			   self.imagedata = response.data;
				  			 console.log('getProfileImageByUserId' , self.imagedata.image_name);
				  		   }, function(errResponse) {
				  		    alert("Error while fetching Users.")
				          });
					
				
					
				} ]);
