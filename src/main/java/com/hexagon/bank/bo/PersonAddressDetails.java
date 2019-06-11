package com.hexagon.bank.bo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ADDRESS_DETAILS")
public class PersonAddressDetails {
	@Id
	@GeneratedValue(generator = "SEQUENCE", strategy = GenerationType.SEQUENCE)
	@Column(name = "ADDRESS_ID")
	private int id;
	@Column(name = "VILLAGE")
	private String village;
	@Column(name = "CITY")
	private String city;
	@Column(name = "DISTRICT")
	private String district;
	@Column(name = "STATE")
	private String state;
	@Column(name = "PINCODE")
	private long pincode;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getVillage() {
		return village;
	}

	public void setVillage(String village) {
		this.village = village;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public long getPincode() {
		return pincode;
	}

	public void setPincode(long pincode) {
		this.pincode = pincode;
	}

	@Override
	public String toString() {
		return "PersonAddressDetails [id=" + id + ", village=" + village + ", city=" + city + ", district=" + district
				+ ", state=" + state + ", pincode=" + pincode + "]";
	}

}
