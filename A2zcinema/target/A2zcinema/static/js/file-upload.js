'use strict';
angular.module('profileApp')
.directive('ngfiles',['$parse','$scope',function($parse,$scope){
	function fn_link(scope,element,attrs){
		var onChange = $parse(attrs.ngfiles);
		element.on('change',function(event){
			onChange
		})
	}
}])