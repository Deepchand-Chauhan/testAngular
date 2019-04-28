var app=angular.module("myApp11",[]);
app.controller("controller1",function($scope,$http,$log){
	$scope.a=10;
	$scope.b=50;
	$scope.doSum=function(){
		//$scope.sum=parseInt($scope.a)+parseInt($scope.b);
		$http({
			url: 'http://localhost:4445/Sum?a='+$scope.a+'&b='+$scope.b,
			methd:'GET'	
		}).then(function(response){
			$log.log(response.data);
			$scope.sum=response.data;
		}),function(error){
			alert("Error !!!!");
		}
	};
});

app.controller("controller2",function($scope){
	$scope.msg="This is a new Message";
});
app.directive("myInfoMsg",function(){
	return {
		template : "<strong>{{msg}}</strong>"
	};
});

app.controller("controller3", function(){
	
});

app.directive("message", function(){
	return {
		compile:function(tElement,tAttribute){
			console.log(tAttribute.text +"-- Compile");
			   return{
			    	  pre:function(scope,iElement,iAttribute){
			    		  console.log(iAttribute.text +"-- In Pre");
			    	  },
			    	  post:function(scope,iElement,iAttribute){
			    		  console.log(iAttribute.text +"--- In Post");
			    	  },
			     };
		 },
	controller: function($scope,$element,$attrs){
		console.log($attrs.text +"--- In Controller");
	}
  }
});
