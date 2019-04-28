<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index Page Result</title>
</head>
<body>  
        <select id="color" onchange="display()">  
                <option value="Select Color">Select Color</option>  
                <option value="yellow">Yellow</option>  
                <option value="green">Green</option>  
                <option value="red">Red</option>  
            </select>  
            <script type="text/javascript">  
                function display()  
                {  
                    var value = document.getElementById("color").value;  
                    if (value != "Select Color")  
                    {  
                        document.bgColor = value;  
                        document.cookie = "color=" + value;  
                    }  
                }  
                window.onload = function ()  
                {  
                    if (document.cookie.length != 0)  
                    {  
                        var array = document.cookie.split("=");  
                        document.getElementById("color").value = array[1];  
                        document.bgColor = array[1];  
                    }  
                }  
              
                  
            </script> 
   
            <script type="text/javascript" src="js/myJScript.js"></script>
            <p id="demo21"></p>
            <form name="inputValidation" action="default.action" onsubmit="return validateForm()" method="post">
               <input id="validateNumber" required>
               <input id="asd" disabled="disabled">
               <input type="submit" value="submit"></input>
               <p id="eror"></p>
            
            </form>  
                     <script>
            var text = '{"employees":[' +
            '{"firstName":"John","lastName":"Doe" },' +
            '{"firstName":"Deep","lastName":"Chand" },' +
            '{"firstName":"Peter","lastName":"Jones" }]}';

            obj = JSON.parse(text);
            document.getElementById("demo21").innerHTML =
            obj.employees[1].firstName + " " + obj.employees[1].lastName;
            
            </script>  
                     
            <input type="number" id="num" min="50" max="500" required>
            <button  onclick="valid1()">check Validity</button>
            <p id="numValid"></p>
            <p id="arrow1"></p>
            <p id="listArgs"></p>
            <script>
            function lengthArgs1(){
              var i;
              var max = -Infinity;
              for( i=0; i<arguments.length; i++){
            	  if(arguments[i] > max)
            		  {
            		  max = arguments[i];
            		  }
              }
              return max;
            }
            document.getElementById("listArgs").innerHTML = lengthArgs1(1,4,6,7,8,9,4);
            </script>


            <p id="p1">Hello Red Color!</p>
			<p id="p2">Hello Blue Color!</p>
			
			<script>
			document.getElementById("p1").style.color="red";
			document.getElementById("p2").style.color = "blue";
			document.getElementById("p2").style.fontFamily = "Arial";
			document.getElementById("p2").style.fontSize = "larger";
			</script>

			
            <script>
			const x = (x, y) => {return (x * y)};
			document.getElementById("arrow1").innerHTML = x(5, 5);
			</script>
		           
		           
			<p id="demo55"></p>
			
			<script>
			var person = {
			  fullName: function() {
			    return this.firstName + " " + this.lastName;
			  }
			}
			var person1 = {
			  firstName:"Deep",
			  lastName: "Chand",
			}
			var person2 = {
			  firstName:"Krish",
			  lastName: "Chauhan",
			}
			var x11 = person.fullName.call(person1); 
			document.getElementById("demo55").innerHTML = x11; 
			</script>
		           
		           
            <h1 id="id1">My Heading 1</h1>

			<button type="button" 
			onclick="document.getElementById('id1').style.color = 'red'">
			Click Me!</button>
			
			<p id="p11">Hello my Name is JavaScript..!!</p>
			<input type="button" value ="Hide" onclick="document.getElementById('p11').style.visibility='hidden'">
			<input type="button" value ="Show" onclick="document.getElementById('p11').style.visibility='visible'">
			
</body>  
</html>