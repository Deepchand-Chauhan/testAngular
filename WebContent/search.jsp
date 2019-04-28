<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Form </title>
</head>
<body>
<s:form action="hello">
<s:textfield key="lang" label="Enter the Language"></s:textfield>
<s:submit></s:submit>

</s:form>


<style>
#container {
  width: 400px;
  height: 400px;
  position: relative;
  background: yellow;
}
#animate {
  width: 50px;
  height: 50px;
  position: absolute;
  background-color: red;
}
</style>
<body>

<p><button onclick="myMove()">Click Me</button></p> 

<div id ="container">
  <div id ="animate"></div>
</div>

<script>
function myMove() {
  var elem = document.getElementById("animate");   
  var pos = 0;
  var id = setInterval(frame, 5);
  function frame() {
    if (pos == 350) {
      clearInterval(id);
    } else {
      pos++; 
      elem.style.top = pos + "px"; 
      elem.style.left = pos + "px"; 
    }
  }
}
</script>

	<p onclick="this.innerHTML='Hello..Event'">Click</p>
	<p onclick="displayDate()" id="dt" >Find Date</p>
	<script type="text/javascript">
	   function displayDate(){
		   document.getElementById('dt').innerHTML=Date();
	   }
	</script>

	
	<div onmouseover="mOver(this)" onmouseout="mOut(this)" 
	style="background-color:#D94A38;width:120px;height:20px;padding:40px;">
	Mouse Over Me</div>
	
	<script>
	function mOver(obj) {
	  obj.innerHTML = "Thank You"
	}
	
	function mOut(obj) {
	  obj.innerHTML = "Mouse Over Me"
	}
	</script>

Enter Name:<input type="text" onfocus="myfocs(this)">
<script>
  function myfocs(obj)
  {
	  obj.style.background="blue";
	  obj.style.color='red';
  }
</script>

<p onmouseover="style.color='red'" onmouseout="style.color='black'">This is Text</p>

<button id="mybtn" >ActionListener</button>
<p id="drt"></p>
<script type="text/javascript">
    document.getElementById("mybtn").addEventListener("click",displayDt);
    function displayDt(){
    	
    	document.getElementById("drt").innerHTML=Date();
    }

</script>

<input type="button" onclick="window.open()" value="New Window">
<p id="loc"></p>

<script>
document.getElementById("loc").innerHTML = 
"The full URL of this page is:<br>" + window.location.href;
</script>
<p id="host"></p>

<script>
document.getElementById("host").innerHTML = 
"The full URL of this page is:<br>" + window.location.hostname;
</script>
<p id="port"></p>

<script>
document.getElementById("port").innerHTML = 
"The full URL of this page is:<br>" + window.location.port;
</script>


<button type="button" onclick="history.back()">Go Back</button>

<p id="appName1">
<script type="text/javascript">
  document.getElementById('appName1').innerHTML=navigator.appName;
</script>

<p id="appCodeName1">
<script type="text/javascript">
  document.getElementById('appCodeName1').innerHTML=navigator.appCodeName;
</script>

<p id="online1">
<script type="text/javascript">
  document.getElementById('online1').innerHTML=navigator.onLine;
</script>

<p id="jEnable">
<script type="text/javascript">
 document.getElementById("jEnable").innerHTML=navigator.javaEnabled();

</script>


</body>
</html>