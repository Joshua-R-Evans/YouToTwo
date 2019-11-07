<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<title>Update</title>
<head>
<meta charset="ISO-8859-1">


</head>
<jsp:include page="header.jsp" />
</head>

<style>
body  {
  
  background-color: rgb(75, 75, 75);
  background-image: url('static/bgimg.jpg');
  background-repeat: no-repeat;
  background-size: cover;
  background-position: center;
  background-attachment: fixed;


}
label{
color: white;
background-color: rgba(0,0,0,.85);

}
p {
color: white;
background-color: rgba(0,0,0,.85);

}

h3 {
background-color: rbga(0,0,0,.85); 
color: white;
}
</style>

<body>
<br />
		<br />
		<br />
<div class="container center">
<br>

<h3 class="text-center">${msg} <br>
<small>${success}</small></h3>
<h3 class="text-danger text-center">${error}</h3>
<br>
    <div class="row justify-content-center">
	<form:form action="updateuser" modelAttribute="user" enctype="multipart/form-data" method="post" 
	class="col-md col-md-4 col-sm-12">
		<form:input type="hidden" path="id"/>
		<label>First Name</label>
	    <form:input type="text" class="form-control" path="fname" 	    
	    placeholder="First Name" />
	    <div class="has-error">
		 <form:errors path="fname" class="text-danger"/>
		</div>
	    <label>Last Name</label>
	    <form:input type="text" class="form-control" path="lname"
	     placeholder="Last Name" />	
	     <div class="has-error">
		 <form:errors path="lname" class="text-danger"/>
		</div>   
		
		<label>Address</label>
	    <form:input type="text" class="form-control" path="address" 
	    placeholder="Address" />
	    <label>City</label>
	    <form:input type="text" class="form-control" path="city" 
	    placeholder="City" />
		<label>State*</label>
			<form:select path="state" name="state" class="form-control input-sm">
				<c:choose>
					<c:when test="${empty user.state}">
					   <option value=" " >Select State</option>
					</c:when> 
					<c:otherwise>
					   <option value="${user.state}" >${user.state}</option>
					</c:otherwise>
					</c:choose>
					<c:forEach items="${states}" var="state">							 
						<option value="${state}">${state.id}</option>
				   </c:forEach>
	     </form:select>
	     <label>ZIP</label>
	     <form:input type="text" class="form-control" path="zip" 
	     placeholder="ZIP" />
	     <label>Add Image*</label>
			<div class="form-group"> 
	          <form:input type="file" path="file" id="fileInput" onchange="updateSize();" class="form-control"/>	                
	        <p>selected Image: <span id="fileNum">0</span><br>
	         total size: <span id="fileSize">0</span></p>        
	        </div>
	    <br>
	    <button class="btn btn-info" name="submit" type="submit">Submit >></button>
		<a href="index" class="btn btn-danger">Cancel</a>

</form:form>
</div>
</div>
<script>
            function updateSize() {
                var nBytes = 0,
                        oFiles = document.getElementById("fileInput").files,
                        nFiles = oFiles.length;
                for (var nFileId = 0; nFileId < nFiles; nFileId++) {
                    nBytes += oFiles[nFileId].size;
                }

                var sOutput = nBytes + " bytes";
                // optional code for multiples approximation
                for (var aMultiples = ["KiB", "MiB", "GiB", "TiB", "PiB", "EiB", "ZiB", "YiB"], nMultiple = 0, nApprox = nBytes / 1024; nApprox > 1; nApprox /= 1024, nMultiple++) {
                    sOutput = nApprox.toFixed(3) + " " + aMultiples[nMultiple] + " (" + nBytes + " bytes)";
                }
                // end of optional code

                document.getElementById("fileNum").innerHTML = nFiles;
                document.getElementById("fileSize").innerHTML = sOutput;
            }
        </script>
</body>
</html>