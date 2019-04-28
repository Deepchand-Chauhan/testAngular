<script src="scripts/angular.js"></script>
<div ng-app="myModel">
   <div ng-controller="empControll">
      <table>
         <thead>
           <tr>
             <th>Name</th>
             <th>Age</th>
           </tr>
         </thead>
         <tbody>
         <tr ng-repeat="emp in emplo">
            <td>{{emp.name}}</td>
            <td>{{emp.age}}</td>
         </tr>
         </tbody>
      </table>
   </div>
   Hello This is Guest Page.
</div>

<script>
   var appp = angular.module("myModel",[]);
   appp.controller("empControll" , function($scope){
	   var emplo=[
		   {name:"deep",age:10},
		   {name:"chand",age:20},
		   {name:"chauhan",age:30}
		   ];
	   $scope.emplo = emplo;
   });

</script>