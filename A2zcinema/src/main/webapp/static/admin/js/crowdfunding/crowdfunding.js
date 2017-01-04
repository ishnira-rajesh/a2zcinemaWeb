'use strict';
angular.module('profileApp')
.controller('CrowdFundingController',['$scope','$window','$localStorage','$http',
function($scope, $window, $localStorage,$http) {	
	var self = this;
    self.crowd={crowdFundingId:'', movieName:'', directorName:'',proHouseName:'',producerName:'',starCast:'',
    	         contactPersonName:'',contactNo:'',enquiryEmail:'',totalBudget:'',appealeAmount:'',remainingAmount:''}
    getCrowdFunding();
    function saveCrowdFunding() {
		$http.post("http://localhost:8080/A2zcinema/saveCrowdFunding/",self.crowd)
			.then(function(response) {
					   var getdata = response.data;
					   console.log("data :",getdata);
					   $window.location.reload();
		     }, function(errResponse) {
				  console.error('Error while save crowd funding.');
		     });
		 toastr.success('Crowd funding save successfully.');
	     };
	
        $scope.submit = function(){
        	saveCrowdFunding(JSON.stringify($scope.crowdCtrl.crowd))
 	    }
     
      self.crowddata = {};
	   function getCrowdFunding() {
		  $http.get("http://localhost:8080/A2zcinema/getCrowdFunding/")
				   .then(function(response) {
					   self.crowddata = response.data;
				   }, function(errResponse) {
				      console.error('Error while fetching Crowd Funding.');
		        });
	       };
     
       $scope.rowDelete = function(crowd_funding_id){
    	   $http.get("http://localhost:8080/A2zcinema/deleteCrowdFunding/"+crowd_funding_id)
		   .then(function(response) {
			   self.newshhh = response.data;
			  // alert("Latest news delete successfully.");
			   $window.location.reload();
		   }, function(errResponse) {
		      console.error('Error while delete Crowd Funding.');
        });
    	   toastr.success('Crowd Funding delete successfully.');  
       }
       
       $scope.reset = function(){
    	   $scope.crowdCtrl.crowd.movieName = "";
    	   $scope.crowdCtrl.crowd.directorName = "";
    	   $scope.crowdCtrl.crowd.proHouseName = "";
    	   $scope.crowdCtrl.crowd.producerName = "";
    	   $scope.crowdCtrl.crowd.starCast = "";
    	   $scope.crowdCtrl.crowd.contactPersonName = "";
    	   $scope.crowdCtrl.crowd.contactNo = "";
    	   $scope.crowdCtrl.crowd.enquiryEmail = "";
    	   $scope.crowdCtrl.crowd.totalBudget = "";
    	   $scope.crowdCtrl.crowd.appealeAmount = "";
  		   $scope.crowdCtrl.crowd.remainingAmount = "";
       }
} ]);
