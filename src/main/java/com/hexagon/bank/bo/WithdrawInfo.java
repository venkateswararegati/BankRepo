package com.hexagon.bank.bo;

import java.util.Date;

public class WithdrawInfo {
	private String accNo;

	private String name;

	private Double amount;
	private Date withdrawTime;

	public String getAccNo() {
		return accNo;
	}

	public void setAccNo(String accNo) {
		this.accNo = accNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Double getAmount() {
		return amount;
	}

	public void setAmount(Double amount) {
		this.amount = amount;
	}

	public Date getWithdrawTime() {
		return withdrawTime;
	}

	public void setWithdrawTime(Date withdrawTime) {
		this.withdrawTime = withdrawTime;
	}

	@Override
	public String toString() {
		return "WithdrawInfo [accNo=" + accNo + ", name=" + name + ", amount=" + amount + ", withdrawTime="
				+ withdrawTime + "]";
	}

}
