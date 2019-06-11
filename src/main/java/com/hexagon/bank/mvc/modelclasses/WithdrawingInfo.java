package com.hexagon.bank.mvc.modelclasses;

public class WithdrawingInfo {
	private String accNo;
	private String holderName;

	private String money;

	public String getAccNo() {
		return accNo;
	}

	public void setAccNo(String accNo) {
		this.accNo = accNo;
	}

	public String getHolderName() {
		return holderName;
	}

	public void setHolderName(String holderName) {
		this.holderName = holderName;
	}

	public String getMoney() {
		return money;
	}

	public void setMoney(String money) {
		this.money = money;
	}

	@Override
	public String toString() {
		return "DepositingInfo [accNo=" + accNo + ", holderName=" + holderName + ", money=" + money + "]";
	}
}
