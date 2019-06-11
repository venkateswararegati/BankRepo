package com.hexagon.bank.controller.requestprocessing;

import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hexagon.bank.bo.DepositInfo;
import com.hexagon.bank.bo.PersonDetails;
import com.hexagon.bank.bo.WithdrawInfo;
import com.hexagon.bank.exceptions.customexceptions.CustomViolationException;
import com.hexagon.bank.exceptions.customexceptions.InSufficientAmountException;
import com.hexagon.bank.exceptions.customexceptions.InvalidAmountException;
import com.hexagon.bank.info.accountInfo.AccountInfo;
import com.hexagon.bank.mvc.modelclasses.BankUsersdetailsmodel;
import com.hexagon.bank.mvc.modelclasses.DepositingInfo;
import com.hexagon.bank.mvc.modelclasses.WithdrawingInfo;
import com.hexagon.bank.service.ServiceProvider;

/**
 * @author venky controller to process the request from client
 *
 */
@Controller
@RequestMapping("/")
public class BankController {

	@Autowired
	ServiceProvider service;

	/**
	 * @author venky get method to load login page
	 *
	 */
	@RequestMapping(method = RequestMethod.GET, value = "/bankloginpage")
	public String getBankLoginPage() {
		System.out.println("BankController.gtBankLoginPage()");
		return "BankLoginPage";
	}

	/**
	 * @author venky after getting user data again return to success page
	 *
	 */
	@RequestMapping(method = RequestMethod.GET, value = "/successpage")
	public String getsuccessPage() {
		System.out.println("BankController.getsuccessPage()");
		return "success";
	}

	/**
	 * @author venky for customer registration
	 * @param Holder
	 *            profile
	 * @return string(logical view name)
	 */
	@RequestMapping(method = RequestMethod.POST, value = "/addcustemerdetaills")
	@ExceptionHandler(value = Exception.class)
	public String postDatatoDatabase(@ModelAttribute("ud") BankUsersdetailsmodel ud, Map<String, Object> map) {
		AccountInfo info = null;
		System.out.println("Get method got called");
		System.out.println(ud.toString());

		try {
			info = service.addCustomerDetails(ud);
			map.put("info", info);
			System.out.println(info);
		} catch (Exception e) {
			if (e instanceof CustomViolationException) {
				map.put("info", info);
				map.put("violationMsg", e.getMessage());
				System.out.println(e.getMessage());
				return "ConstraintViolationErrorpage";
			}
			return "ConstraintViolationErrorpage";
		}
		return "success";
	}

	/**
	 * @author venky to get customer data based on name
	 * @param customer
	 *            name
	 * @return string(logical view name)
	 *
	 */
	@RequestMapping(method = RequestMethod.POST, value = "/searchjsp")
	public String getsearchjsppage(@RequestParam("personName") String name, Map<String, Object> map) {
		System.out.println("BankController.getsearchjsppage()");
		PersonDetails details = null;
		try {
			details = service.fetchPersonDataBasedOnId(name);
			System.out.println(details);
			// get address object
			if (details != null) {
				map.put("pDetails", details);
				System.out.println(details);
			}
		} catch (Exception e) {

			if (e instanceof NullPointerException) {
				map.put("invalidname", e.getMessage());
				System.out.println(details);
				return "InvalidNameErrorPage";
			}
			return "InvalidNameErrorPage";
		}
		return "PersonDetailsFormatter";
	}

	/**
	 * @author venky to check valid user or not for updation page
	 */
	@RequestMapping(method = RequestMethod.GET, value = "/userValidationPage")
	public String loadingValidationPage() {
		System.out.println("BankController.validateuUserDetails()");
		return "UserValidationPageForEdit";
	}

	/**
	 * @author venky to check valid user or not for updation page
	 */
	@RequestMapping(method = RequestMethod.GET, value = "/validatingpage")
	public String validateuUserDetails(@RequestParam("accNo") String accountNo,
			@RequestParam("holderName") String holderName, Map<String, Object> map) {
		System.out.println("BankController.validateuUserDetails()");
		AccountInfo info = null;
		PersonDetails details = null;
		info = new AccountInfo();
		info.setAccountHolderGenerationId(accountNo);
		info.setHolderName(holderName);
		try {
			details = service.fetchUserCredentials(info);
			System.out.println(details);
			if (details != null) {
				map.put("pDetails", details);
				System.out.println(details);
			}
		} catch (Exception e) {

			if (e instanceof NullPointerException) {
				info.setConfirmationMessage(e.getMessage());
				map.put("userinfo", info);
				System.out.println(details);
				return "InvalidCredentialsErrorpage";
			}
			return "InvalidCredentialsErrorpage";
		}
		return "UpdationPage";
	}

