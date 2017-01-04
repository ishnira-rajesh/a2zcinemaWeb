'use strict';
angular.module('profileApp')
.controller('UploadUserPicController',['$scope','$window','$localStorage','$http', function($scope, $window, $localStorage, $http) {
  $scope.sizeLimit      = 10585760; // 10MB in Bytes
  $scope.uploadProgress = 0;
 // $scope.creds          = {};
  $scope.imageNames = {};
  
  var imageId = $scope.imageNames.userId = $window.localStorage.getItem('userId');
  
  $scope.uploadUserPic = function() {
	 /// alert('hiii calling ');
	  AWS.config.update({ accessKeyId: 'AKIAJWIIS5WB2CVKL2VA', secretAccessKey: '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' });
	   AWS.config.region = '';
	   var bucket = new AWS.S3({ params: { Bucket: 'a2zcinema-pics' } });
   // alert('image controller Flag1' + $scope.file);
    if($scope.file) {
    	  //alert('image controller Innerr'+bucket);
        // Perform File Size Check First
        var fileSize = Math.round(parseInt($scope.file.size));
        if (fileSize > $scope.sizeLimit) {
          toastr.error('Sorry, your attachment is too big. <br/> Maximum '  + $scope.fileSizeLabel() + ' file attachment allowed','File Too Large');
          return false;
        }
        // Prepend Unique String To Prevent Overwrites
        var uniqueFileName = $scope.imageNames.userPic = $scope.uniqueString() + '-' + $scope.file.name;
        
        var params = { Key: uniqueFileName, ContentType: $scope.file.type, Body: $scope.file, ServerSideEncryption: 'AES256' };
       
       // alert('image controller file name'+ $scope.imageName );
        console.log('image file name', uniqueFileName+' another console image '+ $scope.userPic);
        
        
        bucket.putObject(params, function(err, data) {
          if(err) {
            toastr.error(err.message,err.code);
            return false;
          }
          else {
        	 // console.log('JSON.stringify($scope.imageNames)',JSON.stringify($scope.imageNames));
        	$http.post("http://localhost:8080/A2zcinema/uploadUserPicFile/",JSON.stringify($scope.imageNames))
						.then(function(response) {
						  var getdata = response.data;
						//  console.log("data :",getdata);
						  $window.location.reload();
						    }, function(errResponse) {
						 console.error('Error while save User Pic.');
			});
            // Upload Successfully Finished
            toastr.success('User Pic Uploaded Successfully.');

            // Reset The Progress Bar
            setTimeout(function() {
              $scope.uploadProgress = 0;
              $scope.$digest();
            }, 4000);
          }
        })
        .on('httpUploadProgress',function(progress) {
          $scope.uploadProgress = Math.round(progress.loaded / progress.total * 100);
          $scope.$digest();
        });
      }
      else {
        // No File Selected
        toastr.error('Please select a file to upload');
      }
    
    }

    $scope.fileSizeLabel = function() {
    // Convert Bytes To MB
    return Math.round($scope.sizeLimit / 1024 / 1024) + 'MB';
  };

  $scope.uniqueString = function() {
    var text     = "";
    var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

    for( var i=0; i < 8; i++ ) {
      text += possible.charAt(Math.floor(Math.random() * possible.length));
    }
    return text;
  }

}]);
