'use strict';
angular.module('profileApp')
.controller('ForgotPassController',['$scope','$window','$localStorage','$http',
function($scope, $window, $localStorage,$http) {	
	var self = this;
    self.fpEmail={email:''};
    
    self.submit = submit;
	
	function submit() {
		//alert('hi calling...');
    	forgotPasswordSend(self.fpEmail);
    	 //console.log("JSON.stringify($scope.ctrl.fpEmail):",self.fpEmail);	
    }
    
    function forgotPasswordSend(fpEmail) {
    	$('#ForgotPasswordFormdiv').addClass('whirl');
    	$http({
		    url: "http://localhost:8080/A2zcinema/sendpwdemail/",
		    dataType: "json",
		    method: "POST",
		    data: self.fpEmail,
		    headers: {
		        "Content-Type": "application/json; charset=utf-8"
		    }
		}).then(function(response){
		    $scope.response = response;
		    //console.log("response data :",response.data);
		    if(response.data.isUserValid==='true'){
		    	toastr.success('Register E-mail Id.',"Your Password is sent to your");	
			    $('#ForgotPasswordFormdiv').removeClass('whirl');
			    $("#ForgotPasswordModal").modal("hide");
			   // console.log("$scope.response.data :",$scope.response.data);
			   // console.log("response data :",response.data);
		    }else if(response.data.isUserValid==='false'){
		    	toastr.error(response.data.errorMessege);
		    	$('#ForgotPasswordFormdiv').removeClass('whirl');
		    	//$("#ForgotPasswordModal").modal("hide");
		    }else{
		    	toastr.error(response.data.errorMessege);
		    	$('#ForgotPasswordFormdiv').removeClass('whirl');
		    }
		    //$window.location.reload();  
		},function(error){
			 $('#ForgotPasswordFormdiv').removeClass('whirl');
			toastr.error('Error while send forgot password email.');
		    $scope.error = error;
		});
    	//$window.location.reload();  
	     };
} ]);
