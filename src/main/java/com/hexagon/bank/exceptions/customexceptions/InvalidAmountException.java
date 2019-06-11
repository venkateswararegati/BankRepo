package com.hexagon.bank.exceptions.customexceptions;

public class InvalidAmountException extends Exception {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7768066243821341130L;

	public InvalidAmountException() {
		super();
	}

	public InvalidAmountException(String msg) {
		super(msg);
	}

}
