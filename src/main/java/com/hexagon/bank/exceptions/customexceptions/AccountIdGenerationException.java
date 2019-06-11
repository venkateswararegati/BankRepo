package com.hexagon.bank.exceptions.customexceptions;

public class AccountIdGenerationException extends Exception {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1152347039673650144L;

	public AccountIdGenerationException() {
		super();
	}

	public AccountIdGenerationException(String arg0, Throwable arg1, boolean arg2, boolean arg3) {
		super(arg0, arg1, arg2, arg3);

	}

	public AccountIdGenerationException(String arg0, Throwable arg1) {
		super(arg0, arg1);
	}

	public AccountIdGenerationException(String arg0) {
		super(arg0);
	}

	public AccountIdGenerationException(Throwable arg0) {
		super(arg0);

	}

}
