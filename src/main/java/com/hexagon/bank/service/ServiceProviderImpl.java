package com.hexagon.bank.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hexagon.bank.bo.DepositInfo;
import com.hexagon.bank.bo.PersonAddressDetails;
import com.hexagon.bank.bo.PersonDetails;
import com.hexagon.bank.bo.PersonEducationalDetails;
import com.hexagon.bank.bo.WithdrawInfo;
import com.hexagon.bank.commons.utils.StringToDoubleConversionUtil;
import com.hexagon.bank.customidgenerator.CustomAccountIdGenerator;
import com.hexagon.bank.dao.AccountCreationDao;
import com.hexagon.bank.exceptions.customexceptions.CustomInvalidNameException;
import com.hexagon.bank.exceptions.customexceptions.CustomViolationException;
import com.hexagon.bank.exceptions.customexceptions.InSufficientAmountException;
import com.hexagon.bank.exceptions.customexceptions.UpdationFailedException;
import com.hexagon.bank.info.accountInfo.AccountInfo;
import com.hexagon.bank.mvc.modelclasses.BankUsersdetailsmodel;
import com.hexagon.bank.mvc.modelclasses.DepositingInfo;
import com.hexagon.bank.mvc.modelclasses.ExistedAndUpdatedProfileDetails;
import com.hexagon.bank.mvc.modelclasses.WithdrawingInfo;

/**
 * @author venky
 * 
 */
@Service
public class ServiceProviderImpl implements ServiceProvider {
	@Autowired
	AccountCreationDao dao;

	private PersonDetails persondetails;
	private PersonAddressDetails personaddressdetails;
	private PersonEducationalDetails personEducationalDetails;
	private AccountInfo accountInfo;
	private DepositInfo depositing;
	private WithdrawInfo withdraw;

	/**
	 * @author venky
	 * @param BankUsersdetailsmodel
	 * @return String And the purpose of the method is setting data to bo classes
	 *         and invoking dao methods.
	 */
	@Override
	public AccountInfo addCustomerDetails(BankUsersdetailsmodel ud) throws Exception {
		// creation of pdetails object
		persondetails = new PersonDetails();

		// setting person details
		persondetails.setName(ud.getName().toUpperCase());
		persondetails.setFname(ud.getFname().toUpperCase());
		persondetails.setDate(ud.getDate());
		// set date to custom id generate
		CustomAccountIdGenerator.currentCustomerDateofBirthFormatter(ud.getDate());
		persondetails.setNation(ud.getNation().toUpperCase());
		persondetails.setGender(ud.getGender().toUpperCase());
		persondetails.setMstatus(ud.getMstatus().toUpperCase());
		persondetails.setMail(ud.getMail().toUpperCase());
		persondetails.setMnumber(Long.valueOf(ud.getMnumber()));
		persondetails.setCast(ud.getCast().toUpperCase());
		persondetails.setAdharNumber(Long.valueOf(ud.getAdharNumber()));
		persondetails.setPannumber(ud.getPannumber().toUpperCase());
		persondetails.setAcType(ud.getAcType().toUpperCase());
		System.out.println(persondetails);
		// setting person address details
		personaddressdetails = new PersonAddressDetails();

		personaddressdetails.setCity(ud.getCity().toUpperCase());
		personaddressdetails.setDistrict(ud.getDistrict().toUpperCase());
		personaddressdetails.setVillage(ud.getVillage().toUpperCase());
		personaddressdetails.setState(ud.getState().toUpperCase());
		personaddressdetails.setPincode(Long.valueOf(ud.getPincode()));
		System.out.println(personaddressdetails);

		// setting personEducationalDetails
		personEducationalDetails = new PersonEducationalDetails();

		// ssc board details
		personEducationalDetails.setSscboard(ud.getSscboard().toUpperCase());
		personEducationalDetails.setPassedyear(ud.getPassedyear().toUpperCase());
		personEducationalDetails
				.setSpercentage(StringToDoubleConversionUtil.stringToDoubleConversion(ud.getSpercentage()));
		// inter board details
		personEducationalDetails.setInterboard(ud.getInterboard().toUpperCase());
		personEducationalDetails.setInterpassedyear(ud.getInterpassedyear().toUpperCase());
		personEducationalDetails
				.setInterpercentage(StringToDoubleConversionUtil.stringToDoubleConversion(ud.getInterpercentage()));
		// degree institutional details
		personEducationalDetails.setDegree(ud.getDegree().toUpperCase());
		personEducationalDetails.setInstitution(ud.getInstitution().toUpperCase());
		personEducationalDetails.setDpassingyear(ud.getDpassingyear().toUpperCase());
		personEducationalDetails
				.setDpercentage(StringToDoubleConversionUtil.stringToDoubleConversion(ud.getDpercentage()));
		// post graduation detailas
		personEducationalDetails.setPostgraduation(ud.getPostgraduation().toUpperCase());
		personEducationalDetails.setPinstitution(ud.getPinstitution().toUpperCase());
		personEducationalDetails.setPostpassingyear(ud.getPostpassingyear().toUpperCase());
		personEducationalDetails
				.setPostpercentage(StringToDoubleConversionUtil.stringToDoubleConversion(ud.getPostpercentage()));
		// post professional details
		personEducationalDetails.setPfgraduation(ud.getPfgraduation().toUpperCase());
		personEducationalDetails.setPfinstitution(ud.getPfinstitution().toUpperCase());
		personEducationalDetails.setPfpassingyear(ud.getPfpassingyear().toUpperCase());
		personEducationalDetails
				.setPfpercentage(StringToDoubleConversionUtil.stringToDoubleConversion(ud.getPfpercentage()));
		// other professional details
		personEducationalDetails.setOthergraduation(ud.getOthergraduation().toUpperCase());
		personEducationalDetails.setOtherinstitution(ud.getOtherinstitution().toUpperCase());
		personEducationalDetails.setOtherpassingyear(ud.getOtherpassingyear().toUpperCase());
		personEducationalDetails
				.setOtherpercentage(StringToDoubleConversionUtil.stringToDoubleConversion(ud.getOtherpercentage()));
		System.out.println(personEducationalDetails);
		// creation account info instance
		accountInfo = new AccountInfo();
		try {
			// invocation of dao method
			String value = dao.savePersonDeatilsInDb(persondetails, personaddressdetails, personEducationalDetails);

			if (!(value == null)) {
				accountInfo.setAccountInfoData(value, ud.getName(), "successfully Bank Account Created !");
				return accountInfo;
			}
		} catch (Exception e) {
			if (e instanceof CustomViolationException) {
				throw new CustomViolationException("Already account Existed !!");
			}
			throw new Exception();
		}
		accountInfo.setAccountInfoData(null, ud.getName(), "Sorry Bank Account Creation failed  Re Login Again !");
		return accountInfo;

		// invoking dao retrieve method

	}

