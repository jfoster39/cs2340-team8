<%@ page import="edu.gatech.cs2340.risk.model.GameLogic" %>
<%@ page import="edu.gatech.cs2340.risk.model.Player" %>
<%@ page import="edu.gatech.cs2340.risk.model.Planet" %>
<%@ page import="edu.gatech.cs2340.risk.model.StarSystem" %>
<%@ page import="java.util.*" %>

<%ArrayList<Player> players = (ArrayList<Player>) request.getAttribute("players"); 
  GameLogic game = (GameLogic) request.getAttribute("game");
   Player currentPlayer = players.get(game.getTurn() % players.size());
%>

<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Untitled Document</title>
<style type="text/css">
.PlayerColor {
	color: #000;
}
.centertext {
	text-align: center;
}
</style>
</head>

<body>

<!-- here is the table that shows all of the players stats -->
<table width="306" border="1" align="center">
  <tr>
    <th width="66" scope="col">Players</th>
    <th width="55" scope="col">Color</th>
    <th width="62" scope="col">Total Fleets</th>
    <th width="95" scope="col">Total Planets Owned</th>
  </tr>
  <!-- This for loop is pretty cool, it creates the table based on how
  		many people are playing -->
  <% for (int id = 0; id < players.size(); id++) { %>
		<% Player player = players.get(id); %>
      <form action="/risk/playerSelection/<%= id %>" method="POST">
      <tr>
        <td><%= players.get(id).getName() %></td>
        <td><%= players.get(id).getColor() %></td>
        <td><%= players.get(id).getFleets() %></td>
        <td><%= players.get(id).getNumPlanets() %></td>
      </tr>
  <% } //ends for loop %>
</table>
</form>

<h1 align="center">It is <%= currentPlayer.getName() %>'s turn</h1>

<p>&nbsp;</p>

<!-- here are all of the Systems and their attributes listed below-->
<h1>System 1: </h1>
<p>Mars</p><ul>
  <p>numFleets, <span class="PlayerColor">owner</span></p>
</ul>

<h1>System 2: </h1>
<p>Mars</p><ul>
  <p>numFleets, <span class="PlayerColor">owner</span></p>
</ul>

<h1>System 3: </h1>
<p>Mars</p><ul>
  <p>numFleets, <span class="PlayerColor">owner</span></p>
</ul>

<h1>System 4: </h1>
<p>Mars</p><ul>
  <p>numFleets, <span class="PlayerColor">owner</span></p>
</ul>

<h1>System 5: </h1>
<p>Mars</p><ul>
  <p>numFleets, <span class="PlayerColor">owner</span></p>
</ul>

<h1>System 6: </h1>
<p>Mars</p><ul>
  <p>numFleets, <span class="PlayerColor">owner</span></p>
  <p>&nbsp;</p>
  <form id="form1" name="form1" method="put" action="/risk/update">
    <p>
      <input type="submit" name="completeTurn" id="completeTurn" value="End Turn" />
    </p>
  </form>
</ul>

</body>
</html>