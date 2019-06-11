package com.hexagon.bank.bo;

import java.util.Date
;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.UpdateTimestamp;

@Entity
@Table(name = "PERSON_DETAILS", uniqueConstraints = @UniqueConstraint(columnNames = { "NAME", "AADHAR_NUMBER",
		"PAN_NUMBER" }))
public class PersonDetails {
	@Id
	@GeneratedValue(generator = "Custom_seq_gen")
	@GenericGenerator(name = "Custom_seq_gen", strategy = "com.hexagon.bank.customidgenerator.CustomAccountIdGenerator")
	@Column(name = "PERSON_ID")
	private String id;

	@Column(name = "NAME")
	private String name;

	@Column(name = "F_NAME")
	private String fname;

	@Column(name = "DATE_OF_BIRTH")
	private String date;

	@Column(name = "NATION")
	private String nation;

	@Column(name = "GENDER")
	private String gender;

	@Column(name = "M_STATUS")
	private String mstatus;

	@Column(name = "E_MAIL")
	private String mail;

	@Column(name = "M_NUMBER")
	private long mnumber;

	@Column(name = "CAST")
	private String cast;

	@Column(name = "AADHAR_NUMBER")
	private long adharNumber;

	@Column(name = "PAN_NUMBER")
	private String pannumber;

	@Column(name = "ACCOUNT_TYPE")
	private String acType;

	@CreationTimestamp
	@Temporal(value = TemporalType.TIMESTAMP)
	@Column(name = "ACCOUNT_CREATION_DATE")
	private Date accountCreationDate;

	@UpdateTimestamp
	@Temporal(value = TemporalType.TIMESTAMP)
	@Column(name = "ACCOUNT_MODIFIED_DATE")
	private Date accountModifiedDate;

	@OneToOne(targetEntity = PersonAddressDetails.class, cascade = CascadeType.ALL)
	@JoinColumn(name = "ADDRESS_ID")
	private PersonAddressDetails pAD;

	@OneToOne(targetEntity = PersonEducationalDetails.class, cascade = CascadeType.ALL)
	@JoinColumn(name = "EDUCATIONAL_ID")
	private PersonEducationalDetails pEduD;

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
		this.name = name;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getMstatus() {
		return mstatus;
	}

	public void setMstatus(String mstatus) {
		this.mstatus = mstatus;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public long getMnumber() {
		return mnumber;
	}

	public void setMnumber(long mnumber) {
		this.mnumber = mnumber;
	}

	public String getCast() {
		return cast;
	}

	public void setCast(String cast) {
		this.cast = cast;
	}

	public long getAdharNumber() {
		return adharNumber;
	}

	public void setAdharNumber(long adharNumber) {
		this.adharNumber = adharNumber;
	}

	public String getPannumber() {
		return pannumber;
	}

	public void setPannumber(String pannumber) {
		this.pannumber = pannumber;
	}

	public String getAcType() {
		return acType;
	}

	public void setAcType(String acType) {
		this.acType = acType;
	}

	public Date getAccountCreationDate() {
		return accountCreationDate;
	}

	public void setAccountCreationDate(Date accountCreationDate) {
		this.accountCreationDate = accountCreationDate;
	}

	public Date getAccountModifiedDate() {
		return accountModifiedDate;
	}

	public void setAccountModifiedDate(Date accountModifiedDate) {
		this.accountModifiedDate = accountModifiedDate;
	}

	public PersonAddressDetails getPersonAddressDetials() {
		return pAD;
	}

	public void setPersonAddressDetials(PersonAddressDetails personAddressDetials) {
		this.pAD = personAddressDetials;
	}

	public PersonEducationalDetails getPersonEducationalDetails() {
		return pEduD;
	}

	public void setPersonEducationalDetails(PersonEducationalDetails personEducationalDetails) {
		this.pEduD = personEducationalDetails;
	}

	@Override
	public String toString() {
		return "PersonDetails [id=" + id + ", name=" + name + ", fname=" + fname + ", date=" + date + ", nation="
				+ nation + ", gender=" + gender + ", mstatus=" + mstatus + ", mail=" + mail + ", mnumber=" + mnumber
				+ ", cast=" + cast + ", adharNumber=" + adharNumber + ", pannumber=" + pannumber + ", acType=" + acType
				+ ", accountCreationDate=" + accountCreationDate + ", accountModifiedDate=" + accountModifiedDate
				+ ", pAD=" + pAD + ", pEduD=" + pEduD + "]";
	}

}
