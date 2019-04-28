<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Test JavaScript</title>
<script type="text/javascript" src="js/myScript.js">
</script>
<script type="text/javascript" src="js/myJScript.js"></script>
</head>
<body>
<p id="demo5">One Para</p>
<p id="demo4">This is ParaGraph.</p>
<p id="demo3"></p>
<p id="demo">Hello This is test.</p>
<p id="demo2" style="display:none">Text...!!</p>
<p id="demo6"></p>
<p id="demo7"></p>
<p id="demo8"></p>
<p id="carname"></p>
<button type="button" onclick='document.getElementById("demo").innerHTML="Action Performed."'>Click Me1</button>
<button type="button" onclick="document.getElementById('demo').innerHTML='Action Performed2.'">Click Me2</button>
<button type="button" onclick="document.getElementById('demo').style.fontSize='30px'">Font Change</button>
<button type="button" onclick="document.getElementById('demo').style.display='none'">Hide Text</button>
<button type="button" onclick="document.getElementById('demo2').style.display='block'">Show Text</button>
<button type="button" onclick="myfunction()">Change Para</button>
<button type="button" onclick="myfunction2()"> Para Show </button>
<button type="button" onclick="window.alert('Hello Alert')">Alert</button>
<button type="button" onclick="myfunction3()">Local Variable</button>
<button type="button" onclick="myfunction4()">Java Script Exponent</button>
<button type="button" onclick="myfunction5()">JavaScript Power</button>
<button type="button" onclick="myfunction6()">GLobal Variable</button>
<a href="index.action">Click</a>
<script type="text/javascript">
document.getElementById("demo3").innerHTML="Hello This is JavaScript.";
</script>
</body>
</html>