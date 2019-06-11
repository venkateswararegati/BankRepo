package com.hexagon.bank.bo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.hibernate.annotations.UpdateTimestamp;

@Entity
@Table(name = "SAVINGTYPE_OPERATIONS")
public class DepositInfo {
	@Id
	@Column(name = "ACCOUNT_NUMBER", length = 16)
	private String accNo;

	@Column(name = "ACCOUNT_HOLDER_NAME")
	private String name;

	@Column(name = "DEPOSITED_MONEY")
	private Double amount;

	@UpdateTimestamp
	@Temporal(value = TemporalType.TIMESTAMP)
	@Column(name = "ACCOUNT_DEPOSITED_DATE")
	private Date depositedTime;

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

	public Date getDepositedTime() {
		return depositedTime;
	}

	public void setDepositedTime(Date depositedTime) {
		this.depositedTime = depositedTime;
	}

	@Override
	public String toString() {
		return "DepositInfo [id=" + accNo + ", name=" + name + ", amount=" + amount + ", depositedTime=" + depositedTime
				+ "]";
	}

}
