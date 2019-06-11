package com.hexagon.bank.dao;

import java.util.List;

import com.hexagon.bank.bo.DepositInfo;
import com.hexagon.bank.bo.PersonAddressDetails;
import com.hexagon.bank.bo.PersonDetails;
import com.hexagon.bank.bo.PersonEducationalDetails;
import com.hexagon.bank.bo.WithdrawInfo;
import com.hexagon.bank.info.accountInfo.AccountInfo;
import com.hexagon.bank.mvc.modelclasses.ExistedAndUpdatedProfileDetails;

public interface AccountCreationDao {
	public String savePersonDeatilsInDb(PersonDetails persondetails, PersonAddressDetails personaddressdetails,
			PersonEducationalDetails personEducationalDetails) throws Exception;

	public List<PersonDetails> RetrivePersonDataBasedOnId(String personName) throws Exception;

	public List<PersonDetails> RetrivePersonDetrailsBasedOnAccountInfo(AccountInfo info) throws Exception;

	public PersonDetails updateCustomerDataToExistedData(ExistedAndUpdatedProfileDetails updateData) throws Exception;

	public DepositInfo depositAmount(DepositInfo deposit) throws Exception;

	public WithdrawInfo withdrawAmount(WithdrawInfo withdraw) throws Exception;

	public WithdrawInfo getHowMuchAmmountAvailable(WithdrawInfo withdraw) throws Exception;

	List<DepositInfo> RetriveDepositInfoBasedOnAccountInfo(AccountInfo info) throws Exception;

}
