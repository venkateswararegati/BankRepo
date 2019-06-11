package com.hexagon.bank.exceptions.customexceptions;

public class CustomViolationException extends Exception {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8960828009345038357L;

	public CustomViolationException() {
		super();
	}

	public CustomViolationException(String msg) {
		super(msg);
	}

}
