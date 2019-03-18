package edu.ycp.cs320.lab02.controller;

import edu.ycp.cs320.lab02.model.GuessingGame;

/**
 * Controller for the guessing game.
 */
public class GuessingGameController {
	private GuessingGame model;
	private int min = 1;
	private int max = 100;
	//private int guess = model.getGuess();

	/**
	 * Set the model.
	 * 
	 * @param model the model to set
	 */
	public void setModel(GuessingGame model) {
		this.model = model;
	}

	/**
	 * Start a new guessing game by setting the minimum to 1 and the maximum to 100.
	 */
	public void startGame() {
		model.setMin(min);
		model.setMax(max);
	}

	/**
	 * Called to indicate that the current guess is correct.
	 * Set the min and max to the current guess.
	 */
	public void setNumberFound() {
		int guess = model.getGuess();
		model.setMin(guess);
		model.setMax(guess);
		
	}

	/**
	 * Called to indicate that the user is thinking of a number that
	 * is less than the current guess.
	 */
	public void setNumberIsLessThanGuess() {
		int guess = model.getGuess();
		model.setIsLessThan(guess);
		
	}

	/**
	 * Called to indicate that the user is thinking of a number that
	 * is greater than the current guess.
	 */
	public void setNumberIsGreaterThanGuess() {
		int guess = model.getGuess();
		model.setIsGreaterThan(guess);
	}
}
