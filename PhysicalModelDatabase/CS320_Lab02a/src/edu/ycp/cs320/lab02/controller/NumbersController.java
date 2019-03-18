package edu.ycp.cs320.lab02.controller;

import edu.ycp.cs320.lab02.model.Numbers;

public class NumbersController {
	private Numbers model;
	
	private Double result;
	
	public void setModel(Numbers model) {
		this.model = model;
	}
	
	public void add() {
		result = model.getFirst() + model.getSecond() + model.getThird();
		model.setResult(result);
	}
	
	public void multiply() {
		result = model.getFirst() * model.getSecond();
		model.setResult(result);
	}
}
