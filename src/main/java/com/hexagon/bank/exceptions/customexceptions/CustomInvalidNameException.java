package com.hexagon.bank.exceptions.customexceptions;

public class CustomInvalidNameException extends Exception {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4139791277264932309L;

	public CustomInvalidNameException() {
		super();
	}

	public CustomInvalidNameException(String msg) {
		super(msg);
	}
}
