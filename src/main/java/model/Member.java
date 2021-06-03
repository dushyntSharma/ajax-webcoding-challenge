package model;

public class Member {
	private String firstname;
	private String lastname;
	private String email;
	private String address;
	private String gender;
	private String mobile;
	private String pass;
	private String cpass;

	public Member(String firstname, String lastname, String email, String address, String gender, String mobile,
			String pass, String cpass) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.address = address;
		this.gender = gender;
		this.mobile = mobile;
		this.pass = pass;
		this.cpass = cpass;
	}

	public Member(String firstname, String lastname, String email, String address, String gender, String mobile) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.address = address;
		this.gender = gender;
		this.mobile = mobile;
	}

	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getCpass() {
		return cpass;
	}

	public void setCpass(String cpass) {
		this.cpass = cpass;
	}

	@Override
	public String toString() {
		return "Member [firstname=" + firstname + ", lastname=" + lastname + ", email=" + email + ", address=" + address
				+ ", gender=" + gender + ", mobile=" + mobile + ", pass=" + pass + ", cpass=" + cpass + "]";
	}

}
