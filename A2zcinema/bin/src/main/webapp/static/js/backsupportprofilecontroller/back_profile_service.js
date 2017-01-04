'use strict';

angular.module('profileApp').factory('BackProfileService', ['$http', '$q', function($http, $q){
	//alert("ProfileService hii")
    var REST_SERVICE_URI_BACK = 'http://localhost:8080/A2zcinema/profile/';
    var REST_SERVICE_URI_BACKPROEXPDETS = 'http://localhost:8080/A2zcinema/userProExp/';
    var REST_SERVICE_URI_BACKADDRESS = 'http://localhost:8080/A2zcinema/userAddress/';

    var factory = {
    	userBackProfilePersonalInfo: userBackProfilePersonalInfo,
    	userBackProfessinalExpDetails : userBackProfessinalExpDetails,
    	userBackAddressDetails : userBackAddressDetails
    };
    
    return factory;

  function userBackProfilePersonalInfo(profile) {
	  console.log("userBackProfilePersonalInfo final"+profile);
       return $http.post(REST_SERVICE_URI_BACK, profile)
    }
  
  function userBackProfessinalExpDetails(proExpdetails) {
	  console.log("userBackProfessinalExpDetails final"+proExpdetails);
        return $http.post(REST_SERVICE_URI_BACKPROEXPDETS, proExpdetails)
    }
  
  function userBackAddressDetails(addressdetails) {
	  console.log("userBackAddressDetails final"+addressdetails);
        return $http.post(REST_SERVICE_URI_BACKADDRESS, addressdetails)
    }
  
  
}]);
