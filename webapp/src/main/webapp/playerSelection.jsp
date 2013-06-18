<%@ page import="edu.gatech.cs2340.risk.model.Player" %>
<%@ page import="java.util.*" %>

<% ArrayList<Player> players = 
	(ArrayList<Player>) request.getAttribute("players"); %>
<html>
    <head>
        <title>Player Selection</title>
        <link rel="stylesheet" type="text/css" href="stylesheet.css"/>
		<script src="jquery.js"></script>
		<script type="text/javascript" src="script.js"></script>

    </head>
    <body>
		<h1>Select Your Players</h1>
        <div id="Red"></div>
        <div id="Blue"></div>
        <div id="Yellow"></div>
        <div id="Green"></div>
		<div id="Purple"></div>
        <div id="Orange"></div>
		
	<table>
		<tr>
			<th>Name</th><th>Color</th>
		</tr>
		<% for (int id = 0; id < players.size(); id++) { %>
		<% Player player = players.get(id); %>
		<tr>
			<form action="/risk/update/<%= id %>" method="POST">
			  <!-- hidden operation element to simulate HTTP PUT method in server -->
			  
			  <script type="text/javascript">
				document.getElementById('<%= player.getColor() %>').style.display = "none";
			  </script>
			  
			  <input type="hidden" name="operation" value="PUT"/>
			  <td><input type="text" name="name" value="<%= player.getName() %>"/></td>
			  <td>
				<input id="playerColor" type="text" style="background-color: <%= player.getColor()%>"/>
				<input type="hidden" name="color" value="<%= player.getColor() %>"/>
			  </td>
			<!--  <td><input type="submit" value="Update"/></td> -->
			</form>

			  <form action="/risk/delete/<%= id %>" method="POST">
			  <!-- hidden operation element to simulate HTTP DELETE method in server -->
				<input type="hidden" name="operation" value="DELETE"/>
			<!--	<input type="submit" value="Delete"/> -->
			  </form>
			
		</tr>			
		<% } %>
		<tr>			
		<script type="text/javascript">
			function blank(a) { if(a.value == a.defaultValue) a.value = ""; }
			function unblank(a) { if(a.value == "") a.value = a.defaultValue; }
		</script>
			<form action="/risk/create" method="POST">
			  <td><input type="text" name="name" value="Enter your name" onfocus="blank(this)" onblur="unblank(this)"/></td>
			  <td>
				<input id="colorBar" type="text" value=""/>
				<input id="color" name="color" type="hidden" value=""/>
			  </td>
			  <td><input type="submit" value="Add"/></td>
			</form>
			<td></td> <!-- empty cell to align with previous cells -->
		</tr>
		<tr><td></td></tr>
		<tr>
			<td>
				<a href="next.jsp">
					<button>Start!</button>
				</a>
			<form action="/risk/create" method="POST">
				<input type="hidden" name="operation" value="RANDOM">
				<input type="submit" value="Randomize Order"/>
			</form>		
			</td>
		</tr>
	</table>
			
    </body>
</html>



















