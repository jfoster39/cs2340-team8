package edu.gatech.cs2340.risk.model;

/**
* This class represents a player in Star Galaxy Risk
*/
public class Player {
	private String name;
	private int totalFleets;
	private String color;

	/**
	* Sets a Player's constructor to take in a Name, and a Color
	* @param Name, Color: String's that set the Player's name and Color
	*/
	
	public Player(String name, String color){
		this.name = name;
		this.color = color;
	}

	/**
	* Getter method for the number of fleets associated with the player
	* @return the number of fleets this player has
	*/
	
	public int getFleets(){
		return totalFleets;
	}
	
	/**
	* Decrements the number of fleets a player has by 1
	*/
	public void removeFleet(){
		totalFleets--;
	}
	/**
	* This method set's the number of fleets a player has to the Integer it takes in as a parameter
	* @param newtotalFleets: the new number of fleets the player will have
	*/
	public void setTotalFleets(int newTotalFleets){
		totalFleets = newTotalFleets;
	}

	/**
	* This method return the Player's current name
	* @return String name of the player
	*/
	public String getName(){
		return name;
	}
	/**
	* This method return the Player's current color
	* @return String color of the player
	*/
	public String getColor(){
		return color;
	}
}
