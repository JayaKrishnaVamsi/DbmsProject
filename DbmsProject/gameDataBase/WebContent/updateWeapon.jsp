<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="gameModel.gameDB" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head >
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="style.css"></link>
<title>Change Weapon</title>
<link rel="stylesheet" href="front.css">
</head>
<body style="background-image:url('https://www.bestfunforall.com/wallpaperbetter/imgs/Zelda%20Green%20Link%20Master%20Sword%20Shield%20Triforce%20HD%20wallpaper%20%202.jpg');background-repeat:no-repeat;background-size:cover;">

<h2 style="color:orange;font-size:25px;">Choose whose weapon to change</h2>
<table>
<tr>
<td style="color:orange;font-size:25px;">Username</td>
<td style="color:orange;font-size:25px;">|</td>
<td style="color:orange;font-size:25px;">Current Weapon</td>
</tr>
</table>
<br/>

<form action="updateWeapon" method="POST">
<div id="links">
<table>
	<%
	new gameDB();
	String qry="SELECT playerid,username,wid,wname"
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