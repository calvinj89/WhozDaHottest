package com.whozdahottest.form;

public class Contestant {
	
	String userName              = null;
	String userID                = null;
	String stageName             = null;
	String email                 = null;
	String whoOrWhereURepresent  = null;
	String bio                   = null;
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getStageName() {
		return stageName;
	}

	public void setStageName(String stageName) {
		this.stageName = stageName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getWhoOrWhereURepresent() {
		return whoOrWhereURepresent;
	}

	public void setWhoOrWhereURepresent(String whoOrWhereURepresent) {
		this.whoOrWhereURepresent = whoOrWhereURepresent;
	}

	public String getBio() {
		return bio;
	}

	public void setBio(String bio) {
		this.bio = bio;
	}

	public String getTwitter() {
		return twitter;
	}

	public void setTwitter(String twitter) {
		this.twitter = twitter;
	}

	public String getInstagram() {
		return instagram;
	}

	public void setInstagram(String instagram) {
		this.instagram = instagram;
	}

	public String getFacebook() {
		return facebook;
	}

	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public int getNumberOfVotes() {
		return numberOfVotes;
	}

	public void setNumberOfVotes(int numberOfVotes) {
		this.numberOfVotes = numberOfVotes;
	}

	String twitter               = null;
	String instagram             = null;
	String facebook              = null;
	User   user                  = null;
	int    numberOfVotes         = 0;
	
	/**
	 * 
	 */
	public Contestant(){
		//default constructor
	}
	
	/**
	 * 
	 */
	Contestant(String userName, String userID, String stageName, String email, String whoAndWhereUReprenst, 
				String bio, String twitter, String facebook, User user){
		
	}
	

}
