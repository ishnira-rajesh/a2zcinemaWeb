'use strict';

angular.module('profileApp').factory('ProfileService', ['$http', '$q', function($http, $q){
	//alert("ProfileService hii")
    var REST_SERVICE_URI = 'http://localhost:8080/A2zcinema/profile/';
    var REST_SERVICE_URI_PHY = 'http://localhost:8080/A2zcinema/physicalDetails/';
    var REST_SERVICE_URI_ADDRESS = 'http://localhost:8080/A2zcinema/userAddress/';
    var REST_SERVICE_URI_PROEXPDETS = 'http://localhost:8080/A2zcinema/userProExp/';

    var factory = {
    	userProfilePersonalInfo: userProfilePersonalInfo,
    	userPhysicalDetails : userPhysicalDetails,
    	userAddressDetails : userAddressDetails,
    	userProfessinalExpDetails : userProfessinalExpDetails
    };
    
    return factory;

  function userProfilePersonalInfo(profile) {
	  console.log("userProfilePersonalInfo final"+profile);
        return $http.post(REST_SERVICE_URI, profile)
    }
  
  function userPhysicalDetails(phydetails) {
	  console.log("userPhysicalDetails final"+phydetails);
        return $http.post(REST_SERVICE_URI_PHY, phydetails)
    }
  
  function userAddressDetails(addressdetails) {
	  console.log("userAddressDetails final"+addressdetails);
       return $http.post(REST_SERVICE_URI_ADDRESS, addressdetails)
    }
  
  function userProfessinalExpDetails(proExpdetails) {
	  console.log("userProfessinalExpDetails final"+proExpdetails);
	  return $http.post(REST_SERVICE_URI_PROEXPDETS, proExpdetails)
    }
  
}]);
