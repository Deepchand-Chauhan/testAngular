var myApp = angular.module("myApp",["ngRoute"]);

myApp.service('hexafy',function(){
	this.myFun=function(x){
		return x.toString(16);
	}
});

myApp.controller("time",function($scope,$interval){
	$scope.times=new Date().toLocaleTimeString();
	$interval(function(){
		$scope.times = new Date().toLocaleTimeString();
	},1000);
});
myApp.controller("hexa",function($scope,hexafy){
	$scope.hexValue=hexafy.myFun(255);
});

 myApp.config(function($routeProvider){
	 $routeProvider
	   .when("/home",{
		   templateUrl:"template/home.jsp",
		   controller:"homeController"
	   })
	     .when("/course",{
		   templateUrl:"template/course.jsp",
		   controller:"courseController"
	   })
	     .when("/student",{
		   templateUrl:"template/student.jsp",
		   controller:"studentController"
	   })
	
 })
 .controller("homeController",function($scope){
	 $scope.home="Home Page";
 })
  .controller("courseController",function($scope){
	 $scope.course="Courses";
 })
  .controller("studentController",function($scope ,$http){
	  $http.get("stdList.action").then(function (response){
		  $scope.students = response.data;
	  })
	 $scope.student="Student List";
 });
 
 
 myApp.controller("headerController",function($scope){
	 $scope.header="header.jsp";
 });
 
 myApp.controller("footerController",function($scope){
	 $scope.footer="footer.jsp";
 });
 
 myApp.controller("actionController1",function($scope,$http){
	$http.get("helloAngular.action").then(function(responseText){
/*		alert(responseText.data.fruit);
	$scope.result=" Fruit Name = "+responseText.data.fruit+" Size = "+responseText.data.size+" Color= "+responseText.data.color;*/
	
		alert("Angular Response - "+responseText.data);
	
	}); 
	$scope.getResult= function(){
		alert("click On");
		$http.get("getResult.action").then(function(responseText){
			alert("result "+responseText.data);
		});
	}

 });
 