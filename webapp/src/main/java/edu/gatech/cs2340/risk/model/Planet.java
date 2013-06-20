package edu.gatech.cs2340.risk.model;

//Brad's comment x 2
// some more comments

// Added stuff
/**
 * This class contains pointers to previous and next planets in its star system
 *
 */
public class Planet
{

    private Planet prevPlanet, nextPlanet;
    private Player owner;
    private int numFleets; 

    public Planet(Player owner, int numFleets) {
        this.owner = owner;
        this.numFleets = numFleets; 
    }

    public void setPrevPlanet(Planet prevPlanet) {
        this.prevPlanet = prevPlanet;
    }
    
    public void setNextPlanet(Planet nextPlanet) {
        this.nextPlanet = nextPlanet;
    }
    
   public Planet getPrevPlanet() {
       return prevPlanet;
   }
   
    public Planet getNextPlanet() {
        return nextPlanet;
    }

    public void setOwner (Player owner) {
        this.owner = owner;
    }

    public Player getOwner() {
        return owner;
    }

    public void setFleets(int numFleets) {
        this.numFleets = numFleets;
    }

    public int getFleets() {
        return numFleets;
    }
}
