<script  type="text/javascript" src="scripts/angular.js"></script>
<script type="text/javascript" src="js/myAngul.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<div ng-app="myApp11">
   <div ng-controller="controller1">
   <form class="form-inline">
      <div class="form-group">
            <label>First Value </label> <input type="text" class="form-control" ng-model="a"/>
            <label>Second Value</label> <input type="text"  class="form-control" ng-model="b"/>
            <input type="button" class="btn btn-primary" value="calculate" ng-click="doSum()">
            Sum =  {{sum | number:2}} <span ng-if="sum > 100" class="glyphicon glyphicon-warning-sign"></span>
      </div>
    </form>
   </div>
   <div ng-controller="controller2">
	   <div my-info-msg>
	   </div>
   </div>
   <div ng-controller="controller3">
	   <div message text="First">
	     <div message text="---Second">
	          <div message text="-------Third">
	          
	          </div>
	     </div>
	   </div>
   </div>
</div>

