package com.hexagon.bank.info.accountInfo;

public class AccountInfo {
	private String accountHolderGenerationId;
	private String holderName;
	private String ConfirmationMessage;

	public String getAccountHolderGenerationId() {
		return accountHolderGenerationId;
	}

	public void setAccountHolderGenerationId(String accountHolderGenerationId) {
		this.accountHolderGenerationId = accountHolderGenerationId;
	}

	public String getHolderName() {
		return holderName;
	}

	public void setHolderName(String holderName) {
		this.holderName = holderName;
	}

	public String getConfirmationMessage() {
		return ConfirmationMessage;
	}

	public void setConfirmationMessage(String confirmationMessage) {
		ConfirmationMessage = confirmationMessage;
	}

	public void setAccountInfoData(String GenerationId, String holderName, String ConfirmationMessage) {
		this.accountHolderGenerationId = GenerationId;
		this.holderName = holderName;
		this.ConfirmationMessage = ConfirmationMessage;
	}

	@Override
	public String toString() {
		return "AccountInfo [accountHolderGenerationId=" + accountHolderGenerationId + ", holderName=" + holderName
				+ ", ConfirmationMessage=" + ConfirmationMessage + "]";
	}

}
