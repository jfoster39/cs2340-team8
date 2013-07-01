<%@ page import="edu.gatech.cs2340.risk.model.GameLogic" %>
<%@ page import="edu.gatech.cs2340.risk.model.Player" %>
<%@ page import="edu.gatech.cs2340.risk.model.Planet" %>
<%@ page import="edu.gatech.cs2340.risk.model.StarSystem" %>
<%@ page import="java.util.*" %>

<%	
	ArrayList<Player> players = (ArrayList<Player>) request.getAttribute("players"); 
  GameLogic game = (GameLogic) request.getAttribute("game");
  Player currentPlayer = players.get(game.getTurn());
%>

<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <title>Star Galaxy</title>

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
      <form action="/risk/playerSelection/<%= id %>" method="POST">
      <tr>
        <td><%= players.get(id).getName() %></td>
        <td><%= players.get(id).getColor() %></td>
        <td><%= players.get(id).getFleets() %></td>
        <td><%= players.get(id).getNumPlanets() %></td>
      </tr>
      </form>
  <% } %>
</table>


<h1 align="center">It is <%= currentPlayer.getName() %>'s turn</h1>

<h2 align="center"><%= currentPlayer.getName() %> has added <%=  game.getNewFleetsToBeAdded() %> fleets</h2>


<p>&nbsp;</p>

<!-- here are all of the Systems and their attributes listed below-->
<% for (int id = 0; id < game.getAllSystems().size(); id++) { %>
	<% StarSystem currentSystem = game.getAllSystems().get(id); %>
    <table width="306" border="1" align="center">
      <tr>
        <th width="66" scope="col">Planet Name</th>
        <th width="55" scope="col">Owner</th>
        <th width="62" scope="col">Number Of Fleets</th>
      </tr>
      <h1> System <%= (id+1) %></h1>
	<% for (int k = 0; k < currentSystem.getPlanets().size(); k++) { %>
    <% Planet currentPlanet = currentSystem.getPlanets().get(k); %>
      <form action="/risk/create/<%= id %>" method="STATS">
         	<tr>
            <td><%= currentPlanet.getName()%></td>
            <td><%= currentPlanet.getOwner().getName() %></td>
            <td><%= currentPlanet.getFleets() %></td>
            <form action="/risk/create" method="POST">
              <input type="submit" name="addNewFleets" value="Add New Fleets" />
              <input type="hidden" name="operation" value="ADDFLEETS" />
              <input type="hidden" name="planetID" value="<%= id %>" />
            </form>
          </tr>
   
  <% } //ends inner for loop %>
  <% } //Ends outer loop %>
</table>
</form>

  <form action="/risk/game" method="POST">
    <p>
      <input type="hidden" name="operation" value="COMPLETETURN" />
      <input type="submit" name="completeTurn" id="completeTurn" value="End Turn" />
    </p>
  </form>
</ul>

<input type="button" name="addNewFleets" value="Add New Fleets" />

 <script type="text/javascript">

      if (<%= game.getNewFleetsToBeAdded()%> == 0) {

        for (var i=0; i<document.getElementsByName("addNewFleets").length; i++){
          document.getElementsByName("addNewFleets")[i].style.display = "none";
        }

      }

  </script>

</body>
</html>