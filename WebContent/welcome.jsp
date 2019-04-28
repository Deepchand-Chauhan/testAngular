<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s"   uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Anjular JS</title>
</head>
<body>
Welcome File Success...
<s:property value="bus"/>


<div ng-app="myApp"  class="ng-scope" >
     <div>
        <w3-test-directive></w3-test-directive>
     </div>
     <div>
		<form action="" name=myName>
			Enter Email :- <input type="email" name="myAddress"
				ng-model="address"> <span
				ng-show="myName.myAddress.$error.email">Please enter Correct
				Email address</span>
		</form>
	</div>
		<div ng-controller="">
			<p>Input something in the input box:</p>
			<p>
				Name: <input type="text" ng-model="firstName">
			</p>
			<p>You wrote: {{ firstName }}</p>
		</div>

		<div ng-init="names=['Jani','Hege','Kai']"> 
		<ul>
       <li ng-repeat="x in names">
          {{x}}
       </li>
       </ul>
       </div>
	   <div ng-controller="myCtrll">
			<button ng-click="myFunc()">Click Me!</button>
	   </div>
		<div ng-show="showMe">
			<h1>Menu:</h1>
			<div>Pizza</div>
			<div>Pasta</div>
			<div>Pesce</div>
		<div ng-controller="myCtrl3">
		<p>Looping with objects:</p>
		<ul>
			<li ng-repeat="x in namess | orderBy:'country'">{{ x.name + ', '
				+ x.country }}</li>
		</ul>
		</div>
			<div ng-controller="myCtrl4">
				<p>Type a letter in the input field:</p>
				<p>
					<input type="text" ng-model="test">
				</p>
				<ul>
					<li ng-repeat="x in nam | filter:test">{{ x }}</li>
				</ul>
			</div>
			
			<div ng-controller="myCtrl1">
			<table border="1" width="100%">
				<tr>
					<th ng-click="orderByMe('name')">Name</th>
					<th ng-click="orderByMe('country')">Country</th>
				</tr>
				<tr ng-repeat="x in names1 | orderBy:myOrderBy">

					<td ng-if="$odd" style="background-color: #f1f1f1">{{x.name}}</td>
					<td ng-if="$even">{{x.name}}</td>
					<td ng-if="$odd" style="background-color: #f1f1f1">{{x.country}}</td>
					<td ng-if="$even">{{x.country}}
				</tr>
			</table>
		</div>
	</div>
<!-- <script>
var app = angular.module("myApp", []);
app.directive("w3TestDirective", function() {
    return {
        template : "<h1>Made by a directive!</h1>"
    };
});
</script>
 -->

	<script>
		angular.module('myApp', []).controller('myCtrl3', function($scope) {
			$scope.namess = [ {
				name : 'Jani',
				country : 'Norway'
			}, {
				name : 'Carl',
				country : 'Sweden'
			}, {
				name : 'Margareth',
				country : 'England'
			}, {
				name : 'Hege',
				country : 'Norway'
			}, {
				name : 'Joe',
				country : 'Denmark'
			}, {
				name : 'Gustav',
				country : 'Sweden'
			}, {
				name : 'Birgit',
				country : 'Denmark'
			}, {
				name : 'Mary',
				country : 'England'
			}, {
				name : 'Kai',
				country : 'Norway'
			} ];
		});
	</script>

	<script>
		angular.module('myApp', []).controller(
				'myCtrl4',
				function($scope) {
					$scope.nam = [ 'Jani', 'Carl', 'Margareth', 'Hege', 'Joe',
							'Gustav', 'Birgit', 'Mary', 'Kai' ];
				});
	
		
	</script>

	<script>
		angular.module('myApp', []).controller('myCtrl1', function($scope) {
			$scope.names1 = [ {
				name : 'Jani',
				country : 'Norway'
			}, {
				name : 'Carl',
				country : 'Sweden'
			}, {
				name : 'Margareth',
				country : 'England'
			}, {
				name : 'Hege',
				country : 'Norway'
			}, {
				name : 'Joe',
				country : 'Denmark'
			}, {
				name : 'Gustav',
				country : 'Sweden'
			}, {
				name : 'Birgit',
				country : 'Denmark'
			}, {
				name : 'Mary',
				country : 'England'
			}, {
				name : 'Kai',
				country : 'Norway'
			} ];
			$scope.orderByMe = function(x) {
				$scope.myOrderBy = x;
			}
		});
	</script>

	<script>
		var app = angular.module('myApp', []);
		app.controller('myCtrll', function($scope) {
			$scope.showMe = false;
			$scope.myFunc = function() {
				$scope.showMe = !$scope.showMe;
			}
		});
	</script>


</body>
</html>