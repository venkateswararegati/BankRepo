package com.hexagon.bank.exceptions.customexceptions;

public class InSufficientAmountException extends Exception {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4136591853963448397L;

	public InSufficientAmountException() {
		super();
	}

	public InSufficientAmountException(String msg) {
		super(msg);
	}
}
