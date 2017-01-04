'use strict';
angular.module('profileApp').controller(
		'AboutusController',
		[
				'$scope',
				'$window',
				'$localStorage',
				'$http',
				function($scope, $window, $localStorage,$http) {
					var self = this;
					
					$scope.aboutus = $window.localStorage
							.getItem('sessionMenuId');
					$scope.loginAsId = $window.localStorage
							.getItem('loginAsId');
					$scope.logout = function() {
						$window.localStorage.setItem('sessionMenuId', 0);
						$window.location.href = 'logout';
					}
					
					$scope.ChangePassword = function() {
						//alert('hii');
						$("#ChangePasswordModal").modal("show");
					}
					
					$scope.ProfilePic = function() {
						//alert('hii');
						$("#ChangeProfilePicModal").modal("show");
					}
					
					if($scope.aboutus == 1){
						UserPicFileByUserId();
					}
					 self.userPics = {};
				     function UserPicFileByUserId() {
					  $http.get("http://localhost:8080/A2zcinema/UserPicFileByUserId/"+$window.localStorage.getItem('userId'))
							   .then(function(response) {
								   var getdata = response.data;
								   self.userPics = response.data;
								   console.log("$scope.ctrl.profile.userId response.data; :",response.data);
							   }, function(errResponse) {
								   toastr.error('Error while fetching user Pics.');
					        });
				       };
				
					
					
				} ]);