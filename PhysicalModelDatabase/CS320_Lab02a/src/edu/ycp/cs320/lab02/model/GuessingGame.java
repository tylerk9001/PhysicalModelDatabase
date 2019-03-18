package edu.ycp.cs320.lab02.model;

// model class for GuessingGame
// only the controller should be allowed to call the set methods
// the JSP will call the "get" and "is" methods implicitly
// when the JSP specifies game.min, that gets converted to
//    a call to model.getMin()
// when the JSP specifies if(game.done), that gets converted to
//    a call to model.isDone()
public class GuessingGame {
	private int min, max;
	
	public GuessingGame() {
	}
	
	public void setMin(int min) {
		this.min = min;
	}
	
	public int getMin() {
		return min;
	}
	
	public void setMax(int max) {
		this.max = max;
	}
	
	public int getMax() {
		return max;
	}
	
	public boolean isDone() {
		return min == max;
	}
	
	public int getGuess() {
		return min + (max-min)/2;
	}
	
	public void setIsLessThan(int guess) {
		this.max = guess-1;
	}
	
	public void setIsGreaterThan(int guess) {
		this.min = guess+1;
	}
}
