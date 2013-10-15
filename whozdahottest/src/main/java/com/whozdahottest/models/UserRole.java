package com.whozdahottest.models;

public class UserRole {
	
	int    userRoleId;
	int    userId;
	String authority = null;
	
	/**
	 * 
	 * @param userRoleId
	 * @param userId
	 * @param authority
	 */
	public UserRole(int userRoleId, int userId, String authority){
		this.userRoleId = userRoleId;
		this.userId = userId;
		this.authority = authority;
	}

	/**
	 * 
	 * @return
	 */
	public int getUserRoleId() {
		return userRoleId;
	}

	/**
	 * 
	 * @param userRoleId
	 */
	public void setUserRoleId(int userRoleId) {
		this.userRoleId = userRoleId;
	}

	/**
	 * 
	 * @return
	 */
	public int getUserId() {
		return userId;
	}

	/**
	 * 
	 * @param userId
	 */
	public void setUserId(int userId) {
		this.userId = userId;
	}

	/**
	 * 
	 * @return
	 */
	public String getAuthority() {
		return authority;
	}

	/**
	 * 
	 * @param authority
	 */
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	
	
}
