<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<html>
	<body>
		
		<h1> WhozDaHottest Contestant Registration </h1>	
		
		<form:form modelAttribute="constestant">
			  
			  <label for="userNameInput">Create UserName: </label>
		      <form:input path="userName" id="userNameInput" />
		      <br/>
		      
		      <label for="stageName">Create stage name: </label>
		      <form:input path="stageName" id="stageNameInput" />
		      <br/>
		      
		       <label for="whoOrWhereURepresentInput">Who Or Where You Represent </label>
		      <form:input path="whoOrWhereURepresent" id="whoOrWhereURepresentInput" />
		      <br/>
		      
		      <label for="emailInput">Email: </label>
		      <form:input path="email" id="emailInput" />
		      <br/>
		     
		      <label for="stageNameInput">Create stage name: </label>
		      <form:input path="stageName" id="stageNameInput" />
		      <br/>
		      
		      <label for="twitterInput">Twitter ID: </label>
		      <form:input path="twitter" id="twitterInput" />
		      <br/>
		      
		      <label for="instagramInput">Instagram ID: </label>
		      <form:input path="instagram" id="instagramInput" />
		      <br/>
		      
		      <label for="facebookInput">Facebook ID: </label>
		      <form:input path="facebook" id="facebookInput" />
		      <br/>
		      
		      
		</form:form>
		
	</body>
</html>