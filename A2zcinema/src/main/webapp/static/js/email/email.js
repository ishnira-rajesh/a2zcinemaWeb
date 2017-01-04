'use strict';
angular.module('profileApp')
.controller('EmailController',['$scope','$window','$localStorage','$http',
function($scope, $window, $localStorage,$http) {	
	var self = this;
    self.emails={emailId:'', name:'', emailTo:'',emailFrom:'',subject:'',message:''}
    
    self.submit = submit;
    
    
    function saveSendEmail(emails) {
    	console.log("data dddf:",self.emails);
		$http.post("http://localhost:8080/A2zcinema/saveSendEmail/",self.emails)
			.then(function(response) {
					   var getdata = response.data;
					   console.log("data :",getdata);
					   toastr.success('Send email successfully.');
					   //alert("Send email successfully.");
					   
		     }, function(errResponse) {
				  console.error('Error while save email.');
		     });
		   // $window.location.reload();
	     };
	
	     function submit() {
        	saveSendEmail(self.emails)
 	    }
} ]);

'use strict';
angular.module('profileApp')
.controller('ContactEmailController',['$scope','$window','$localStorage','$http',
function($scope, $window, $localStorage,$http) {	
	var self = this;
    self.emails={emailId:'', name:'', emailTo:'',emailFrom:'',subject:'',message:'',mDataId:''}
    
    self.submit = submit;
    
    
    function saveContactEmail(emails) {
    	//console.log("data dddf:",self.emails);
		$http.post("http://localhost:8080/A2zcinema/saveContactEmail/",self.emails)
			.then(function(response) {
					   var getdata = response.data;
					   console.log("data :",getdata);
					   //alert("Send email successfully.");
					   $window.location.reload();
		     }, function(errResponse) {
				  console.error('Error while save email.');
		     });
		    toastr.success('Send email successfully.');
	     };
	
	     function submit() {
	    	 saveContactEmail(self.emails)
 	    }
} ]);
