<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*, gameModel.gameDB" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
<link rel="stylesheet" href="front.css">
</head>
<body style="background-image:url('https://www.bestfunforall.com/wallpaperbetter/imgs/Zelda%20Green%20Link%20Master%20Sword%20Shield%20Triforce%20HD%20wallpaper%20%202.jpg');background-repeat:no-repeat;background-size:cover;">
	<a href="http://localhost:8080/gameDataBase/updateWeapon" style="font-size:20px;color:yellow;">Update the Weapon being used</a> | &nbsp;
	<a href="http://localhost:8080/gameDataBase/updateArmour" style="font-size:20px;color:yellow;">Update the Armour being used</a><br/>

<form action='updateBy' method='post'>
	<h2 style="color:orange;font-size:20px;">Or Else</h2><br/>
	<b style="color:orange;font-size:20px;">Update</b>
	<select name="field">
	<option value="username">Username</option>
	<option value="level">Level</option>
	</select>
	<b style="color:orange;font-size:20px;">Of User</b><br/>
	
	<table class="getplayertb" border="1">
	<%
	new gameDB();
	String qry="SELECT playerid,username,wid,wname"
	+" from player, class, weapons,armour,stats where playerid=pid and classid=cid and weaponid=wid and armourid=aid";
	gameDB.rs=gameDB.stmt.executeQuery(qry);
	while(gameDB.rs.next())
	{
	%>
		<tr id="get1">
		<td><input type ="radio" name="pid" value="<%=gameDB.rs.getInt(1)%>"/></td>
		<td><%= gameDB.rs.getString(1) %></td>
		<td><%= gameDB.rs.getString(2) %></td>
		</tr>
	<%
	}		
	%>
</table><br/>
	
	<b style="color:orange;font-size:20px;">to:</b>
	<input type="text" name="value"/>
	<input type="submit" value="Update"/>
</form>
<div style = "position:relative; left:480px;top:40px">
<button onclick="window.location.href='http://localhost:8080/gameDataBase/menu.html';">Menu</button>
</div>
</body>
</html>