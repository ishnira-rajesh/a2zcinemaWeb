'use strict';
angular.module('profileApp')
.controller('UserRegisterController', ['$scope', '$window', 'HomeService', '$localStorage', function($scope, $window, HomeService, $localStorage) {
	//alert("hi UserRegisterController .....");
	var self = this;
    self.userdetails={userId:null,firstName:'',lastName:'', mobile:'', professionCat:'', actorType:'', backSupportTeam:'',
    		regAgency:'', userName:'',email:'',password:'',rePassword:'',signupId:''}
    
	 function userSave(userdetails){
		 HomeService.userSave(userdetails)
		     .then(
	    		 function(response) {
	    			 console.log("userSave data:",response.data);
	    			 var uresdata = response.data;
	    			 
	    			 $window.localStorage.setItem('userId', uresdata.userId);
	    			 $window.localStorage.setItem('mobile', uresdata.mobile);
	    			 $window.localStorage.setItem('email', uresdata.email);
	    			 
	    			 console.log("uresdata :",uresdata.professionCat);
	    			 
			        if(uresdata.professionCat==='actors'){
			        	$window.location.href = 'actorProfile';
			        	$window.localStorage.setItem('sessionMenuId',1);
			        	$window.localStorage.setItem('loginAsId',1);
                    }else if(uresdata.professionCat==='backSupports'){
                    	$window.location.href = 'backSupportProfile';
                    	$window.localStorage.setItem('sessionMenuId',1);
                    	 $window.localStorage.setItem('loginAsId',2);
                    }else if(uresdata.professionCat==='regAgencys'){
                    	$window.location.href = 'agencyProfile';
                    	$window.localStorage.setItem('sessionMenuId',1);
                    	$window.localStorage.setItem('loginAsId',3);
                    }else{
                    	$window.location.href = 'index';
                    }
			        $('#regFormdiv').removeClass('whirl');
	                 self.userdetails = response;
	             },
	    		 function(errResponse){
		                console.error('Error while save and register user!');
		            }
				 );
	      }

	 $scope.ctrlUser = {};
	 $scope.ctrlUser.userdetails = {};
	 
	 $scope.regitration = function(){
		
		 $scope.ctrlUser.userdetails.signupId = '3';
		 $scope.ctrlUser.userdetails.professionCat = $("#profession").val();
		 if($scope.ctrlUser.userdetails.professionCat=='actors'){
			 $scope.ctrlUser.userdetails.actorType = $("#actorType").val();
			 $scope.ctrlUser.userdetails.backSupportTeam = '';
			 $scope.ctrlUser.userdetails.regAgency = '';
		 }else if($scope.ctrlUser.userdetails.professionCat=='backSupports'){
			 $scope.ctrlUser.userdetails.backSupportTeam = $("#backSupportTeam").val();
			 $scope.ctrlUser.userdetails.actorType = '';
			 $scope.ctrlUser.userdetails.regAgency = '';
		 }else if($scope.ctrlUser.userdetails.professionCat=='regAgencys'){
			 $scope.ctrlUser.userdetails.regAgency = $("#regAgency").val();
			 $scope.ctrlUser.userdetails.actorType = '';
			 $scope.ctrlUser.userdetails.backSupportTeam = '';
		 }
		 //alert($scope.ctrlUser.userdetails.signupId)
		 $('#regFormdiv').addClass('whirl');
		 userSave(JSON.stringify($scope.ctrlUser.userdetails));
		 
	    }
}]);

