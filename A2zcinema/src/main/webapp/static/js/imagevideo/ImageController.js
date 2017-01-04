'use strict';
angular.module('profileApp')
.controller('ImageController', ['$scope', 'FileUploader', function($scope, FileUploader) {
    var uploader = $scope.uploader = new FileUploader({
        url: 'http://localhost:8080/A2zcinema/uploadMultipleFile/'
    });

    // FILTERS

    uploader.filters.push({
        name: 'imageFilter',
        fn: function(item /*{File|FileLikeObject}*/, options) {
            var type = '|' + item.type.slice(item.type.lastIndexOf('/') + 1) + '|';
            return '|jpg|png|jpeg|bmp|gif|'.indexOf(type) !== -1;
        }
    });

    // CALLBACKS

    uploader.onWhenAddingFileFailed = function(item /*{File|FileLikeObject}*/, filter, options) {
        console.info('onWhenAddingFileFailed', item, filter, options);
    };
    uploader.onAfterAddingFile = function(fileItem) {
        console.info('onAfterAddingFile', fileItem);
    };
    uploader.onAfterAddingAll = function(addedFileItems) {
        console.info('onAfterAddingAll', addedFileItems);
    };
    uploader.onBeforeUploadItem = function(item) {
        console.info('onBeforeUploadItem', item);
    };
    uploader.onProgressItem = function(fileItem, progress) {
        console.info('onProgressItem', fileItem, progress);
    };
    uploader.onProgressAll = function(progress) {
        console.info('onProgressAll', progress);
    };
    uploader.onSuccessItem = function(fileItem, response, status, headers) {
        console.info('onSuccessItem', fileItem, response, status, headers);
    };
    uploader.onErrorItem = function(fileItem, response, status, headers) {
        console.info('onErrorItem', fileItem, response, status, headers);
    };
    uploader.onCancelItem = function(fileItem, response, status, headers) {
        console.info('onCancelItem', fileItem, response, status, headers);
    };
    uploader.onCompleteItem = function(fileItem, response, status, headers) {
        console.info('onCompleteItem', fileItem, response, status, headers);
    };
    uploader.onCompleteAll = function() {
        console.info('onCompleteAll');
    };

    console.info('uploader link', uploader);
}]);



angular.module('profileApp').controller('VideoController', 
		['$scope', '$window', 'ImageService', 
       '$localStorage', '$http', function($scope, $window, ImageService, $localStorage, $http) {
                                                 	
var self = this;
self.video = {imageVideoId:'',videoUrlOne:'',videoUrlTwo:'',videoUrlThree:''};

self.submit = submit;
var videoId = $scope.ctrlVideo.video.userId = $window.localStorage.getItem('userId');
function submit() {
	$('#createVideodiv').addClass('whirl');
    userVideo(self.video);
}
getUserVideoById();
function userVideo(video){
 ImageService.userVideo(video).then(
		 function(response) {
			 var video = response.data;
             toastr.success('User video save successfully.');
             //alert("User video save successfully.");
             $('#createVideodiv').removeClass('whirl');
             getUserVideoById();
             console.log("$scope.response.data :",response.data);
             $window.location.reload();
             self.video = response;
            },
		 function(errResponse){
            	$('#createVideodiv').removeClass('whirl');
            	 toastr.error('Error while update video user.');
                //alert("Error while update video user.")
	            }
			 );
       }
   
   /*
* fetch profile data function name 'getUserVideoById'
* */
   self.videodata = {};
   function getUserVideoById() {
	   //alert('hii');
	  $http.get("http://localhost:8080/A2zcinema/getUserVideoById/"+$scope.ctrlVideo.video.userId)
       // $http.get("http://a2zcinemaworld.com/getUserVideoById/"+$scope.ctrlVideo.video.userId)
		   .then(function(response) {
			   self.videodata = response.data;
		   }, function(errResponse) {
			   toastr.error('Error while fetching Users.');
		    //alert("Error while fetching Users.")
        });
   };
}]);