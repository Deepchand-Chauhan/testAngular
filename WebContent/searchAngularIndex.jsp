<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="scripts/angular.js"></script>
<script type="text/javascript" src="scripts/angular-route.min.js"></script>
<script type="text/javascript" src="js/myScript.js"></script>
<div ng-app="myApp">
<div ng-controller="headerController">
<div ng-include="header"></div>
</div>
   <div>
      <table style="font-family:Arial">
         <tr>
            <td  style="width:100px; height:500px; background-color:#BDBAAA; text-align:center " >
               <a href="/home">Home</a>
               <a href="/course">Course</a>
               <a href="/student">Student</a>
            </td>
               <td style="width:1300px; height:500px; background-color:#BDB888; text-align:center " >
                <ng-view></ng-view>
               </td>
         </tr>
         <div ng-controller="time">
            Time :- {{times}}
         </div>
         <div ng-controller="hexa">
             Hexa Decimal of 255 is -- {{hexValue}}
         </div>
         <div ng-controller="actionController1">
           <div><a href="#"  ng-click="getResult()">Click Me</a></div> Result = {{result}}
         </div>
      </table>
   </div>
 <div ng-controller="footerController">  
<div ng-include="footer"></div>
</div>
</div>
