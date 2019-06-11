package com.hexagon.bank.bo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "EDUCATIONAL_DETAILS")
public class PersonEducationalDetails {
	@Id
	@GeneratedValue(generator = "SEQUENCE", strategy = GenerationType.SEQUENCE)
	@Column(name = "EDUCATIONAL_ID")
	private int id;
	@Column(name = "SSC_BOARD")
	private String sscboard;

	@Column(name = "SSC_PASSED_YEAR")
	private String passedyear;

	@Column(name = "SSC_PERCENTAGE")
	private double spercentage;

	@Column(name = "INTER_BOARD")
	private String interboard;

	@Column(name = "INTER_PASSED_YEAR")
	private String interpassedyear;

	@Column(name = "INTER_PERCENTAGE")
	private double interpercentage;

	@Column(name = "DEGREE")
	private String degree;

	@Column(name = "DEGREE_INSTITUTION")
	private String institution;

	@Column(name = "DEGREE_PASSED_YEAR")
	private String dpassingyear;

	@Column(name = "DEGREE_PERCENTAGE")
	private double dpercentage;

	@Column(name = "POST_GRADUATION")
	private String postgraduation;

	@Column(name = "POST_INSTITUTION")
	private String pinstitution;

	@Column(name = "POST_PASSED_YEAR")
	private String postpassingyear;

	@Column(name = "POST_PERCENTAGE")
	private double postpercentage;
	@Column(name = "PROFESSIONAL_GRADUATION")
	private String pfgraduation;
	@Column(name = "PROFESSIONAL_INSTITUTION")
	private String pfinstitution;
	@Column(name = "PROFESSIONAL_PASSED_YEAR")
	private String pfpassingyear;
	@Column(name = "PROFESSIONAL_PERCENTAGE")
	private double pfpercentage;
	@Column(name = "OTHER_GRADUATION")
	private String othergraduation;
	@Column(name = "OTHER_INSTITUTION")
	private String otherinstitution;
	@Column(name = "OTHER_PASSED_YEAR")
	private String otherpassingyear;
	@Column(name = "OTHER_PERCENTAGE")
	private double otherpercentage;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSscboard() {
		return sscboard;
	}

	public void setSscboard(String sscboard) {
		this.sscboard = sscboard;
	}

	public String getPassedyear() {
		return passedyear;
	}

	public void setPassedyear(String passedyear) {
		this.passedyear = passedyear;
	}

	public double getSpercentage() {
		return spercentage;
	}

	public void setSpercentage(double spercentage) {
		this.spercentage = spercentage;
	}

	public String getInterboard() {
		return interboard;
	}

	public void setInterboard(String interboard) {
		this.interboard = interboard;
	}

	public String getInterpassedyear() {
		return interpassedyear;
	}

	public void setInterpassedyear(String interpassedyear) {
		this.interpassedyear = interpassedyear;
	}

	public double getInterpercentage() {
		return interpercentage;
	}

	public void setInterpercentage(double interpercentage) {
		this.interpercentage = interpercentage;
	}

	public String getDegree() {
		return degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	public String getInstitution() {
		return institution;
	}

	public void setInstitution(String institution) {
		this.institution = institution;
	}

	public String getDpassingyear() {
		return dpassingyear;
	}

	public void setDpassingyear(String dpassingyear) {
		this.dpassingyear = dpassingyear;
	}

	public double getDpercentage() {
		return dpercentage;
	}

	public void setDpercentage(double dpercentage) {
		this.dpercentage = dpercentage;
	}

	public String getPostgraduation() {
		return postgraduation;
	}

	public void setPostgraduation(String postgraduation) {
		this.postgraduation = postgraduation;
	}

	public String getPinstitution() {
		return pinstitution;
	}

	public void setPinstitution(String pinstitution) {
		this.pinstitution = pinstitution;
	}

	public String getPostpassingyear() {
		return postpassingyear;
	}

	public void setPostpassingyear(String postpassingyear) {
		this.postpassingyear = postpassingyear;
	}

	public double getPostpercentage() {
		return postpercentage;
	}

	public void setPostpercentage(double postpercentage) {
		this.postpercentage = postpercentage;
	}

	public String getPfgraduation() {
		return pfgraduation;
	}

	public void setPfgraduation(String pfgraduation) {
		this.pfgraduation = pfgraduation;
	}

	public String getPfinstitution() {
		return pfinstitution;
	}

	public void setPfinstitution(String pfinstitution) {
		this.pfinstitution = pfinstitution;
	}

	public String getPfpassingyear() {
		return pfpassingyear;
	}

	public void setPfpassingyear(String pfpassingyear) {
		this.pfpassingyear = pfpassingyear;
	}

	public double getPfpercentage() {
		return pfpercentage;
	}

	public void setPfpercentage(double pfpercentage) {
		this.pfpercentage = pfpercentage;
	}

	public String getOthergraduation() {
		return othergraduation;
	}

	public void setOthergraduation(String othergraduation) {
		this.othergraduation = othergraduation;
	}

	public String getOtherinstitution() {
		return otherinstitution;
	}

	public void setOtherinstitution(String otherinstitution) {
		this.otherinstitution = otherinstitution;
	}

	public String getOtherpassingyear() {
		return otherpassingyear;
	}

	public void setOtherpassingyear(String otherpassingyear) {
		this.otherpassingyear = otherpassingyear;
	}

	public double getOtherpercentage() {
		return otherpercentage;
	}

	public void setOtherpercentage(double otherpercentage) {
		this.otherpercentage = otherpercentage;
	}

	@Override
	public String toString() {
		return "PersonEducationalDetails [id=" + id + ", sscboard=" + sscboard + ", passedyear=" + passedyear
				+ ", spercentage=" + spercentage + ", interboard=" + interboard + ", interpassedyear=" + interpassedyear
				+ ", interpercentage=" + interpercentage + ", degree=" + degree + ", institution=" + institution
				+ ", dpassingyear=" + dpassingyear + ", dpercentage=" + dpercentage + ", postgraduation="
				+ postgraduation + ", pinstitution=" + pinstitution + ", postpassingyear=" + postpassingyear
				+ ", postpercentage=" + postpercentage + ", pfgraduation=" + pfgraduation + ", pfinstitution="
				+ pfinstitution + ", pfpassingyear=" + pfpassingyear + ", pfpercentage=" + pfpercentage
				+ ", othergraduation=" + othergraduation + ", otherinstitution=" + otherinstitution
				+ ", otherpassingyear=" + otherpassingyear + ", otherpercentage=" + otherpercentage + "]";
	}

}
