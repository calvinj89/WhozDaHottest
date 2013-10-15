package com.whozdahottest.models;

public class User {
	
	String   userID  = null;
	String   videoID = null;
	UserRole role    = null;
	Video    video   = null;
	
	User(String userID){
		this.userID = userID;
	}

}
