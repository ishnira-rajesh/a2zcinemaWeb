'use strict';
angular.module('profileApp')
.controller('EventNewsController',['$scope','$window','$localStorage','$http',
function($scope, $window, $localStorage,$http) {	
	var self = this;
    self.news={latestNeswsId:'', newsHeading:'', newsUrl:''}
    getLatestNews();
    function saveLatestNews() {
		$http.post("http://localhost:8080/A2zcinema/saveLatestNews/",self.news)
			.then(function(response) {
					   var getdata = response.data;
					   console.log("data :",getdata);
					  // alert("Latest news save successfully.");
					  
					   $window.location.reload();
		     }, function(errResponse) {
				  console.error('Error while save latest nesw.');
		     });
		 toastr.success('Latest news save successfully.');
	     };
	
        $scope.submit = function(){
        	saveLatestNews(JSON.stringify($scope.eventCtrl.news))
 	    }
     
       self.newsdata = {};
	   function getLatestNews() {
		  $http.get("http://localhost:8080/A2zcinema/getLatestNews/")
				   .then(function(response) {
					   self.newsdata = response.data;
				   }, function(errResponse) {
				      console.error('Error while fetching Latest News.');
		        });
	       };
     
       $scope.rowDelete = function(latest_nesws_id){
    	   $http.get("http://localhost:8080/A2zcinema/deleteLatestNews/"+latest_nesws_id)
		   .then(function(response) {
			   self.newshhh = response.data;
			  // alert("Latest news delete successfully.");
			   $window.location.reload();
		   }, function(errResponse) {
		      console.error('Error while delete Latest News.');
        });
    	   toastr.success('Latest news delete successfully.');  
       }
       
       $scope.reset = function(){
    	   $scope.eventCtrl.news.newsHeading = "";
  		   $scope.eventCtrl.news.newsUrl = "";
       }
} ]);


angular.module('profileApp')
.controller('EventEventsController',['$scope','$window','$localStorage','$http',
function($scope, $window, $localStorage,$http) {	
	var self = this;
    self.event={latestEventId:'', eventHeading:'', eventUrl:''}
    getLatestEvents();
    function saveLatestNews() {
		$http.post("http://localhost:8080/A2zcinema/saveLatestEvents/",self.event)
			.then(function(response) {
					   var getdata = response.data;
					   console.log("data :",getdata);
					  // alert("Latest event save successfully.");
					   $window.location.reload();
		     }, function(errResponse) {
				  console.error('Error while save latest event.');
		     });
		toastr.success('Latest event save successfully.');
	     };
	
        $scope.submit = function(){
        	saveLatestNews(JSON.stringify($scope.eventCtrl.event))
 	    }
     
       self.eventdata = {};
	   function getLatestEvents() {
		  $http.get("http://localhost:8080/A2zcinema/getLatestEvents/")
				   .then(function(response) {
					   self.eventdata = response.data;
				   }, function(errResponse) {
				      console.error('Error while fetching Latest Events.');
		        });
	       };
     
       $scope.rowDelete = function(latest_events_id){
    	   $http.get("http://localhost:8080/A2zcinema/deleteLatestEvent/"+latest_events_id)
		   .then(function(response) {
			   self.newshhh = response.data;
			   //alert("Latest event delete successfully.");
			   $window.location.reload();
		   }, function(errResponse) {
		      console.error('Error while delete Latest News.');
        });
    	   toastr.success('Latest event delete successfully.');
       }
       
       $scope.reset = function(){
    	   $scope.eventCtrl.event.eventHeading = "";
  		   $scope.eventCtrl.event.eventUrl = "";
       }
} ]);

angular.module('profileApp')
.controller('MovieController',['$scope','$window','$localStorage','$http',
function($scope, $window, $localStorage,$http) {	
	var self = this;
    self.movie={latestMovieId:'', movieHeading:'', movieUrl:''}
    getLatestMoviesNews();
    function saveMovieLatestNews() {
		$http.post("http://localhost:8080/A2zcinema/saveLatestMoviesNews/",self.movie)
			.then(function(response) {
					   var getdata = response.data;
					   console.log("data :",getdata);
					   //alert("Latest movie save successfully.");
					   $window.location.reload();
		     }, function(errResponse) {
				  console.error('Error while save latest movie.');
		     });
		toastr.success('Latest movie save successfully.');
	     };
	
        $scope.submit = function(){
        	saveMovieLatestNews(JSON.stringify($scope.movieCtrl.movie))
 	    }
     
       self.moviedata = {};
	   function getLatestMoviesNews() {
		  $http.get("http://localhost:8080/A2zcinema/getLatestMoviesNews/")
				   .then(function(response) {
					   self.moviedata = response.data;
				   }, function(errResponse) {
				      console.error('Error while fetching latest movies news.');
		        });
	       };
     
       $scope.rowDelete = function(latest_movie_id){
    	   $http.get("http://localhost:8080/A2zcinema/deleteLatestMoviesNews/"+latest_movie_id)
		   .then(function(response) {
			   self.newshhh = response.data;
			  // alert("Latest movie news delete successfully.");
			   $window.location.reload();
		   }, function(errResponse) {
		      console.error('Error while delete movie news.');
        });
    	   toastr.success('Latest movie delete successfully.');  
       }
       
       $scope.reset = function(){
    	   $scope.movieCtrl.movie.movieHeading = "";
  		   $scope.movieCtrl.movie.movieUrl = "";
       }
} ]);


angular.module('profileApp')
.controller('AuditionNewsController',['$scope','$window','$localStorage','$http',
function($scope, $window, $localStorage,$http) {	
	var self = this;
    self.audi={latestAuditionId:'', auditionHeading:'', auditionUrl:''}
    getLatestAuditionNews();
    function saveAuditionLatestNews() {
		$http.post("http://localhost:8080/A2zcinema/saveLatestAuditionNews/",self.audi)
			.then(function(response) {
					   var getdata = response.data;
					   console.log("data :",getdata);
					  // alert("Latest audition news save successfully.");
					   $window.location.reload();
		     }, function(errResponse) {
				  console.error('Error while save latest audition news.');
		     });
		toastr.success('Latest audition news save successfully.');
	     };
	
        $scope.submit = function(){
        	saveAuditionLatestNews(JSON.stringify($scope.audiCtrl.audi))
 	    }
     
       self.audidata = {};
	   function getLatestAuditionNews() {
		  $http.get("http://localhost:8080/A2zcinema/getLatestAuditionNews/")
				   .then(function(response) {
					   self.audidata = response.data;
				   }, function(errResponse) {
				      console.error('Error while fetching latest audition news.');
		        });
	       };
     
       $scope.rowDelete = function(latest_audition_id){
    	   $http.get("http://localhost:8080/A2zcinema/deleteLatestAuditionNews/"+latest_audition_id)
		   .then(function(response) {
			   self.newshhh = response.data;
			 //  alert("Latest movie news delete successfully.");
			   $window.location.reload();
		   }, function(errResponse) {
		      console.error('Error while delete movie news.');
        });
    	   toastr.success('Latest audition news save successfully.');  
       }
       
       $scope.reset = function(){
    	   $scope.audiCtrl.audi.auditionHeading = "";
  		   $scope.audiCtrl.audi.auditionUrl = "";
       }
} ]);