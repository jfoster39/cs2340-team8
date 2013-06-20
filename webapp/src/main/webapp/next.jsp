<%@ page import="edu.gatech.cs2340.risk.model.GameLogic" %>
<%@ page import="edu.gatech.cs2340.risk.model.Player" %>
<%@ page import="edu.gatech.cs2340.risk.model.Planet" %>
<%@ page import="java.util.*" %>


<% ArrayList<Player> players = 
    (ArrayList<Player>) request.getAttribute("players"); %>

<html>
    <head>
        <title>Star Galaxy</title>
        <script src="jquery.js"></script>
        <link rel="stylesheet" type="text/css" href="mapStyle.css"/>
    </head>
    <body>
		<table>
			<tr>
				<td id="0">
					<div class="container" id="starSystem1">
						<img src="images/starSystem.gif" width="200" height="200">
						<div class="planet" id="planet1"></div>
						<div class="planet" id="planet2"></div>
						<div class="planet" id="planet3"></div>
						<div class="planet" id="planet4"></div>
						<div class="planet" id="planet5"></div>
					</div>
				</td>
				<td id="3"></td>
				<td id="1"></td>
			</tr>
			<tr>
				<td height="200"><td>
			</tr>
			<tr>
				<td id="4"></td>
				<td id="2"></td>
				<td id="5"></td>
			</tr>
		</table>
		<script type="text/javascript">
			for (var i = 1; i < <%= players.size() %>; i++) {
				$('#starSystem1').clone().appendTo('#' + i);
			}
		</script>


    </body>
</html>
