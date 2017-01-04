'use strict';
angular.module('profileApp').controller(
		'AboutusController',
		[
				'$scope',
				'$window',
				'$localStorage',
				'$http',
				function($scope, $window, $localStorage,$http) {

					$scope.aboutus = $window.localStorage
							.getItem('sessionMenuId');
					$scope.loginAsId = $window.localStorage
							.getItem('loginAsId');
					$scope.logout = function() {
						$window.localStorage.setItem('sessionMenuId', 0);
						$window.location.href = 'logout';
					}
					
				} ]);