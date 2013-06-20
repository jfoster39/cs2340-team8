package edu.gatech.cs2340.risk.model;

import java.util.*;

/**
 * Game initialization and processing
 */
public class GameLogic
{

    private int numPlayers;
    ArrayList<StarSystem> systems;
    
    public GameLogic (ArrayList<Player> players) {
        numPlayers = players.size();
        initializeStarSystem();

    }
    /**
     * Creates a linked system of planets for each player
     * @param player
     * @return
     */
    public ArrayList<StarSystem> initializeStarSystems(){        
        for(Player current: players){
            systems.add(new StarSystem(current));
        }
    }
    

}
