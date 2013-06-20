package edu.gatech.cs2340.risk.model;

import java.util.*;

/**
 * Game initialization and processing
 */
public class GameLogic
{


    public GameLogic (ArrayList<Player> players) {
        int playerSize = players.size();

        for (Player player : players) {
            createStarSystem(player);
        }

    }
    /**
     * Creates a linked system of planets for each player
     * @param player
     * @return
     */
    public StarSystem createStarSystem(Player player) {
        
        return null;
    }
    

}
