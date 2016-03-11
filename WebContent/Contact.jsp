<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
function checkvalue() { 
    var Name = document.getElementById('Name').value; 
    var Email = document.getElementById('Email').value;
    var Message = document.getElementById('Message').value; 
    if(!Name.match(/\S/)) 
    {
        alert("Name Cannot be Empty");
        return false;
    } 
    else if(!Email.match(/\S/)) 
    {
        alert("Email Cannot be Empty");
        return false;
    } 
    else if(!Message.match(/\S/)) 
    {
        alert("Message Cannot be Empty");
        return false;
    } 
    else 
    {
        alert("Your Message Has Been Sent");
        return true;
    }
}
</script>
<link rel="stylesheet" type="text/css" href="Style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Contact</title>
</head>
<body>
<div id="Container">
<div id="PreHeader">
<a href="About.jsp">About</a>
<a href="Contact.jsp">Contact</a>
</div>
<div id="Navigation">
<a href="Index.html">Home</a>
<a href="SMS.jsp">Free SMS</a>
<a href="Email.jsp">Free Email</a>
</div>
<div id="Content">
<h3>Contact:</h3>
<p>You can post your information to us and we will get back to you Soon</p>
<form action="${pageContext.request.contextPath}/Loader" method="Post" onsubmit="return checkvalue(this)">
*Name:
</br>
<input type="text" name="Name" id="Name"></input>
</br>
*Email:
</br>
<input type="text" name="Email" id="Email"></input>
</br>
Phone:
</br>
<input type="text" name="Phone" id="Phone"></input>
</br>
*Message:
</br>
<textarea rows="20" cols="70" name="Message" id="Message"></textarea>
</br>
</br>
<input type="Submit" value="Submit"></input>
</form>
</div>
<div id="Footer">
<p>2016@Copy Rights Designed By || Subramanyam Mogili</p>
</div>

</div>
</body>
</html>