app.controller("orderdetails-ctrl",function($scope, $http){
    $scope.detail = [];
console.log("hi");
    $scope.details = function(){
        $scope.detail = localStorage.getItem('detail');       
    }
    $scope.details();
});