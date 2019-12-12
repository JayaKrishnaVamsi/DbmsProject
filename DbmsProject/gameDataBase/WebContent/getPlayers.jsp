<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="gameModel.gameDB" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Players List</title>
<link rel="stylesheet" href="front.css">
</head>
<body style="background-image:url('https://www.bestfunforall.com/wallpaperbetter/imgs/Zelda%20Green%20Link%20Master%20Sword%20Shield%20Triforce%20HD%20wallpaper%20%202.jpg');background-repeat:no-repeat;background-size:cover;">
<br/>
<div style="border:solid 5px #4EFF00;">  
<table class="getplayertb" border="1">
	<%
	new gameDB();
	String qry="SELECT playerid,username,level,cname,wname,aname, maxhp, maxmp, phys_attack, magic_attack, defence, recovery, mobility"
	+" from player, class, weapons,armour,stats where playerid=pid and classid=cid and weaponid=wid and armourid=aid";
	gameDB.rs=gameDB.stmt.executeQuery(qry);%>
	<tr id="h1">
	<th>ID</th>
	<th>Username</th>
	<th>Level</th>
	<th>Class</th>
	<th>Weapon</th>
	<th>Armour</th>
	<th>Max HP</th>
	<th>Max MP</th>
	<th>P_Atk</th>
	<th>M_Atk</th>
	<th>Defence</th>
	<th>Recovery</th>
	<th>Mobility</th>
	</tr>
<%
	while(gameDB.rs.next())
	{
	%>
		
		<tr id="get1">
		<td><%= gameDB.rs.getInt(1) %></td>
		<td><%= gameDB.rs.getString(2) %></td>
		<td><%= gameDB.rs.getInt(3) %></td>
		<td><%= gameDB.rs.getString(4) %></td>
		<td><%= gameDB.rs.getString(5) %></td>
		<td><%= gameDB.rs.getString(6) %></td>
		<td><%= gameDB.rs.getInt(7) %></td>
		<td><%= gameDB.rs.getInt(8) %></td>
		<td><%= gameDB.rs.getInt(9) %></td>
		<td><%= gameDB.rs.getInt(10) %></td>
		<td><%= gameDB.rs.getInt(11) %></td>
		<td><%= gameDB.rs.getInt(12) %></td>
		<td><%= gameDB.rs.getInt(13) %></td>
		</tr>
	<%
	}		
	%>
	
</table>
</div>
<div style = "position:relative; left:480px;top:40px">
<button onclick="window.location.href='http://localhost:8080/gameDataBase/menu.html';">Menu</button>
</div>
</body>
</html>