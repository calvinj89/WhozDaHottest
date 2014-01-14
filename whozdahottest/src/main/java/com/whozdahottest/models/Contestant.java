package com.whozdahottest.models;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.hibernate.validator.constraints.Email; 
import org.springframework.web.multipart.MultipartFile;

public class Contestant {
	
	@NotNull
    @Size(min=1,max=20)
	private String userName              = null;
	
	@NotNull
    @Size(min=1,max=20)
	private String password              = null;
	
	@NotNull
    @Size(min=1,max=20)
	private String passwordConfirmation  = null;
	
	@NotNull
    @Size(min=1,max=20)
	private String stageName             = null;
	
	@Email
	private String email                 = null;
	
	@NotNull
    @Size(min=0,max=255)
	private String whoOrWhereURepresent  = null;
	
	@NotNull
    @Size(min=0,max=20)
	private String bio                   = null;
	
	@NotNull
    @Size(min=0,max=20)
	private String twitter               = null;
	
	private String instagram             = null;
	
	private String facebook              = null;
	
	
	private String googlePlus            = null;
	
	private User   user                  = null;
	private String userID                = null;
	private int    numberOfVotes         = 0;
	private MultipartFile file           = null;  
	private int numberOfWeeksConstestantWon = 0;
	
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
	
	/**
	 * 
	 * @return
	 */
	public String getUserName() {
		return userName;
	}

	/**
	 * 
	 * @param userName
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	/**
	 * 
	 * @return
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * 
	 * @param password
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * 
	 * @return
	 */
	public String getPasswordConfirmation() {
		return passwordConfirmation;
	}

	/**
	 * 
	 * @param password
	 */
	public void setPasswordConfirmation(String password) {
		this.passwordConfirmation = passwordConfirmation;
	}

	/**
	 * 
	 * @return
	 */
	public String getUserID() {
		return userID;
	}

	/**
	 * 
	 * @param userID
	 */
	public void setUserID(String userID) {
		this.userID = userID;
	}

	/**
	 * 
	 * @return
	 */
	public String getStageName() {
		return stageName;
	}

	/**
	 * 
	 * @param stageName
	 */
	public void setStageName(String stageName) {
		this.stageName = stageName;
	}

	/**
	 * 
	 * @return
	 */
	public String getEmail() {
		return email;
	}
    
	/**
	 * 
	 * @param email
	 */
	public void setEmail(String email) {
		this.email = email;
	}
    
	/**
     * 
     * @return
     */
	public String getWhoOrWhereURepresent() {
		return whoOrWhereURepresent;
	}

	/**
	 * 
	 * @param whoOrWhereURepresent
	 */
	public void setWhoOrWhereURepresent(String whoOrWhereURepresent) {
		this.whoOrWhereURepresent = whoOrWhereURepresent;
	}

	/**
	 * 
	 * @return
	 */
	public String getBio() {
		return bio;
	}

	/**
	 * 
	 * @param bio
	 */
	public void setBio(String bio) {
		this.bio = bio;
	}
	
	/**
	 * 
	 * @return
	 */
	public String getTwitter() {
		return twitter;
	}
    
	/**
	 * 
	 * @param twitter
	 */
	public void setTwitter(String twitter) {
		this.twitter = twitter;
	}
	
	/**
	 * 
	 * @return
	 */
	public String getInstagram() {
		return instagram;
	}

	/**
	 * 
	 * @param instagram
	 */
	public void setInstagram(String instagram) {
		this.instagram = instagram;
	}
    
	/**
	 * 
	 * @return
	 */
	public String getFacebook() {
		return facebook;
	}

	/**
	 * 
	 * @param facebook
	 */
	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}

	/**
	 * 
	 * @return
	 */
	public User getUser() {
		return user;
	}

	/**
	 * 
	 * @param user
	 */
	public void setUser(User user) {
		this.user = user;
	}

	/**
	 * 
	 * @return
	 */
	public int getNumberOfVotes() {
		return numberOfVotes;
	}

	/**
	 * 
	 * @param numberOfVotes
	 */
	public void setNumberOfVotes(int numberOfVotes) {
		this.numberOfVotes = numberOfVotes;
	}
	
	/**
	 * 
	 * @return
	 */
	public String getGooglePlus() {
		return googlePlus;
	}

	/**
	 * 
	 * @param googlePlus
	 */
	public void setGooglePlus(String googlePlus) {
		this.googlePlus = googlePlus;
	}
	
	/**
	 * 
	 * @return
	 */
	public MultipartFile getFile() {  
		return file;  
	}  
	  
	/**
	 * 
	 * @param file
	 */
	public void setFile(MultipartFile file) {  
		this.file = file;  
	} 
	
	/**
	 * 
	 * @return
	 */
	public int getNumberOfWeeksConstestantWon() {  
		return numberOfWeeksConstestantWon;  
	}  
	  
	/**
	 * 
	 * @param numberOfWeeksConstestantWon
	 */
	public void setFile(int numberOfWeeksConstestantWon) {  
		this.numberOfWeeksConstestantWon = numberOfWeeksConstestantWon;  
	} 

	
}
