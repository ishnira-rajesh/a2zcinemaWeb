'use strict';
angular.module('profileApp')
.controller('ImageUploadController', [
   '$scope',
   function(
   $scope){
	// GET THE FILE INFORMATION.
       $scope.getFileDetails = function (e) {
           $scope.files = [];
           $scope.$apply(function () {
               // STORE THE FILE OBJECT IN AN ARRAY.
               for (var i = 0; i < e.files.length; i++) {
                   $scope.files.push(e.files[i])
               }
           });
       };
       
    // NOW UPLOAD THE FILES.
       $scope.uploadFiles = function () {
           //FILL FormData WITH FILE DETAILS.
           var data = new FormData();
           for (var i in $scope.files) {
               data.append("uploadedFile", $scope.files[i]);
           }
           // ADD LISTENERS.
           var objXhr = new XMLHttpRequest();
           objXhr.addEventListener("progress", updateProgress, false);
           objXhr.addEventListener("load", transferComplete, false);

           // SEND FILE DETAILS TO THE API.
           objXhr.open("POST", "http://localhost:8080/A2zcinema/fileUpload/");
           //objXhr.open("POST", "http://a2zcinemaworld.com/fileUpload/");
           objXhr.send(data);
       }
       
    // UPDATE PROGRESS BAR.
       function updateProgress(e) {
           if (e.lengthComputable) {
               document.getElementById('pro').setAttribute('value', e.loaded);
               document.getElementById('pro').setAttribute('max', e.total);
           }
       }
       
       // CONFIRMATION.
       function transferComplete(e) {
           alert("Files uploaded successfully.");
       }
       
   }]);

angular.module('profileApp').controller('VideoController', 
		['$scope', '$window', 'ImageService', 
       '$localStorage', '$http', function($scope, $window, ImageService, $localStorage, $http) {
                                                 	
var self = this;
self.video = {imageVideoId:'',videoUrlOne:'',videoUrlTwo:'',videoUrlThree:''};

self.submit = submit;
var videoId = $scope.ctrlVideo.video.userId = $window.localStorage.getItem('userId');
function submit() {
    userVideo(self.video);
}
getUserVideoById();
function userVideo(video){
 ImageService.userVideo(video).then(
		 function(d) {
			 var video = d.data;
             self.video = d;
             alert("User video save successfully.")
             $window.location.reload();
            },
		 function(errResponse){
                alert("Error while update video user.")
	            }
			 );
       }
   
   /*
* fetch profile data function name 'getUserVideoById'
* */
   self.videodata = {};
   function getUserVideoById() {
	  $http.get("http://localhost:8080/A2zcinema/getUserVideoById/"+$scope.ctrlVideo.video.userId)
       // $http.get("http://a2zcinemaworld.com/getUserVideoById/"+$scope.ctrlVideo.video.userId)
		   .then(function(response) {
			   self.videodata = response.data;
		   }, function(errResponse) {
		    alert("Error while fetching Users.")
        });
   };
}]);