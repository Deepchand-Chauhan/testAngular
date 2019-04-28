<script type="text/javascript" src="scripts/angular.js">
</script>
<script src="js/scriptJs.js"></script>
<div ng-app="myAppp">
  <div ng-controller="controller1">
    First Input<input type="text" ng-model="a"/><br/>
    Second input<input type="text" ng-model="b"/><br>
    <input type="button" ng-click="calc()" value="Calculate"> Sum={{sum}}
  </div>
  <div message text="First">
  
  </div>
</div>