<%@ page import="edu.gatech.cs2340.risk.model.GameLogic" %>
<%@ page import="edu.gatech.cs2340.risk.model.Player" %>
<%@ page import="edu.gatech.cs2340.risk.model.Planet" %>
<%@ page import="edu.gatech.cs2340.risk.model.StarSystem" %>
<%@ page import="java.util.*" %>


<% ArrayList<Player> players = 
    (ArrayList<Player>) request.getAttribute("players"); 
%>

	
	
<html>
    <head>
        <title>Star Galaxy</title>
        <script src="jquery.js"></script>
        <link rel="stylesheet" type="text/css" href="mapStyle.css"/>
    </head>
    <body>
		<table>
			<tr>
				<td id="0" height="200" width="200">
					<div class="container" id="starSystem1">
						<img src="images/starSystem.gif" width="200" height="200">
						<div class="planetTemp" id="-1">
							<a href=""><span></span></a> <!--Using empty span to make div clickable -->
						</div>
						<div class="planetTemp" id="-2">
							 <a href=""><span></span></a>
						</div>
						<div class="planetTemp" id="-3">
							 <a href=""><span></span></a>
						</div>
						<div class="planetTemp" id="-4">
							 <a href=""><span></span></a>
						</div>
						<div class="planetTemp" id="-5">
							 <a href=""><span></span></a>
						</div>
					</div>
				</td>
				<td id="3" height="200" width="200"></td>
				<td id="1" height="200" width="200"></td>
			</tr>
			<tr>
				<td height="200" width="200"><td>
			</tr>
			<tr>
				<td id="4" height="200" width="200"></td>
				<td id="2" height="200" width="200"></td>
				<td id="5" height="200" width="200"></td>
			</tr>
		</table>
		<script type="text/javascript">
			for (var i = 1; i < <%= players.size() %>; i++) {
				$('#starSystem1').clone().appendTo('#' + i);
			}
			$(".container").each( function(index) {
				$(this).removeAttr('id');
				$(this).attr('id', 'startSystem' + (index + 1));
			})
			
			for (var starSystem = 1; starSystem < <%= players.size() + 1%>; starSystem++) {
				$(".planetTemp").each( function(index) {
					$(this).removeAttr('class');
					$(this).attr('class', 'planet');
					$(this).attr('id', 'planet' + starSystem + (this).id);
					if ((index + 1)%5 == 0) {
						return false;
					}
				})
			}
			
		</script>


    </body>
</html>
