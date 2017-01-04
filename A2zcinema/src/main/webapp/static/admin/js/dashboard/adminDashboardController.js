'use strict';
angular.module('profileApp')
.controller('AdminDashController',['$scope','$window','$localStorage','$http',
function($scope, $window, $localStorage,$http) {
	$scope.aboutus = $window.localStorage
			.getItem('sessionMenuId');
	$scope.loginAsId = $window.localStorage
			.getItem('loginAsId');
	$scope.logout = function() {
		$window.localStorage.setItem('sessionMenuId', 0);
		$window.location.href = 'logout';
		}
	
	$scope.users = {};
	$http.get("http://localhost:8080/A2zcinema/getAllUsers/")
	//$http.get("http://localhost:8080/A2zcinema/getAllUsers/")
		.then(function(response) {
		$scope.users = response.data;
		//console.log("response.data1 : ",response.data);
		}, function(errResponse) {
			console.error('Error while admin fetching Users');
		});
	
	$scope.redirectpage = function(id) {
		$window.localStorage.setItem('snoId', id);
		$window.location.href = 'useronedetalis';
	};
	
	$scope.emailSend = function(userId) {
		//alert("UserId"+userId);
 	   $http.post("http://localhost:8080/A2zcinema/birthdayWishesEmail/"+userId)
		   .then(function(response) {
			   self.emailwish = response.data;
			   $window.location.reload();
		   }, function(errResponse) {
		      console.error('Error while send Birthday Wishes Email.');
     });
 	   toastr.success('Birthday email send successfully.');  
    
	};
	
} ]);