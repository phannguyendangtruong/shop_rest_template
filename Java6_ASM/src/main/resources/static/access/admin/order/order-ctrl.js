app.controller("order-ctrl",function($scope, $http){
    $scope.items =[];
   
    $scope.items2 = [];

    $scope.abc = [];

    $scope.initialize = function(){
        //load product
        $http.get("/rest/orders").then(resp=>{
            $scope.items = resp.data;
            $scope.items.forEach(item =>{
                item.createDate = new Date(item.createDate);
            })
           
              
        })
        $http.get("/rest/orders/confirm").then(resp=>{
            $scope.items2 = resp.data;
            $scope.items2.forEach(item =>{
                item.createDate = new Date(item.createDate);
            })
            console.log("---------------");
            console.log(resp.data);
        })
      
    }
    // khởi đầu
    $scope.initialize();


    $scope.confirm = function(item){
        $http.put(`/rest/orders/${item.id}`).then(resp =>{
            let index = $scope.items.findIndex(p => p.id == item.id);
            $scope.items.splice(index, 1) ;
            $http.get("/rest/orders/confirm").then(resp=>{
                $scope.items2 = resp.data;
                $scope.items2.forEach(item =>{
                    item.createDate = new Date(item.createDate);
                })                  
            })
            alert("Duyệt thành công");
        }).catch(error=>{
            console.log(error);
            alert("Cập nhật hóa đơn thất bại");
        })
    }

   

    $scope.details = function(id){
        $http.get("/rest/orders/detail/"+id).then(resp=>{
            $scope.abc = angular.copy(resp.data);
            // $scope.details.forEach(detail =>{
            //     detail.createDate = new Date(detail.createDate);
            // })    
            console.log("hhii");
            console.log($scope.abc);
            location.href="/access/admin/index.html#!/detail";
        })
       
    }
    $scope.cancel = function(item){
        $http.delete(`/rest/orders/${item.id}`, item).then(resp =>{
           let index = $scope.items.findIndex(p => p.id == item.id);
           $scope.items.splice(index, 1) ;
        }).catch(error=>{
            console.log(error);
            alert("Xóa sản phẩm thất bại");
        })
    }

});