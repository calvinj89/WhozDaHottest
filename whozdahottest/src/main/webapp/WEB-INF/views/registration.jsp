<%@ page language="java" contentType="text/html; charset=ISO-8859-1"   pageEncoding="ISO-8859-1"%>  
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> 

<head>
<style>
.error {
	color: #ff0000;
}
 
.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
</head>

<html>
	<body>
		
		<h1> WhozDaHottest Contestant Registration </h1>	
		
		<form:form method="post" action="registrationForm" commandName="contestant"  enctype="multipart/form-data">
			
			 <table > 
				 <tbody>
					<tr>  
						<td><label for="userNameInput">Enter User Name: </label></td>
						<td><form:input path="userName" id="userNameInput"></form:input></td>  
						<td><form:errors path="userName" cssClass="error" /></td>
					</tr>  
					<tr>  
						<td><label for="stageNameInput">Enter Stage Name: </label></td>
						<td><form:input path="stageName" id="stageNameInput"></form:input></td>  
						<td><form:errors path="stageName" cssClass="error" /></td>
					</tr>
					<tr>  
						<td  valign="top"><label for="whoOrWhereURepresentInput">Who and Where U Represent: </label></td>
						<td><form:textarea path="whoOrWhereURepresent" id="whoOrWhereURepresentInput" rows="5" cols="30"></form:textarea></td>  
						<td><form:errors path="whoOrWhereURepresent" cssClass="error" /></td>
					</tr>
					<tr>  
						<td><label for="passwordInput">Enter Password: </label></td>
						<td><form:input path="password" id="passwordInput"></form:input></td>  
						<td><form:errors path="password" cssClass="error" /></td>
					</tr>  
					<tr>  
						<td><label for="passwordConfirmationInput">Confirm Password: </label></td>
						<td><form:input path="passwordConfirmation" id="passwordConfirmationInput"></form:input></td>  
						<td><form:errors path="passwordConfirmation" cssClass="error" /></td>
					</tr>  
					<tr>  
						<td><label for="emailInput">Enter Email: </label></td>
						<td><form:input path="email" id="emailInput"></form:input></td>  
						<td><form:errors path="email" cssClass="error" /></td>
					</tr>
					<tr>  
						<td><label for="twiiterInput">Twiiter: </label></td>
						<td><form:input path="twitter" id="twiiterInput" ></form:input></td>  
						<td><form:errors path="twitter" cssClass="error" /></td>
					</tr>
					<tr>  
						<td><label for="instagramInput">Instagram: </label></td>
						<td><form:input path="instagram" id="instagramInput"></form:input></td>  
						<td><form:errors path="instagram" cssClass="error" /></td>
					</tr>
					<tr>  
						<td><label for="facebookInput">Instagram: </label></td>
						<td><form:input path="facebook" id="facebookInput"></form:input></td>  
						<td><form:errors path="facebook" cssClass="error" /></td>
					</tr>
					 <tr>  
     					<td><label for="file">Upload Video file: </label></td>  
    					<td><form:input type="file"  path="file" /></td>
     					<td style="color: red; font-style: italic;"><form:errors path="file" /></td>
     				</tr>  
				</tbody>
			</table>
			
				<input type="submit" value="Submit" /> 
		      
		</form:form>
		
	</body>
</html>