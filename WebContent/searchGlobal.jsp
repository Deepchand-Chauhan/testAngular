<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@  taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Global JSON Test</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
</head>

<body>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<s:form action="hello">
<s:textfield key="lang" label="Enter the Language"></s:textfield>
<s:submit></s:submit>
</s:form>


<!-- JSON Example -->


<h2>Store and retrieve data from local storage.</h2>

<p id="demo"></p>

<script>
var myObj, myJSON, text, obj;

// Storing data:
myObj = { name: "Deep", age: 31, city: "Noida" };
myJSON = JSON.stringify(myObj);
localStorage.setItem("testJSON", myJSON);

// Retrieving data:
text = localStorage.getItem("testJSON");
obj = JSON.parse(text);
document.getElementById("demo").innerHTML = obj.name;
</script>

<h4>JSON to Object Conversion</h4>
<p id="demo1"></p>
<script>
   
   var json,obj;
   json='{"name":"Deepchand", "country":"India"}';
   obj = JSON.parse(json);
   document.getElementById("demo1").innerHTML=obj.country;
   

</script>

<h2>Convert a string written in JSON format, into a JavaScript object.</h2>

<p id="demo3"></p>

<script>
var myJSON = '{"name":"John", "age":31, "city":"New York"}';
var myObj = JSON.parse(myJSON);
document.getElementById("demo3").innerHTML = myObj.city;
</script>


<!--  JSOn DEMo from Text File-->

<p>The content is written in JSON format, and can easily be converted into a JavaScript object.</p>

<p id="dem4"></p>

<script>
var xmlhttp = new XMLHttpRequest();
xmlhttp.onreadystatechange = function() {
  if (this.readyState == 4 && this.status == 200) {
    var myObj = JSON.parse(this.responseText);
    document.getElementById("demo4").innerHTML = myObj.name;
  }
};
xmlhttp.open("GET", "json_demo1.txt", true);
xmlhttp.send();
</script>


<p id="demo5"></p>
<script type="text/javascript">
   var obj={name:"deepchand",age:"23",country:"india"};
   for(x in obj){
	   document.getElementById('demo5').innerHTML += x+" = "+ obj[x]+ "<br>";
   }

</script>


<!-- Example of Nested Loops -->
<p id="carModel"></p>

<script>
var myObj, i, j, x = "";
myObj = {
  "name":"John",
  "age":30,
  "cars": [
    {"name":"Ford", "models":["Fiesta", "Focus", "Mustang"]},
    {"name":"BMW", "models":["320", "X3", "X5"]},
    {"name":"Fiat", "models":["500", "Panda"] }
  ]
}
for (i in myObj.cars) {
  x += "<h2>" + myObj.cars[i].name + "</h2>";
  for (j in myObj.cars[i].models) {
    x += myObj.cars[i].models[j] + "<br>";
  }
}
document.getElementById("carModel").innerHTML = x;
</script>




<h2 id="01">Hello World!</h2>
<h2 id="02">Hello Sweden!</h2>
<h2 id="03">Hello Japan!</h2>
<h2 id="04">Hello India!</h2>

<p id="jQry"></p>

<script>
$(document).ready(function() {
  var myElement = $("#04");
  var myText = myElement.text();
  $("#jQry").text(myText); 
});
</script>


<!-- 
<div ng-app="" ng-init="myCol='lightblue'">


<input type="text" ng-model="a">
<p>You write here :{{a}}</p>


</div> -->

<!-- Anjular JS Module -->
<div ng-app="myApp" ng-controller="myCtrl" ng-init="myCol='lightblue'">
{{ firstN + " " + lastN }}
<!-- new Model here  -->
<input type="text" ng-model="a">
<p>You write here :{{a}}</p>
<!--  new Model ghere for input as Color Name  -->
<input style="background-color:{{myCol}}" ng-model="myCol">
</div>

<script>
var app = angular.module("myApp", []);
app.controller("myCtrl", function($scope) {
    $scope.firstN = "Deepchand";
    $scope.lastN = "Chauhan";
});
</script>





</body>
</html>