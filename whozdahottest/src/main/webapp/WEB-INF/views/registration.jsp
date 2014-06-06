<%@ page language="java" contentType="text/html; charset=ISO-8859-1"   pageEncoding="ISO-8859-1"%>  
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> 

<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<style>
	#dragandrophandler
	{
		border:2px dotted #0B85A1;
		height: 150px;
		width:400px;
		color:#92AAB0;
		text-align:left;vertical-align:middle;
		padding:10px 10px 10 10px;
		margin-bottom:10px;
		font-size:200%;
	}
	.progressBar {
	    width: 200px;
	    height: 22px;
	    border: 1px solid #ddd;
	    border-radius: 5px; 
	    overflow: hidden;
	    display:inline-block;
	    margin:0px 10px 5px 5px;
	    vertical-align:top;
	}
 
	.progressBar div {
	    height: 100%;
	    color: #fff;
	    text-align: right;
	    line-height: 22px; /* same as #progressBar height if we want text middle aligned */
	    width: 0;
	    background-color: #0ba1b5; border-radius: 3px; 
	}
	.statusbar
	{
	    border-top:1px solid #A9CCD1;
	    min-height:25px;
	    width:700px;
	    padding:10px 10px 0px 10px;
	    vertical-align:top;
	}
	.statusbar:nth-child(odd){
	    background:#EBEFF0;
	}
	.filename
	{
		display:inline-block;
		vertical-align:top;
		width:250px;
	}
	.filesize
	{
		display:inline-block;
		vertical-align:top;
		color:#30693D;
		width:100px;
		margin-left:10px;
		margin-right:5px;
	}
	.abort{
	    background-color:#A8352F;
	    -moz-border-radius:4px;
	    -webkit-border-radius:4px;
	    border-radius:4px;display:inline-block;
	    color:#fff;
	    font-family:arial;font-size:13px;font-weight:normal;
	    padding:4px 15px;
	    cursor:pointer;
	    vertical-align:top
    }

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
	
	#error1
	{
		padding-top:0px;
		padding-bottom:25px;
		padding-right:5px;
		padding-left:5px;
	}
</style>
</head>

