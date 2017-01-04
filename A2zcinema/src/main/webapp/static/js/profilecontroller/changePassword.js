'use strict';
angular.module('profileApp')
.controller('ChangePassController',['$scope','$window','$localStorage','$http',
function($scope, $window, $localStorage,$http) {	
	var self = this;
    self.passChange={password:'',newPassword:'',confirmNewPassword:''};
    $scope.ctrl.passChange.userId = $window.localStorage.getItem('userId');
    
    self.submit = submit;
	
	function submit() {
		//alert('hi calling...');
		changeUserPassword(self.passChange);
    	// console.log("JSON.stringify($scope.ctrl.passChange):",self.passChange);	
    }
    
    function changeUserPassword(passChange) {
    	$('#ChangePasswordFormdiv').addClass('whirl');
    	$http({
		    url: "http://localhost:8080/A2zcinema/changeUserPassword/",
		    dataType: "json",
		    method: "POST",
		    data: self.passChange,
		    headers: {
		        "Content-Type": "application/json; charset=utf-8"
		    }
		}).then(function(response){
		    $scope.response = response;
		    console.log("response data :",response.data);
		    /*if(response.data.isUserValid==='NotSame'){
		    	toastr.error('New password should be different from current password !');
		    }*/
		    
		    if(response.data.isUserValid==='Successfully'){
		    	toastr.success(response.data.errorMessege);	
		    	$("#password").val("");
		    	$("#newPassword").val("");
		    	$("#confirmNewPassword").val("");
			    $('#ChangePasswordFormdiv').removeClass('whirl');
			    $("#ChangePasswordModal").modal("hide");
			   // console.log("$scope.response.data :",$scope.response.data);
			   // console.log("response data :",response.data);
		    }else if(response.data.isUserValid==='InvalidOldPwd'){
		    	toastr.error(response.data.errorMessege);
		    	$('#ChangePasswordFormdiv').removeClass('whirl');
		    	//$("#ForgotPasswordModal").modal("hide");
		    }else{
		    	toastr.error(response.data.errorMessege);
		    	$('#ChangePasswordFormdiv').removeClass('whirl');
		    }
		},function(error){
			 $('#ChangePasswordFormdiv').removeClass('whirl');
			toastr.error('Error while change password.');
		    $scope.error = error;
		});
	     };
	     $scope.reset = function(){
	    	 $("#password").val("");
	    	 $("#newPassword").val("");
	    	 $("#confirmNewPassword").val("");
	    	 /*$scope.ctrl.passChange.password = "";
	    	 $scope.ctrl.passChange.newPassword = "";
	  		 $scope.ctrl.passChange.confirmNewPassword = "";*/
	     }
} ]);
