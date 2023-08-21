package com.itwill.pizza.userinfo;

public class User {
	
	private String userId;
	private String userPw;
	private String userName;
	private String userEmail;
	private String userAddress;
	private String userPhone;
	private String userGender;
	private String userJumin;
	
	public User() {
		// TODO Auto-generated constructor stub
	}
	
	public User(String userId, String userPw, String userName, String userEmail, 
					String userAddress, String userPhone, String userGender, String userJumin) {
		super();
		this.userId = userId;
		this.userPw = userPw;
		this.userName = userName;
		this.userEmail = userEmail;
		this.userAddress = userAddress;
		this.userPhone = userPhone;
		this.userGender = userGender;
		this.userJumin = userJumin;
	}
	
	
	
	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserGender() {
		return userGender;
	}

	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}

	public String getUserJumin() {
		return userJumin;
	}

	public void setUserJumin(String userJumin) {
		this.userJumin = userJumin;
	}

	/*
	 *패스워드 일치여부 검사 
	 */
	public boolean isMatchPassword(String u_pw){
		boolean isMatch=false;
		if(this.userPw.equals(userPw)){
			isMatch=true;
		}
		return isMatch;
	}

	@Override
	public String toString() {
		return "UserInfo [userId=" + userId + ", userPw=" + userPw + ", userName=" + userName + ", userEmail="
				+ userEmail + ", userAddress=" + userAddress + ", userPhone=" + userPhone + ", userGender=" + userGender
				+ ", userJumin=" + userJumin + "]";
	}
	
	/*
	 * @Override public String toString() { return "UserInfo [u_id=" + u_id +
	 * ", u_pw=" + u_pw + ", u_name=" + u_name + ", u_email=" + u_email +
	 * ", u_address=" + u_address + ", u_phone=" + u_phone +"]"; }
	 */

}