<html>
	<body>
		
		<h1> WhozDaHottest Contestant Registration </h1>	
		 Web Application Context Path = ${pageContext.request.contextPath}
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
						<td><label for="passwordInput">Enter Password: </label></td>
						<td><form:password  path="password" id="passwordInput"></form:password></td>  
						<td><form:errors path="password" cssClass="error" /></td>
					</tr>  
					<tr>  
						<td><label for="passwordConfirmationInput">Confirm Password: </label></td>
						<td><form:password  path="passwordConfirmation" id="passwordConfirmationInput"></form:password></td>  
						<td><form:errors path="passwordConfirmation" cssClass="error" /></td>
					</tr> 
					<tr>
						<td>The state you represent:</td>
						<td>
							<form:select path="state">
					  		<form:option value="NONE" label="--- Select ---" />
					  		<form:options items="${statesMap}" />
				       		</form:select>
                        </td>
						<td><form:errors path="state" cssClass="error" /></td>
					</tr>
					<tr>  
						<td  valign="top"><label for="whoOrWhereURepresentInput">Who and Where U Represent: </label></td>
						<td><form:textarea path="whoOrWhereURepresent" id="whoOrWhereURepresentInput" rows="5" cols="30"></form:textarea></td>  
						<td><form:errors path="whoOrWhereURepresent" cssClass="error" /></td>
					</tr>
					<tr>  
						<td><label for="emailInput">Enter Email: </label></td>
						<td><form:input path="email" id="emailInput"></form:input></td>  
						<td><form:errors path="email" cssClass="error" /></td>
					</tr>
					<tr>  
						<td><label for="facebookInput">Facebook: </label></td>
						<td><form:input path="facebook" id="facebookInput" ></form:input></td>  
						<td><form:errors path="facebook" cssClass="error" /></td>
					</tr>
					<tr>  
						<td><label for="twitterInput">Twitter: </label></td>
						<td><form:input path="twitter" id="twitterInput" ></form:input></td>  
						<td><form:errors path="twitter" cssClass="error" /></td>
					</tr>
					<tr>  
						<td><label for="instagramInput">Instagram: </label></td>
						<td><form:input path="instagram" id="instagramInput"></form:input></td>  
						<td><form:errors path="instagram" cssClass="error" /></td>
					</tr>
					<tr>  
						<td><label for="googlePlusInput">Google+: </label></td>
						<td><form:input path="googlePlus" id="googlePlusInput"></form:input></td>  
						<td><form:errors path="googlePlus" cssClass="error" /></td>
					</tr>
					 <tr>  
     					<td><label for="file">Upload Video file: </label></td>  
    					<td><form:input type="file"  path="file" /></td>
     					<td style="color: red; font-style: italic;"><form:errors path="file" /></td>
     				</tr>  
     				<tr>
     					<form:hidden path="isFileLoaded" value="false"/>
     					<form:hidden path="fileName" value=""/>
     				</tr>
				</tbody>
			</table>
			
			<table>
				<tr  align="top">
					<td>
						<div id="dragandrophandler">Drag & Drop Files Here</div>
					</td>
					<td >
						<p id="error1" ></p>	
					</td>
				</tr>
				<tr align="center">
					<td>
						<div id="status1" ></div>	
					</td>
					<td>
						<img src="/images/duke_ellington.jpg" alt="Smiley face">
					</td>
					<td>
						<img src="${pageContext.request.contextPath}/images/duke_ellington.jpg" alt="Smiley face">
					</td>
				</tr>
			</table>
			<input type="image" src="/resources/images/duke_ellington.jpg" alt="Submit" >
			 
		</form:form>
		
		<script>
			function sendFileToServer(formData, status)
			{
			    var uploadURL ="Upload"; //Upload URL
			    var extraData ={}; //Extra Data.
			    var jqXHR=$.ajax({
			            xhr: function() {
				            var xhrobj = $.ajaxSettings.xhr();
				            if (xhrobj.upload) {
				                    xhrobj.upload.addEventListener('progress', function(event) {
				                        var percent = 0;
				                        var position = event.loaded || event.position;
				                        var total = event.total;
				                        if (event.lengthComputable) {
				                            percent = Math.ceil(position / total * 100);
				                        }
				                        //Set progress
				                        status.setProgress(percent);
				                    }, false);
				                }
				            return xhrobj;
				        },
			    url: uploadURL,
			    type: "POST",
			    contentType: false,
			    processData: false,
			        cache: false,
			        data: formData,
			        dataType: 'json',
			        success: function(response){
				        status.setProgress(100);
				        $("#error1").empty();
			            $("#error1").append(response); 
						$("#dragandrophandler").empty();
						$("#dragandrophandler").append("File Uploaded " + response.fileName)
						if( response.status == 'success'){
							$("#isFileLoaded").val("true");
							$("#fileName").val(response.fileName);
						}else{
					    	 $("#isFileLoaded").val("false");       
					    }
			        },
					error: function(data){
				        $("#status1").append("File upload Error<br>");         
				    }  
			    }); 
			 
			    status.setAbort(jqXHR);
			}
			 
			var rowCount=0;
			function createStatusbar(obj)
			{
				 $( ".filename" ).empty();
				 $( ".filesize" ).empty();
				 $( ".progressBar" ).empty();
			     rowCount++;
			     var row="odd";
			     if(rowCount %2 ==0) row ="even";
			     this.statusbar = $("<div class='statusbar "+row+"'></div>");
			     this.filename = $("<div class='filename'></div>").appendTo(this.statusbar);
			     this.size = $("<div class='filesize'></div>").appendTo(this.statusbar);
			     this.progressBar = $("<div class='progressBar'><div></div></div>").appendTo(this.statusbar);
			     this.abort = $("<div class='abort'>Abort</div>").appendTo(this.statusbar);
			     obj.after(this.statusbar);
			 
			    this.setFileNameSize = function(name,size)
			    {
			        var sizeStr="";
			        var sizeKB = size/1024;
			        if(parseInt(sizeKB) > 1024)
			        {
			            var sizeMB = sizeKB/1024;
			            sizeStr = sizeMB.toFixed(2)+" MB";
			        }
			        else
			        {
			            sizeStr = sizeKB.toFixed(2)+" KB";
			        }
			 
			        this.filename.html(name);
			        this.size.html(sizeStr);
			    }
			    this.setProgress = function(progress)
			    {       
			        var progressBarWidth =progress*this.progressBar.width()/ 100;  
			        this.progressBar.find('div').animate({ width: progressBarWidth }, 10).html(progress + "% ");
			        if(parseInt(progress) >= 100)
			        {
			            this.abort.hide();
			        }
			    }
			    this.setAbort = function(jqxhr)
			    {
			        var sb = this.statusbar;
			        this.abort.click(function()
			        {
			            jqxhr.abort();
			            sb.hide();
			        });
			    }
			}
			function handleFileUpload(files,obj)
			{
			   for (var i = 0; i < files.length; i++) 
			   {
			        var fd = new FormData();
			        fd.append('file', files[i]);
			 
			        var status = new createStatusbar(obj); //Using this we can set progress.
			        status.setFileNameSize(files[i].name,files[i].size);
			        sendFileToServer(fd,status);
			 
			   }
			}
			$(document).ready(function()
			{
			var obj = $("#dragandrophandler");
			obj.on('dragenter', function (e) 
			{
			    e.stopPropagation();
			    e.preventDefault();
			    $(this).css('border', '2px solid #0B85A1');
			});
			obj.on('dragover', function (e) 
			{
			     e.stopPropagation();
			     e.preventDefault();
			});
			obj.on('drop', function (e) 
			{
			 
			     $(this).css('border', '2px dotted #0B85A1');
			     e.preventDefault();
			     var files = e.originalEvent.dataTransfer.files;
			 
			     //We need to send dropped files to Server
			     handleFileUpload(files,obj);
			});
			$(document).on('dragenter', function (e) 
			{
			    e.stopPropagation();
			    e.preventDefault();
			});
			$(document).on('dragover', function (e) 
			{
			  e.stopPropagation();
			  e.preventDefault();
			  obj.css('border', '2px dotted #0B85A1');
			});
			$(document).on('drop', function (e) 
			{
			    e.stopPropagation();
			    e.preventDefault();
			});
			 
			});
	</script>
	</body>
</html>