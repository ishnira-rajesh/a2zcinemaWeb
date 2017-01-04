'use strict';
angular.module('profileApp').controller(
		'AuditionController',
		[
				'$scope',
				'$window',
				'$localStorage',
				'HomeService',
				function($scope, $window, $localStorage, HomeService) {
					//alert("hi aud controller .....");
					var self = this;
					$scope.aboutus = $window.localStorage.getItem('sessionMenuId');
					self.users = {};

					fetchAllUsers();

					function fetchAllUsers() {
						console.log(
								'fetchAllUsers execute AuditionController ',
								self.users);
						HomeService.fetchAllUsers().then(function(d) {
							self.users = d;

						}, function(errResponse) {
							console.error('Error while fetching Users');
						});
					}

					$scope.redirectpage = function(id) {
						// alert(id);
						$window.localStorage.setItem('snoId', id);
						// $window.location.href = '/useronedetails';
						// window.location = "/useronedetails";
						// window.location =
						// "${pageContext.request.contextPath}/useronedetails.jsp";
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
					self.users = [];

					console.log('UserData UserOneController :',
							$window.localStorage.getItem('snoId'));

					$http.get(
							"http://localhost:8080/A2zcinema/userDetails/"
									+ $window.localStorage.getItem('snoId'))
							.then(function(response) {
								self.users = response.data;

							}, function(errResponse) {
								console.error('Error while fetching Users');
							});
					
				
					
				} ]);
