var bookmymove = angular.module('bookmymove',[
	'ngRoute',
	'templates'
	]);

bookmymove.config(['$routeProvider', function($routeProvider){
	$routeProvider
	.when('/',{
		templateUrl: 'index.html',
		controller: 'indexCtrl'
	})
}]);

bookmymove.controller('indexCtrl', ['$scope', function($scope){

}]);