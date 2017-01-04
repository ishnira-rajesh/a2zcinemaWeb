angular.module('profileApp')
.factory('ImageService', ['$http', '$q', function($http, $q){
   var REST_SERVICE_VIDEO = 'http://localhost:8080/A2zcinema/saveImageVideo/';
   //var REST_SERVICE_URI = 'http://a2zcinemaworld.com/saveImageVideo/';
    var factory = {
    		userVideo: userVideo
    };
    
    return factory;

  function userVideo(video) {
        return $http.post(REST_SERVICE_VIDEO,video)
    }
  
}]);