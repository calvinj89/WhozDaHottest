<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<html>
	<body>
		
		<h1> WhozDaHottest Contestant Registration </h1>	
		
		<form:form method="post" action="registrationForm" modelAttribute="constestant" enctype="multipart/form-data">
			 <table > 
				  <tr>
				  	<td><label for="userNameInput">Create UserName: </label></td>
			      	<td><form:input path="userName" id="userNameInput" /></td>
			      </tr>
			       <tr>
				  	<td><label for="passwordInput">Create password: </label></td>
			      	<td><form:password path="password" id="passwordInput" /></td>
			      </tr>
			       <tr>
				  	<td><label for="passwordConfirmationInput">Confirm password: </label></td>
			      	<td><form:password path="passwordConfirmation" id="passwordConfirmationInput" /></td>
			      </tr>
			      <tr>
			      	<td><label for="stageName">Create stage name: </label></td>
			      	<td><form:input path="stageName" id="stageNameInput" /></td>
			      </tr>
			      <tr>
			       	<td><label for="whoOrWhereURepresentInput">Who Or Where You Represent </label></td>
			      	<td><form:input path="whoOrWhereURepresent" id="whoOrWhereURepresentInput" /></td>
			      </tr>
			      <tr>
			      	<td><label for="emailInput">Email: </label></td>
			      	<td><form:input path="email" id="emailInput" /></td>
			     </tr>
			     <tr> 
			      	<td><label for="stageNameInput">Create stage name: </label></td>
			      	<td><form:input path="stageName" id="stageNameInput" /></td>
			     </tr>
			     <tr>
			      	<td><label for="twitterInput">Twitter ID: </label></td>
			      	<td><form:input path="twitter" id="twitterInput" /></td>
			     </tr>
			     <tr>
			      	<td><label for="instagramInput">Instagram ID: </label></td>
			      	<td><form:input path="instagram" id="instagramInput" /></td>
			     </tr>
			     <tr>
			      	<td><label for="facebookInput">Facebook ID: </label></td>
			      	<td><form:input path="facebook" id="facebookInput" /></td>
			     </tr>
			     <tr>
			      	<td><label for="googlePlusInput">Facebook ID: </label></td>
			      	<td><form:input path="googlePlus" id="googlePlusInput" /></td>
			     </tr>
			     <tr>
			     	<td>Please select a file to upload : <input type="file" name="file" /></td>
			     </tr>
			 </table>
			     <input type="submit" value="Submit" /> 
		      
		</form:form>
		
	</body>
</html>