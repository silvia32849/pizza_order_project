package com.itwill.pizza.userinfo;

public class User {
	
	private String user_id;
	private String user_pw;
	private String user_name;
	private String user_email;
	private String user_address;
	private String user_phone;
	private String user_gender;
	private String user_jumin;
	
	public User() {
		// TODO Auto-generated constructor stub
	}
	
	public User(String userId, String userPw, String userName, String userEmail, 
					String userAddress, String userPhone, String userGender, String userJumin) {
		super();
		this.user_id = userId;
		this.user_pw = userPw;
		this.user_name = userName;
		this.user_email = userEmail;
		this.user_address = userAddress;
		this.user_phone = userPhone;
		this.user_gender = userGender;
		this.user_jumin = userJumin;
	}
	
	
	
	public String getUserId() {
		return user_id;
	}

	public void setUserId(String userId) {
		this.user_pw = userId;
	}

	public String getUserPw() {
		return user_name;
	}

	public void setUserPw(String userPw) {
		this.user_email = userPw;
	}

	public String getUserName() {
		return user_name;
	}

	public void setUserName(String userName) {
		this.user_name = userName;
	}

	public String getUserEmail() {
		return user_email;
	}

	public void setUserEmail(String userEmail) {
		this.user_email = userEmail;
	}

	public String getUserAddress() {
		return user_address;
	}

	public void setUserAddress(String userAddress) {
		this.user_address = userAddress;
	}

	public String getUserPhone() {
		return user_phone;
	}

	public void setUserPhone(String userPhone) {
		this.user_phone = userPhone;
	}

	public String getUserGender() {
		return user_gender;
	}

	public void setUserGender(String userGender) {
		this.user_gender = userGender;
	}

	public String getUserJumin() {
		return user_jumin;
	}

	public void setUserJumin(String userJumin) {
		this.user_jumin = userJumin;
	}

	/*
	 *패스워드 일치여부 검사 
	 */
	public boolean isMatchPassword(String u_pw){
		boolean isMatch=false;
		if(this.user_pw.equals(user_pw)){
			isMatch=true;
		}
		return isMatch;
	}

	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", user_pw=" + user_pw + ", user_name=" + user_name + ", user_email="
				+ user_email + ", user_address=" + user_address + ", user_phone=" + user_phone + ", user_gender="
				+ user_gender + ", user_jumin=" + user_jumin + "]";
	}

	
	
	

}