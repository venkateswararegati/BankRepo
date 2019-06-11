package com.hexagon.bank.service;

import com.hexagon.bank.bo.DepositInfo;
import com.hexagon.bank.bo.PersonDetails;
import com.hexagon.bank.bo.WithdrawInfo;
import com.hexagon.bank.info.accountInfo.AccountInfo;
import com.hexagon.bank.mvc.modelclasses.BankUsersdetailsmodel;
import com.hexagon.bank.mvc.modelclasses.DepositingInfo;
import com.hexagon.bank.mvc.modelclasses.ExistedAndUpdatedProfileDetails;
import com.hexagon.bank.mvc.modelclasses.WithdrawingInfo;

public interface ServiceProvider {
	public AccountInfo addCustomerDetails(BankUsersdetailsmodel ud) throws Exception;

	public PersonDetails fetchPersonDataBasedOnId(String PersonName) throws Exception;

	public PersonDetails fetchUserCredentials(AccountInfo info) throws Exception;

	public PersonDetails UpdateCustomerDetails(ExistedAndUpdatedProfileDetails existedandup) throws Exception;

	public DepositInfo depositingAmount(DepositingInfo deposit) throws Exception;

	public WithdrawInfo withdrawingAmount(WithdrawingInfo withdrawing) throws Exception;

	public DepositInfo fetchUserCredentialsForAccountInfo(AccountInfo info) throws Exception;

}
