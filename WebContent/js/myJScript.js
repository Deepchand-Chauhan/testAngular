
function myfunction6(){
	carName="AUDI";
}
function validateForm(){
	var x=document.forms["inputValidation"]["validateNumber"].value;
	  if (isNaN(x) || x < 1 || x > 10) {
		    text = "Input not valid";
		  } else {
		    text = "Input OK";
		  }
		  document.getElementById("eror").innerHTML = text;
		  return false;
}

function valid1(){
	    
	var obj=document.getElementById('num');
	if(!obj.checkValidity()){
		document.getElementById('numValid').innerHTML=obj.validationMessage;
	}else
		{
		document.getElementById('numValid').innerHTML="Ok Fine";
		}
 }

var app=angular.module("myModule",[]);
app.controller("myCtrl1" , function($scope){
	  
	  $scope.message="";
});

app.controller("myController2",function($scope){
	  var employee={
			  firstName : "Deepchand",
			  lastName : "Chauhan",
			  gender : "Male"
	  };
	  $scope.employee=employee;
});
app.controller("myController3",function($scope){
	  var country={
			  name : "INDIA",
			  capital : "DELHI",
			  flag : "/images/ind-flag.gif"
	  };
	  $scope.country=country;
});
app.controller("myController4",function($scope){
	 
	 var employees=[
		 {firstName:"Deechand",lastName:"Chauhan",gender:"male",salary:14000},
		 {firstName:"DEEP",lastName:"Chauhan",gender:"male",salary:20000},
		 {firstName:"Krish",lastName:"Chauhan",gender:"male",salary:14000},
		 {firstName:"Rohan",lastName:"Chauhan",gender:"Female",salary:14000}
	 
	 ];
	 $scope.employees=employees;
	 $scope.sortColumn="firstName";
});

app.controller("myController5",function($scope){
	   var technologies=[
		   {name:"Java Technology",likes:0,dislikes:0},
		   {name:"Angular JS",likes:0,dislikes:0},
		   {name:"Java Script",likes:0,dislikes:0},
		   {name:"BootStrap",likes:0,dislikes:0}
	   ];
	 $scope.technologies=technologies; 
	 $scope.incrementLike = function (technology) {
		 technology.likes++;
	 }
	 $scope.incrementDislike = function (technology) {
		 technology.dislikes++;
	 }
	 
	 $scope.rowLimit=2;
});

app.controller("myController6", function($scope){
	   var persons=[
		   {name:"deep",age:23,dob:new Date("February 1, 1995"),gender:"male",city:"Noida",country1:"INDIA"},
		   {name:"chand",age:25,dob:new Date("February 10, 1985"),gender:"male",city:"Bengaluru",country1:"INDIA"},
		   {name:"Krish",age:30,dob:new Date("March 1, 1995"),gender:"male",city:"California",country1:"US"},
		   {name:"Rohan",age:35,dob:new Date("August 1, 1975"),gender:"male",city:"Delhi",country1:"INDIA"},
		   {name:"Kaju",age:45,dob:new Date("December 1, 1997"),gender:"female",city:"London",country1:"UK"}
	   ];
	  $scope.persons=persons;
	  $scope.sortColumn1="name";
	  $scope.reverseSort=false;
	  
	  $scope.sortData=function(column){
		  $scope.reverseSort=($scope.sortColumn1 == column)? !$scope.reverseSort : false;
		  $scope.sortColumn1=column;
	  }
	  $scope.getSortClass = function(column){
		  if($scope.sortColumn1 == column){
			  return $scope.reverseSort ? "arrow-down" : "arrow-up"
		  }
	  }
});

app.controller("showHideController" ,function($scope){
	  
	  var empColl=[
		  {name:"deep",gender:"male",salary:14000,country:"INDIA"},
		  {name:"chand",gender:"male",salary:15000,country:"US"},
		  {name:"chauhan",gender:"male",salary:16000,country:"UK"},
		  {name:"krish",gender:"male",salary:17000,country:"JAPAN"},
		  {name:"rohan",gender:"male",salary:18000,country:"US"}
		  
	  ];
	  $scope.empColl=empColl;
	  $scope.employeeView="employeeTable.jsp";
});

app.controller("processStringController",function($scope){
	
	 $scope.processString = function(input){
		 if(!input){
			 return input;
		 }
		 var output="";
		 for(var i=0;i<input.length;i++){
			 if(i>0 && input[i] == input[i].toUpperCase()){
				 output = output+" ";
			 }
			 output = output+input[i];
		 }
		 $scope.output = output;
	 }
});

app.controller("scrollTop",function($scope,$location,$anchorScroll){
	
	$scope.scrollTop = function (scrollLocation){
		$location.hash(scrollLocation);
		$anchorScroll.yOffset=30;
		$anchorScroll();
	}
});

app.controller("scrollBottom",function($scope,$location,$anchorScroll){
	
	$scope.scrollBottom = function (scrollLocation){
		$location.hash(scrollLocation);
		$anchorScroll.xOffset=200;
		$anchorScroll();
	}
});
























