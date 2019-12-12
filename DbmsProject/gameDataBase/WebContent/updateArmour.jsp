<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="gameModel.gameDB" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Armour</title>
<link rel="stylesheet" href="front.css">
</head>
<body style="background-image:url('https://cdn.dodowallpaper.com/full/329/sword-wallpapers-29.jpg');background-repeat:no-repeat;background-size:cover;font-size:20px;color:yellow;">
<h3>Choose whose armour to change</h3>
<table>
<tr>
<td>Username</td>
<td>|</td>
<td>Current Armour</td>
</tr>
</table>
<br/>
<form action="updateArmour" method="POST">
<div id="links">
<table>
	<%
	new gameDB();
	String qry="SELECT playerid,username,aid,aname"
	+" from player, class, weapons,armour,stats where playerid=pid and classid=cid and weaponid=wid and armourid=aid";
	gameDB.rs=gameDB.stmt.executeQuery(qry);
	while(gameDB.rs.next())
	{
	%>
		<tr>
		<td><input type ="radio" name="pid" value="<%=gameDB.rs.getInt(1)%>"/></td>
		<td><%= gameDB.rs.getString(2) %></td>
		<td><%="|" %>
		<td><%= gameDB.rs.getString(4) %></td>
		</tr>
	<%
	}		
	%>
</table>
</div>
<input type="submit" value="CHOOSE"/>
</form>
</body>
</html>