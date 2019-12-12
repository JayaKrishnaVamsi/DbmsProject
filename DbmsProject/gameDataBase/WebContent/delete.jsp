<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete</title>
<link rel="stylesheet" href="front.css">
</head>
<body>
<b><h2 style="color:red;font-size:25px;">Choose Which User To Delete</h2></b>
<div style = "position:relative; left:880px;">
<button onclick="window.location.href='http://localhost:8080/gameDataBase/menu.html';">Menu</button>
</div>
<form action="delete" method="POST">
	<b style="font-size:20px;color:red">Username to delete:</b><input type="text" name="usn" placeholder="enter username.."/>
	<input type="submit" value="Delete User"/>
</form>
<jsp:include page="getPlayers.jsp"/><br/><br/>

</body>
</html>