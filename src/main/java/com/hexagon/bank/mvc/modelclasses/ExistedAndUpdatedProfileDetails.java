package com.hexagon.bank.mvc.modelclasses;

public class ExistedAndUpdatedProfileDetails {
	private String id;
	private String name;
	private String fname;
	private String date;
	private String mail;
	private String mnumber;
	private String adharNumber;
	private String pannumber;
	private String village;
	private String city;
	private String district;
	private String state;
	private String pincode;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		if (name.length() == 0 || name == "" || name == null) {
			this.name = null;
		} else
			this.name = name;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		if (fname.length() == 0 || fname == "" || fname == null) {
			this.fname = null;
		} else
			this.fname = fname;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		if (date.length() == 0 || date == "" || date == null) {
			this.date = null;
		} else
			this.date = date;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		if (mail.length() == 0 || mail == "" || mail == null) {
			this.mail = null;
		} else
			this.mail = mail;
	}

	public String getMnumber() {
		return mnumber;
	}

	public void setMnumber(String mnumber) {
		if (mnumber.length() == 0 || mnumber == "" || mnumber == null) {
			this.mnumber = null;
		} else
			this.mnumber = mnumber;
	}

	public String getAdharNumber() {
		return adharNumber;
	}

	public void setAdharNumber(String adharNumber) {
		if (adharNumber.length() == 0 || adharNumber == "" || adharNumber == null) {
			this.adharNumber = null;
		} else
			this.adharNumber = adharNumber;
	}

	public String getPannumber() {
		return pannumber;
	}

	public void setPannumber(String pannumber) {
		if (pannumber.length() == 0 || pannumber == "" || pannumber == null) {
			this.pannumber = null;
		} else
			this.pannumber = pannumber;
	}

	public String getVillage() {
		return village;
	}

	public void setVillage(String village) {
		if (village.length() == 0 || village == "" || village == null) {
			this.village = null;
		} else
			this.village = village;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		if (city.length() == 0 || city == "" || city == null) {
			this.city = null;
		} else
			this.city = city;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		if (district.length() == 0 || district == "" || district == null) {
			this.district = null;
		} else
			this.district = district;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		if (state.length() == 0 || state == "" || state == null) {
			this.state = null;
		} else
			this.state = state;
	}

	public String getPincode() {

		return pincode;
	}

	public void setPincode(String pincode) {
		if (pincode.length() == 0 || pincode == "" || pincode == null) {
			this.pincode = null;
		} else
			this.pincode = pincode;
	}

	@Override
	public String toString() {
		return "ExistedAndUpdatedProfileDetails [id=" + id + ", name=" + name + ", fname=" + fname + ", date=" + date
				+ ", mail=" + mail + ", mnumber=" + mnumber + ", adharNumber=" + adharNumber + ", pannumber="
				+ pannumber + ", village=" + village + ", city=" + city + ", district=" + district + ", state=" + state
				+ ", pincode=" + pincode + "]";
	}

}
