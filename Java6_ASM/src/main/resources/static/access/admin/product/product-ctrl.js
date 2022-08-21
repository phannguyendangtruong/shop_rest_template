app.controller("product-ctrl",function($scope, $http){
    $scope.items =[];
    $scope.form = {
        createDate : new Date(),
        image:'../images/download.jpg',
        available : true,
    };
    $scope.cates =[];

    $scope.initialize = function(){
        //load product
        $http.get("/rest/products").then(resp=>{
            $scope.items = resp.data;
            $scope.items.forEach(item =>{
                item.createDate = new Date(item.createDate);
            })
               //load category
            $http.get("/rest/categories").then(resp=>{
                $scope.cates = resp.data;
            })
        })
      
    }
    // khởi đầu
    $scope.initialize();

    // xóa form
    $scope.reset = function(){
        $scope.form = {
            createDate : new Date(),
            image:'../images/download.jpg',
            available : true,
        };
    }


    // hien thi len form
    $scope.edit = function(item){
        $scope.form = angular.copy(item);
        $(".nav-tabs nav-link:eq(0)").tab('show')
    }

    //them san pham moi
    $scope.create = function(){
        var item = angular.copy($scope.form);
        $http.post(`/rest/products`, item).then(resp =>{
            resp.data.createDate = new Date(resp.data.createDate)
            $scope.items.push(resp.data);
            $scope.reset();
            alert("Thêm mới sản phẩm thành công");
        }).catch(error=>{
            console.log(error);
            alert("Thêm sản phẩm thất bại");
        })
    }

    //cap nhat san pham
    $scope.update = function(){
        var item = angular.copy($scope.form);
        $http.put(`/rest/products/${item.id}`, item).then(resp =>{
           var index = $scope.items.findIndex(p => p.id == item.id);
           $scope.items[index] = item;
            alert("Cập nhật sản phẩm thành công");
        }).catch(error=>{
            console.log(error);
            alert("Cập nhật sản phẩm thất bại");
        })
    }

    //xoa san pham
    $scope.delete = function(item){
        var item = angular.copy($scope.form);
        $http.delete(`/rest/products/${item.id}`, item).then(resp =>{
           var index = $scope.items.findIndex(p => p.id == item.id);
           $scope.items.splice(index, 1) ;
           $scope.reset();
            alert("Xóa sản phẩm thành công");
        }).catch(error=>{
            console.log(error);
            alert("Xóa sản phẩm thất bại");
        })
    }

    //upload
    $scope.imageChanged = function(files){
        let data = new FormData();
        data.append('file',files[0]);
        $http.post('/rest/upload/images',data,{
            transformRequest: angular.identity,
            header:{'Content-Type': undefined}
        }).then( resp=>{
            $scope.form.image = rest.data.name;
        }).catch(error =>{
            alert("Lỗi upload hình ảnh");
            console.log(error);
        })
    }

    $scope.pager = {
        page : 0,
        size : 5,
        get items(){
            let start = this.page * this.size;
            return $scope.items.slice(start, start + this.size);
        },
        get count(){
            return Math.ceil(1.0 * $scope.items.length / this.size);
        },

        first(){
            this.page = 0;
        },
        next(){
            this.page +=1;
            if(this.page >=this.count){
                this.first();
            }
        },
        last(){
            this.page = this.count-1;
        },
        prev(){
            this.page--;
            if(this.page <0){
                this.last();
            }
        }
    }
});