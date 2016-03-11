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
<meta charset="UTF-8">
<title>Email</title>
<link rel="stylesheet" type="text/css" href="Style.css">
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
<h2>FREE E-mails :</h2>
<p>We allow our users to send Free Messages,
<br>
You can use our simple E-mail Tool to send text messages to your Friends all around the world.
</p>
<h3>Please use the Below Tool to Send Free Messages</h3>  
<form action="${pageContext.request.contextPath}/Loader" method="Post" onsubmit="return checkvalue(this)">
*Name:
</br>
<input type="text" name="Name" id="Name"></input>
</br>
*Email:
</br>
<input type="text" name="Email" id="Email"></input>
</br>
*Message:
</br><textarea rows="20" cols="70" name="Message" id="Message"></textarea></br>
</br>
<input type="submit" value="Send"></input>

</form>
</div>
<div id="Footer">
<p>2016@Copy Rights Designed By || Subramanyam Mogili</p>
</div>

</div>
</html>