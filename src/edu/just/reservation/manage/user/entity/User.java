package edu.just.reservation.manage.user.entity;


import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class User implements Serializable {

	private String id;
	private String name;
	private String account;
	private String password;

	private String headImg;
	private boolean gender;
	private String state;
	private String mobile;
	private String email;
	private Date birthday;
	private String memo;
	private List<UserRole> userRoles;

	// 用户状态
	public static String USER_STATE_VALID = "1";// 有效
	public static String USER_STATE_INVALID = "0";// 无效

	public User() {
	}

	public User(String id, String name, String account,
			String password, String headImg, boolean gender, String state,
			String mobile, String email, Date birthday, String memo) {
		this.id = id;
		this.name = name;
		this.account = account;
		this.password = password;
		this.headImg = headImg;
		this.gender = gender;
		this.state = state;
		this.mobile = mobile;
		this.email = email;
		this.birthday = birthday;
		this.memo = memo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getHeadImg() {
		return headImg;
	}

	public void setHeadImg(String headImg) {
		this.headImg = headImg;
	}

	public boolean isGender() {
		return gender;
	}

	public void setGender(boolean gender) {
		this.gender = gender;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public List<UserRole> getUserRoles() {
		return userRoles;
	}

	public void setUserRoles(List<UserRole> userRoles) {
		this.userRoles = userRoles;
	}

}
