<%@ taglib  uri="/struts-tags"  prefix="d" %>
<d:form action="login">
<d:textfield label="Enter The User ID" key="userid"></d:textfield>
<d:password label="Enter Password" key="password"></d:password>
<d:submit></d:submit>
</d:form>
<div id="demo">
<h2>The XMLHttpRequest Object</h2>
<button type="button" onclick="loadDoc()">Change Content</button>
</div>

<script>
function loadDoc() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("demo").innerHTML =
      this.responseText;
    }
  };
  xhttp.open("GET", "ajax_info.txt", true);
  xhttp.send();
}
</script>
<p>Hello this is AJAX ...!!!</p>
<button type="button" onclick="loadAj()" value="AJAX">Click Me</button>
<p id="aj"></p>
<script>
function loadAj(){
  var obj=new XMLHttpRequest();
  obj.onreadystatechange=function(){
	  if(this.readyState==4 && this.status==200)
		  {
		  document.getElementById('aj').innerHTML=this.responseText;
		  }
	
  };
  obj.open("GET","search.action",true);
  obj.send();
}
</script>



<div id="demo1">

<h2>The XMLHttpRequest Object</h2>

<button type="button" onclick="loadDoc('ajax_info.txt', myFunction)">Change Content
</button>
</div>

<script>
function loadDoc(url, cFunction) {
  var xhttp;
  xhttp=new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      cFunction(this);
    }
  };
  xhttp.open("GET", url, true);
  xhttp.send();
}
function myFunction(xhttp) {
  document.getElementById("demo1").innerHTML =
  xhttp.responseText;
}
</script>

<style>
table,th,td {
  border : 1px solid black;
  border-collapse: collapse;
}
th,td {
  padding: 5px;
}
</style>


<h2>The XMLHttpRequest Object</h2>

<button type="button" onclick="loadDoc1()">Get my CD collection</button>
<br><br>
<table id="demo2"></table>

<script>
function loadDoc1() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      myFunction1(this);
    }
  };
  xhttp.open("GET", "cd_catalog.xml", true);
  xhttp.send();
}
function myFunction1(xml) {
  var i;
  var xmlDoc = xml.responseXML;
  var table="<tr><th>Artist</th><th>Title</th></tr>";
  var x = xmlDoc.getElementsByTagName("CD");
  for (i = 0; i <x.length; i++) { 
    table += "<tr><td>" +
    x[i].getElementsByTagName("ARTIST")[0].childNodes[0].nodeValue +
    "</td><td>" +
    x[i].getElementsByTagName("TITLE")[0].childNodes[0].nodeValue +
    "</td></tr>";
  }
  document.getElementById("demo2").innerHTML = table;
}
</script>


