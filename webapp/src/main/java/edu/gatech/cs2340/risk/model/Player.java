package edu.gatech.cs2340.risk.model;

public class Player {
	private String name;
	//private Planet planet;
	private int numFleets;
	private String color;
	
	public Player(String name, String color){
		this.name = name;
		this.color = color;
	}
	
	public int getFleets(){
		return numFleets;
	}
	
	public void removeFleet(){
		numFleets--;
	}
	
	public void setNumFleets(int newNumFleets){
		numFleets = newNumFleets;
	}
	
	public String getName(){
		return name;
	}
	
	public String getColor(){
		return color;
	}
}
