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

        <img src="images/starSystem.gif" width="200" height="200" usemap="#starSystem">

        <map name="starSystem">
            <area color="red" shape="circle" coords="128, 96, 5" alt="planet1" href="">
            <area shape="circle" coords="140, 96, 5" alt="planet2" href="">
            <area shape="circle" coords="154, 96, 5" alt="planet3" href="">
            <area shape="circle" coords="171, 96, 6" alt="planet4" href="">
            <area shape="circle" coords="187, 95, 7" alt="planet5" href="">
        </map>


    </body>
</html>
