app = angular.module("admin-app",["ngRoute"]);

app.config(function($routeProvider){
    
    $routeProvider
    .when("/product",{
        templateUrl:"../admin/product/index.html",
        controller:"product-ctrl"
    })
    .when("/authorize",{
        templateUrl:"../admin/authority/index.html",
        controller:"authority-ctrl",
    })
    .when("/unauthorized",{
        templateUrl:"../admin/authority/unauthorized.html",
        controller:"authority-ctrl"
    })
    .when("/order",{
        templateUrl:"../admin/order/order.html",
        controller:"order-ctrl"
    })
    .when("/detail",{
        templateUrl:"../admin/order/orderdetails.html",
        controller:"order-ctrl"
    })
    .otherwise({
        template: "<h1 class='text-center'></h1>"
    })

})