	/**
	 * @author venky
	 * @param person
	 *            name
	 * @return persondetails instance
	 */

	@Override
	public PersonDetails fetchPersonDataBasedOnId(String personName) throws Exception {
		List<PersonDetails> list = null;
		try {
			list = dao.RetrivePersonDataBasedOnId(personName);
			if (list.size() == 0) {
				return null;
			}
		} catch (Exception e) {
			if (e instanceof NullPointerException) {
				throw new CustomInvalidNameException("Your entered wrong name please enter correct name !!");
			}
			throw new Exception();
		}
		return list.get(list.size() - 1);
	}

	/**
	 * @author venky
	 * @param account
	 *            info
	 * @return person details based on account info fetch the person details.
	 */

	@Override
	public PersonDetails fetchUserCredentials(AccountInfo info) throws Exception {

		List<PersonDetails> list = null;
		try {
			list = dao.RetrivePersonDetrailsBasedOnAccountInfo(info);
			if (list.size() == 0) {
				return null;
			}
		} catch (Exception e) {
			if (e instanceof NullPointerException) {
				throw new CustomInvalidNameException("Your entered wrong customer credentials!!");
			}
			throw new Exception();
		}
		return list.get(list.size() - 1);
	}

	@Override
	public PersonDetails UpdateCustomerDetails(ExistedAndUpdatedProfileDetails existedandup) throws Exception {
		/* dao.updateNewDataToExistedData(existedandup); */

		try {
			return dao.updateCustomerDataToExistedData(existedandup);

		} catch (Exception e) {
			throw new UpdationFailedException("Customer details not updated please try again !");
		}

	}

	@Override
	public DepositInfo depositingAmount(DepositingInfo deposit) throws Exception {

		try {
			depositing = new DepositInfo();
			depositing.setAccNo(deposit.getAccNo());
			depositing.setName(deposit.getHolderName());
			Double amount = Double.valueOf(deposit.getMoney());
			if (amount > 0) {
				depositing.setAmount(Double.valueOf(deposit.getMoney()));
			} else {
				throw new IllegalArgumentException("Invalid Ammount please enter amount greater than 0");
			}
			return dao.depositAmount(depositing);

		} catch (Exception e) {
			throw e;
		}
		// set deposingInfo to depositinfo
	}

	@Override
	public WithdrawInfo withdrawingAmount(WithdrawingInfo withdrawing) throws Exception {

		try {
			withdraw = new WithdrawInfo();
			withdraw.setAccNo(withdrawing.getAccNo());
			withdraw.setName(withdrawing.getHolderName());
			Double amount = Double.valueOf(withdrawing.getMoney());
			// here amount should be greater than equal to 0
			if (amount > 0) {
				withdraw.setAmount(Double.valueOf(withdrawing.getMoney()));
			} else {
				throw new IllegalArgumentException("Invalid Ammount please enter amount greater than 0");
			}
			// call dao method to find how much amount is available if it is sufficient or
			// in sufficient
			WithdrawInfo details = dao.getHowMuchAmmountAvailable(withdraw);

			if (!(amount <= details.getAmount())) {
				throw new InSufficientAmountException("required amount is insufficient");

			} /*else if (!(amount >= 100 && amount % 10 == 0)) {
				throw new InvalidAmountException("Invalid amount please enter amount in 100 rupees or 500 rupees");
			} */else
				withdraw = dao.withdrawAmount(withdraw);

		} catch (Exception e) {
			withdraw = null;
			throw e;
		}
		return withdraw;
	}
	/**
	 * @author venky
	 * @param account
	 *            info
	 * @return person details based on account info fetch the person details.
	 */

	@Override
	public DepositInfo fetchUserCredentialsForAccountInfo(AccountInfo info) throws Exception {

		List<DepositInfo> list = null;
		try {
			list = dao.RetriveDepositInfoBasedOnAccountInfo(info);
			if (list.size() == 0) {
				return null;
			}
		} catch (Exception e) {
			if (e instanceof NullPointerException) {
				throw new CustomInvalidNameException("Your entered wrong customer credentials!!");
			}
			throw new Exception();
		}
		return list.get(list.size() - 1);
	}


}