angular.module('profileApp').controller('LoginController', ['$scope', '$window', 'HomeService', '$localStorage', function($scope, $window, HomeService, $localStorage) {
	//alert("hi userLogin .....");
	var self = this;
    self.ulogin={userName:'',password:''}
    self.submit = submit;
    
 
	 function userLogin(ulogin){
		 console.log('userLogin execute ',self.ulogin);
		 HomeService.userLogin(ulogin)
		     .then(
	    		 function(response) {
	    			 console.log('userLogin success data ',response.data); 
	    			 var data = response.data;
	    			 
	    			 $window.localStorage.setItem('userId', data.userId);
	    			 $window.localStorage.setItem('mobile', data.mobile);
	    			 $window.localStorage.setItem('email', data.email);
	    			 
	    			 console.log('data.isUserValid:',data.isUserValid); 
	    			 
	    			 console.log('errorMessege:',data.errorMessege);
	    			 
	    			 if(data.isUserValid==='true') {
	    				 if(data.userRole==='ROLE_USER') {
	    					 if(data.professionCat==='actors'){
				    				$window.location.href = 'actorProfile';
				    				$window.localStorage.setItem('sessionMenuId',1);
				    				$window.localStorage.setItem('loginAsId',1);
			                    }else if(data.professionCat==='backSupports'){
			                    	$window.localStorage.setItem('sessionMenuId',1);
			                    	$window.location.href = 'backSupportProfile';
			                    	$window.localStorage.setItem('loginAsId',2);
			                    }else if(data.professionCat==='regAgencys'){
			                    	$window.localStorage.setItem('sessionMenuId',1);
			                    	$window.location.href = 'agencyProfile';
			                    	$window.localStorage.setItem('loginAsId',3);
			                    }
	    				    }else if(data.userRole==='ROLE_ADMIN'){
	    					    $window.localStorage.setItem('sessionMenuId',1);
		    					$window.location.href = 'adminDashboard';
		    					$window.localStorage.setItem('loginAsId',4);
	    				    }
	    				 $('#loginformdiv').removeClass('whirl');
	    				 $("#LoginModal").modal("hide");
	    			 }else if(data.isUserValid==='false'){
	    				    toastr.error(data.errorMessege);	
	    				    //console.log('errorMessege:',data.errorMessege);
		    				//$window.location.href = 'index';
			    			//console.log('User Login error :',data.errorMessege); 
			    			$('#loginformdiv').removeClass('whirl');
			    	 }else{
			    		    toastr.error(data.errorMessege);	
		    				$window.location.href = 'index';
			    			console.log('Some thing went problem at the of login:',data.errorMessege); 
			    	    }
	    			 /*else if(data.isUserValid==='false'){
	    			 
	    			 }else{
		    				$window.location.href = 'index';
			    			console.log('User Login error :',data.errorMessege); 
			    	    }*/
	    			 
	    			/*if(data.userRole==='ROLE_USER') {
		    			if(data.isUserValid==='true') {
		    			    if(data.professionCat==='actors'){
		    			    	$('#loginformdiv').removeClass('whirl');
			    				$window.location.href = 'actorProfile';
			    				$window.localStorage.setItem('sessionMenuId',1);
			    				$window.localStorage.setItem('loginAsId',1);
		                    }else if(data.professionCat==='backSupports'){
		                    	$('#loginformdiv').removeClass('whirl');
		                    	$window.localStorage.setItem('sessionMenuId',1);
		                    	$window.location.href = 'backSupportProfile';
		                    	$window.localStorage.setItem('loginAsId',2);
		                    }else if(data.professionCat==='regAgencys'){
		                    	$('#loginformdiv').removeClass('whirl');
		                    	$window.localStorage.setItem('sessionMenuId',1);
		                    	$window.location.href = 'agencyProfile';
		                    	$window.localStorage.setItem('loginAsId',3);
		                    }else{
		                    	$window.location.href = 'index';
		                    }
		    			}else{
		    				$scope.errorMessege = data.errorMessege;
		    				console.log('User Login error :',data.errorMessege); 
		    			}
	    			}else if(data.userRole==='ROLE_ADMIN'){
	    				if(data.isUserValid==='true') {
	    					$window.localStorage.setItem('sessionMenuId',1);
	    					$window.location.href = 'adminDashboard';
	    					$window.localStorage.setItem('loginAsId',4);
	    				 }else{
		    				$scope.errorMessege = data.errorMessege;
		    				console.log('User Login error :',data.errorMessege); 
			    		 }
	    			}else{
	    				$window.location.href = 'index';
		    			console.log('User Login error :',data.errorMessege); 
		    			}*/	
	                 self.ulogin = response;
	             },
	    		 function(errResponse){
		                console.error('Error while login user!');
		            }
				 );
	      }
	    function submit() {
            //console.log('Saving userLogin New User', self.ulogin);
	    	//$("#LoginModal").modal("hide");
            userLogin(self.ulogin);
            $('#loginformdiv').addClass('whirl');
	    }
}]);