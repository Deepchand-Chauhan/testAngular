<%@ taglib uri="/struts-tags" prefix="htm" %>
<script src="scripts/angular.js"></script>
<script src="js/myJScript.js"></script>
 <link rel="stylesheet" type="text/css" href="styles/myCss.css">  
<!-- <script src="script/angular.min.js"></script> -->

<div ng-app="myModule">

   <div ng-controller="myCtrl1">
     Enter Name:-<input type="text"  ng-model="message"/>
     Result -> {{message}}
   </div>
   
   <div ng-controller="myController2">
     <div>
      FirstName -:{{employee.firstName}}
     </div>
     <div>
      LastName -:{{employee.lastName}}
      </div>
      <div>
      Gender-:{{employee.gender}}
      </div>
   </div>
   
   <div ng-controller="myController3">
      <div>
        Country {{country.name}}
      </div> 
      <div>
      Captal :-{{country.capital}}
      </div>
      <div>
          <img ng-src="{{country.flag}}" alt="{{country.name+' Flag'}}" style="height:100px; width:100px"/>
      </div>
   </div>
   </br></br>
   <div ng-controller="myController4">
     Sort By - <select ng-model="sortColumn">
                   <option value="firstName">FirstName ASC</option>
                   <option value="lastName">LastName ASC</option>
                   <option value="gender">Gender</option>
                   <option value="-salary">Salary DESC</option>
              </select>
   
      <table border=1>
          <thead style="font:solid">
            <tr>
                <td>Sr No.</td>
                <td>First Name</td>
                <td>Last Name</td>
                <td> Gender</td>
                <td> Salary</td>
            </tr>
          </thead>
          <tbody>
            <tr  ng-repeat="employee in employees | orderBy:sortColumn">
	            <td>{{ $index }}</td>
	            <td>{{employee.firstName | uppercase}}</td>
	            <td>{{employee.lastName | uppercase}}</td>
	            <td>{{employee.gender | lowercase}}</td>
	            <td>{{employee.salary | number}}</td>
            </tr>
          </tbody>
      </table>
   </div>
   </br></br>
   <div ng-controller="myController5">
     No Of Row - <input type="number" step="1" min="0" max="4"  ng-model="rowLimit">
      <table border=1>
         <thead>
            <tr>
            <td>Sr No.</td>
            <td>Technology</td>
            <td>Like</td>
            <td>DisLike</td>
            <td>Actions</td>
            </tr>
         </thead>
         <tbody>
           <tr ng-repeat="technology in technologies | limitTo:rowLimit">
              <td>{{ $index }}</td>
              <td>{{technology.name | uppercase}}</td>
              <td>{{technology.likes}}</td>
              <td>{{technology.dislikes}}</td>
              <td>
                 <input type="button" value="Like" ng-click="incrementLike(technology)"/>
                 <input type="button" value="Dislike" ng-click="incrementDislike(technology)"/>
              </td>
           </tr>
         </tbody>
      </table>
   </div>
   </br></br>
   
   <div ng-controller="myController6">
     Search:<input type="text" placehlder="Search " ng-model="searchTxt"/>
        <br/><br/>
      <table border=1>
        <thead>
           <tr>
                <th ng-click="sortData('name')">Name<div ng-class="getSortClass('name')"></div></th>
                <th ng-click="sortData('age')">Age<div ng-class="getSortClass('age')"></div></th>
                <th ng-click="sortData('dob')">Date Of Birth<div ng-class="getSortClass('dob')"></div></th>
                <th ng-click="sortData('gender')">Gender<div ng-class="getSortClass=('gender')"></div></th>
                <th ng-click="sortData('city')">City<div ng-class="getSortClass=('city')"></div></th>
                <th ng-click="sortData('country1')">Country<div ng-class="getSortClass('country1')"></div></th>
           </tr>
        </thead>
        <tbody>
         <tr ng-repeat="person in persons | orderBy:sortColumn1 | filter:searchTxt">
             <td>{{person.name}}</td>
             <td>{{person.age}}</td>
             <td>{{person.dob | date:dd/MM/yyyy}}</td>
             <td>{{person.gender}}</td>
             <td>{{person.city}}</td>
             <td>{{person.country1}}</td>
         </tr>
        </tbody>
      </table>
   </div>
   
   <div ng-controller="showHideController">
   <input type="checkbox" ng-model="checkSalary" />Show Salary
      <table>
         <thead>
           <tr>
             <th>Name</th>
             <th>Gender</th>
             <th ng-hide="checkSalary">Salary1</th>
             <th ng-show="checkSalary">Salary2</th>
             <th>Country</th>
           </tr> 
         </thead>
         <tbody>
         <tr ng-repeat="emp in empColl">
           <td>{{emp.name}}</td>
           <td>{{emp.gender}}</td>
           <td ng-hide="checkSalary">{{emp.salary}}</td>
           <td ng-show="checkSalary">@@@@@</td>
           <td>{{emp.country}}</td>
         </tr>
         </tbody>
      </table>
         <div ng-include="'employeeTable.jsp'"></div>
   </div>
   
   <div ng-controller="processStringController">
      <table>
         <tr>
             <td>Input String :</td>
             <td><input type="text" ng-model="input" /></td>
         </tr>
         <tr>
            <td> Result :</td><td><input type="text" ng-model="output" /></td>
         </tr>
         <tr>
          <td><a href="#" class="btn btn-primary" ng-click="processString(input)" >Process</a></td>
         </tr>
      </table>
   </div>
   
   
       <div ng-controller="scrollBottom">
        <div id="bottom"> 
            <a href="#" class="btn btn-primary" ng-click="scrollBottom(top)">Go to Top</a>
        </div>
    </div>
</div>
	