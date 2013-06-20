package edu.gatech.cs2340.risk.model;

import java.util.*;

public class StarSystem {
    ArrayList<Planet> planets;

    public StarSystem(Player player) {

        planets = new ArrayList<Planet>(5);

        for (Planet planet : planets) {
            planet = new Planet(player, player.getFleets());
        }
    }

}