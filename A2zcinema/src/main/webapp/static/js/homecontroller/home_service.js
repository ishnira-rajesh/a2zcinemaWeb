'use strict';
angular.module('profileApp').factory('HomeService', ['$http', '$q', function($http, $q){
	//alert("hi HomeService .....");
	 var REST_SERVICE_USERSAVE = 'http://localhost:8080/A2zcinema/userSave/';
	 var REST_SERVICE_USERLOGIN = 'http://localhost:8080/A2zcinema/userLogin/';
	 var REST_SERVICE_USERGET= 'http://localhost:8080/A2zcinema/userGet/';
	 var REST_SERVICE_ONEUSERSDATA = 'http://localhost:8080/A2zcinema/userDetails/';
	// var REST_SERVICE_CROWDARA='http://localhost:8080/A2zcinema/getCrowdfund/';
	 var REST_SERVICE_MOVIEDISTRIBUTION = 'http://localhost:8080/A2zcinema/getMovieDistribution/';
		 
    /* var REST_SERVICE_USERSAVE = 'http://a2zcinemaworld.com/userSave/';
	 var REST_SERVICE_USERLOGIN = 'http://a2zcinemaworld.com/userLogin/';
	 var REST_SERVICE_USERGET= 'http://a2zcinemaworld.com/userGet/';
	 var REST_SERVICE_ONEUSERSDATA = 'http://a2zcinemaworld.com/userDetails/';*/

    var factory = {
    		userSave : userSave,
    		userLogin : userLogin,
    		fetchAllUsers: fetchAllUsers,
    		fetchOneUsersDetails : fetchOneUsersDetails,
    		//fetchAllCrowdUsers : fetchAllCrowdUsers,
    		fetchAllmoviedistribution : fetchAllmoviedistribution
    };
    return factory;
    
    function userSave(userdetails) {
  	  console.log("userSave final"+userdetails);
         return $http.post(REST_SERVICE_USERSAVE, userdetails)
      }
    
    function userLogin(ulogin) {
       console.log("userLogin final"+ulogin);
       return $http.post(REST_SERVICE_USERLOGIN, ulogin)
      }
    
    
    function fetchAllUsers() {
    	//alert("hi Home for auditionService .....");
        var deferred = $q.defer();
        $http.get(REST_SERVICE_USERGET)
            .then(
            function (response) {
                deferred.resolve(response.data);
            },
            function(errResponse){
                console.error('Error while fetching Users');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }
    
    /*function fetchAllCrowdUsers() {
    	//alert("hi Home for auditionService .....");
        var deferred = $q.defer();
        $http.get(REST_SERVICE_CROWDARA)
            .then(
            function (response) {
                deferred.resolve(response.data);
            },
            function(errResponse){
                console.error('Error while fetching Users');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }*/
    
    
    function fetchAllmoviedistribution() {
    	//alert("hi Home for auditionService .....");
        var deferred = $q.defer();
        $http.get(REST_SERVICE_MOVIEDISTRIBUTION)
            .then(
            function (response) {
                deferred.resolve(response.data);
            },
            function(errResponse){
                console.error('Error while fetching Users');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }
    

    function fetchOneUsersDetails() {
    	//alert("hi Home for detailsService .....");
        var deferred = $q.defer();
        $http.get("http://localhost:8080/A2zcinema/userDetails/")
        //$http.get("http://a2zcinemaworld.com/userDetails/")
            .then(
            function (response) {
                deferred.resolve(response.data);
                console.log('services userone fetchallusers ',response.data);
            },
            function(errResponse){
                console.error('Error while fetchOneUsersDetails Users');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }
    
    
}]);