	/**
	 * @author venky to load deposit page to deposit money
	 */
	@RequestMapping(method = RequestMethod.GET, value = "/depositpage")
	public String loadingDepositPage() {
		System.out.println("BankController.loadingDepositPage()");
		return "DepositPage";
	}

	/**
	 * @author venky to load deposit page to deposit money
	 */
	@RequestMapping(method = RequestMethod.GET, value = "/withdrawpage")
	public String loadingWithdrawPage() {
		System.out.println("BankController.loadingWithdrawPage()");
		return "WithdrawPage";
	}

	/**
	 * @author venky to process the request to deposit
	 */
	@RequestMapping(method = RequestMethod.GET, value = "/depositing")
	public String DepositingPage(@ModelAttribute("deposit") DepositingInfo deposit, Map<String, Object> map) {
		System.out.println("BankController.DepositingPage()");
		try {
			DepositInfo depositedDetails = service.depositingAmount(deposit);
			if (depositedDetails != null) {
				map.put("depositedDetails", depositedDetails);
				map.put("depositingDetails", deposit);
			} else
				return "WhileDepositingCommonErrors";
		} catch (Exception e) {
			if (e instanceof IllegalArgumentException) {
				map.put("ErrMsg", e.getMessage());
				return "whileDepositingInvalidAmmountError";
			} else {
				return "WhileDepositingCommonErrors";
			}
		}

		return "SuccessfullyDeposited";
	}

	/**
	 * @author venky to process the request to withdraw
	 */
	@RequestMapping(method = RequestMethod.GET, value = "/withdrawing")
	public String WithdrawlPage(@ModelAttribute("withdraw") WithdrawingInfo withdraw, Map<String, Object> map) {
		System.out.println("BankController.WithdrawlPage()");
		WithdrawInfo withdrawinfo = null;
		try {
			withdrawinfo = service.withdrawingAmount(withdraw);
			if (withdrawinfo != null) {
				map.put("withdrawinfo", withdrawinfo);
				map.put("beforewithdrawdetails", withdraw);
			} else
				return "WhileWithdrawingCommonErrors";
		} catch (Exception e) {
			if (e instanceof IllegalArgumentException) {
				map.put("ErrMsg", e.getMessage());
				return "WhileWithdrawingInvalidAmmountError";
			} else if (e instanceof InSufficientAmountException) {
				map.put("ErrMsg", e.getMessage());
				return "WhileWithdrawingInvalidAmmountError";
			} else if (e instanceof InvalidAmountException) {
				map.put("ErrMsg", e.getMessage());
				return "WhileWithdrawingInvalidAmmountError";
			} else
				return "WhileWithdrawingCommonErrors";

		}
		return "SuccessfullyWithdraw";
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/credentialspage")
	public String toLoadAccountInfo() {
		System.out.println("BankController.toLoadAccountInfo()");
		return "UserValidationPageforAccountInfo";
	}
	/**
	 * @author venky to check valid user or not for updation page
	 */
	@RequestMapping(method = RequestMethod.GET, value = "/findcredentialsforaccountinfo")
	public String validateuUseDetails(@RequestParam("accNo") String accountNo,
			@RequestParam("holderName") String holderName, Map<String, Object> map) {
		System.out.println("BankController.validateuUserDetails()");
		AccountInfo info = null;
		DepositInfo accountdetails = null;
		//setting param values to account info
		info = new AccountInfo();
		info.setAccountHolderGenerationId(accountNo);
		info.setHolderName(holderName);
		try {
			accountdetails = service.fetchUserCredentialsForAccountInfo(info);
			System.out.println(accountdetails);
			if (accountdetails != null) {
				map.put("accountdetails", accountdetails);
				System.out.println(accountdetails);
			}
		} catch (Exception e) {

			if (e instanceof NullPointerException) {
				info.setConfirmationMessage(e.getMessage());
				map.put("userinfo", info);
				System.out.println(accountdetails);
				return "InvalidCredentialsErrorpage";
			}
			return "InvalidCredentialsErrorpage";
		}
		return "AccountInfo";
	}

}
