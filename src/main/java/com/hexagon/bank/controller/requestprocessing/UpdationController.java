package com.hexagon.bank.controller.requestprocessing;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hexagon.bank.bo.PersonDetails;
import com.hexagon.bank.mvc.modelclasses.ExistedAndUpdatedProfileDetails;
import com.hexagon.bank.service.ServiceProvider;

@Controller
@RequestMapping("/")
public class UpdationController {
	@Autowired
	ServiceProvider service;

	/*
	 * @author venky get method to save the updated details
	 *
	 */
	@RequestMapping(method = RequestMethod.POST, value = "/updatedetails")
	public String getBankLoginPage(@ModelAttribute("updatedDetails") ExistedAndUpdatedProfileDetails updatedDetails,
			Map<String, Object> map) {
		System.out.println("UpdationController.getBankLoginPage()");
		System.out.println(updatedDetails);
		PersonDetails details = null;
		try {
			details = service.UpdateCustomerDetails(updatedDetails);
			if (details != null) {
				map.put("afterupdatedDetails", details);
				map.put("updatedDetails", updatedDetails);
				/*
				 * if (updatedDetails.getName() != null && updatedDetails.getName().length() !=
				 * 0) { map.put(arg0, arg1); } if (updatedDetails.getFname() != null &&
				 * updatedDetails.getFname().length() != 0) { map.put(arg0, arg1); } if
				 * (updatedDetails.getDate() != null && updatedDetails.getDate().length() != 0)
				 * { map.put(arg0, arg1); } if (updatedDetails.getMail() != null &&
				 * updatedDetails.getMail().length() != 0) { map.put(arg0, arg1); } if
				 * (updatedDetails.getMnumber() != null && updatedDetails.getMnumber().length()
				 * != 0) { map.put(arg0, arg1); } if (updatedDetails.getAdharNumber() != null &&
				 * updatedDetails.getAdharNumber().length() != 0) { map.put(arg0, arg1); } if
				 * (updatedDetails.getPannumber() != null &&
				 * updatedDetails.getPannumber().length() != 0) { map.put(arg0, arg1); } if
				 * (updatedDetails.getVillage() != null && updatedDetails.getVillage().length()
				 * != 0) { map.put(arg0, arg1); } if (updatedDetails.getCity() != null &&
				 * updatedDetails.getCity().length() != 0) {
				 * 
				 * map.put(arg0, arg1); } if (updatedDetails.getDistrict() != null &&
				 * updatedDetails.getDistrict().length() != 0) { map.put(arg0, arg1);
				 * 
				 * } if (updatedDetails.getState() != null && updatedDetails.getState().length()
				 * != 0) { map.put(arg0, arg1); } if (updatedDetails.getPincode() != null &&
				 * updatedDetails.getPincode().length() != 0) { map.put(arg0, arg1); }
				 */
			}
			if (details == null) {
				return "NothingToUpdation";
			}

		} catch (Exception e) {

			return "UpdationError";
		}
		return "UpdationSuccess";
	}

}