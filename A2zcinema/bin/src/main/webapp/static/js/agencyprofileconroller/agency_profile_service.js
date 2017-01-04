'use strict';

angular.module('profileApp').factory('AgencyProfileService', ['$http', '$q', function($http, $q){
	//alert("ProfileService hii")
    var REST_SERVICE_APINFO = 'http://localhost:8080/A2zcinema/agencyprofileinfo/';
    var REST_SERVICE_URI_AGNPROEXPDETS = 'http://localhost:8080/A2zcinema/userProExp/';
    var REST_SERVICE_URI_AGNADDRESS = 'http://localhost:8080/A2zcinema/userAddress/';

    var factory = {
        userAgencyProfilePersonalInfo: userAgencyProfilePersonalInfo,
        agnProfessinalExpDetails : agnProfessinalExpDetails,
        userAgnAddressDetails : userAgnAddressDetails
    };
    
    return factory;

  function userAgencyProfilePersonalInfo(agencyProDetails) {
	  console.log("userProfilePersonalInfo final"+agencyProDetails);
        return $http.post(REST_SERVICE_APINFO, agencyProDetails)
    }
  
  function agnProfessinalExpDetails(proExpdetails) {
	  console.log("agnProfessinalExpDetails final"+proExpdetails);
        var deferred = $q.defer();
        return $http.post(REST_SERVICE_URI_AGNPROEXPDETS, proExpdetails)
    }
  
  function userAgnAddressDetails(addressdetails) {
	  console.log("userAgnAddressDetails final"+addressdetails);
        return $http.post(REST_SERVICE_URI_AGNADDRESS, addressdetails)
    }
  
}]);
