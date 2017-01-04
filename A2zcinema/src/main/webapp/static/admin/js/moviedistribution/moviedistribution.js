'use strict';
angular.module('profileApp')
.controller('MovieDisController',['$scope','$window','$localStorage','$http',
function($scope, $window, $localStorage,$http) {	
	var self = this;
    self.movieDis={movieDistributionId:'',multiplexName:'',theaterOwnerName:'',theaterAddress:'',theaterCity:'',
    	            theaterState:'',contactPersonName:'',contactNo:'',enquiryEmail:'',theaterRent:''}
    getMovieDistributionAdmin();
    function saveMovieDistribution() {
		$http.post("http://localhost:8080/A2zcinema/saveMovieDistribution/",self.movieDis)
			.then(function(response) {
					   var getdata = response.data;
					   console.log("data :",getdata);
					   getMovieDistributionAdmin();
					   $window.location.reload();
		     }, function(errResponse) {
				  console.error('Error while save movie distribution.');
		     });
		 toastr.success('Movie distribution save successfully.');
	     };
	
        $scope.submit = function(){
        	saveMovieDistribution(JSON.stringify($scope.movieDisCtrl.movieDis))
 	    }
     
     self.moviedata = {};
	   function getMovieDistributionAdmin() {
		  $http.get("http://localhost:8080/A2zcinema/getMovieDistributionAdmin/")
				   .then(function(response) {
					   self.moviedata = response.data;
				   }, function(errResponse) {
				      console.error('Error while fetching Movie Distribution.');
		        });
	       };
     
	     $scope.rowDelete = function(movie_distribution_id){
    	   $http.get("http://localhost:8080/A2zcinema/deleteMovieDistributionAdmin/"+movie_distribution_id)
		   .then(function(response) {
			   self.newshhh = response.data;
			  // alert("Latest news delete successfully.");
			   $window.location.reload();
		   }, function(errResponse) {
		      console.error('Error while delete Movie Distribution.');
        });
    	   toastr.success('Movie Distribution delete successfully.');  
       }
       
       $scope.reset = function(){
    	   $scope.movieDisCtrl.movieDis.multiplexName = "";
    	   $scope.movieDisCtrl.movieDis.theaterOwnerName = "";
    	   $scope.movieDisCtrl.movieDis.theaterAddress = "";
    	   $scope.movieDisCtrl.movieDis.theaterCity = "";
    	   $scope.movieDisCtrl.movieDis.theaterState = "";
    	   $scope.movieDisCtrl.movieDis.contactPersonName = "";
    	   $scope.movieDisCtrl.movieDis.contactNo = "";
    	   $scope.movieDisCtrl.movieDis.enquiryEmail = "";
    	   //$scope.movieDisCtrl.movieDis.theaterRent = "";
       }
} ]);
