<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<body style="background-color : rgb(75,75,75);">
<div class="modal" id="addprofile">
	    <div class="modal-dialog modal-lg">
	      <div class="modal-content">	      
	        <!-- Modal Header -->
	        <div class="modal-header">
	          <h4 class="modal-title">&nbsp;&nbsp;&nbsp;&nbsp;Add Contact Info</h4>
	          <button type="button" class="close" data-dismiss="modal">&times;</button>
	        </div>	        
	        <!-- Modal body -->
	        <div class="modal-body">	      
	        <div class="container" >
	        
			<form:form method="POST" action="savecontact" modelAttribute="address" enctype="multipart/form-data" class="col-md-8">
	    	<label>Address*</label>		
			<form:input path="adres" id="adres" class="form-control" required="true"/>		
					
			<label>City*</label>
			<form:input path="city"  class="form-control" required="true" />		
			
			<label>State*</label>
			<form:select path="state" name="state" class="form-control input-sm">
				<c:choose>
					<c:when test="${empty address.state}">
					   <option value=" " >Select State</option>
					</c:when> 
					<c:otherwise>
					   <option value="${address.state}" >${address.state}</option>
					</c:otherwise>
					</c:choose>
					<c:forEach items="${states}" var="state">							 
						<option value="${state}">${state.id}</option>
				   </c:forEach>
			</form:select>
						
			<label>ZIP*</label>
			<form:input  path="zip" class="form-control" required="true"/>				
			<label>Phone*</label>
			<form:input  path="phone" class="form-control" required="true"/>			
			
			<label>Add Image*</label>
			<div class="form-group"> 
	                <form:input id="fileInput" type="file" path="file" onchange="updateSize();" />	                
	                <form:input type="hidden" path="user_id" value="${logedinUser.id}"/>
	                <p>selected files: <span id="fileNum">0</span>;
	                total size: <span id="fileSize">0</span></p>
	        </div>
	        
			<form:input type="hidden" path="email" value="${logedinUser.email}"/>		
		
		
		<div >
		
		<button class="btn btn-success" type="submit" id="submit" >
		Submit
		</button>
		<button type="button" class="btn btn-primary small" data-dismiss="modal">Cancel</button>
	    </div>
		</form:form>
	        </div>
	        </div>
	        
	        <!-- Modal footer -->
	        <div class="modal-footer">
	        <span class="text-success">&copy; 2019 All Rights Reserved.</span>&nbsp;&nbsp;&nbsp;&nbsp;
	          <button type="button" class="btn btn-primary small" data-dismiss="modal">Close</button>
	        </div>
	        
	      </div>
	    </div>
	  </div>
	  
	  <div class="modal" id="addImage">
	    <div class="modal-dialog modal-lg">
	      <div class="modal-content">	      
	        <!-- Modal Header -->
	        <div class="modal-header">
	          <h4 class="modal-title">&nbsp;&nbsp;&nbsp;&nbsp;Add Picture</h4>
	          <button type="button" class="close" data-dismiss="modal">&times;</button>
	        </div>	        
	        <!-- Modal body -->
	        <div class="modal-body">	      
	        <div class="container" >
					
			<div class="form-group col-md-5"> 
		    <form enctype="multipart/form-data" action="uploadMultipleFiles" method="POST">
            <div class="row">
                Please select:
                <input id="fileInput" type="file" id="one" name="uploadingFiles" onchange="updateSize();"  multiple required>
                Please select:
                <input id="fileInput" type="file" id="two" name="uploadingFiles" onchange="updateSize();" multiple>
                Please select:
                <input id="fileInput" type="file" id="three" name="uploadingFiles" onchange="updateSize();" multiple>
                Please select:
                <input id="fileInput" type="file" id="four" name="uploadingFiles" onchange="updateSize();" multiple>
                Please select:
                <input id="fileInput" type="file" id="five" name="uploadingFiles" onchange="updateSize();" multiple>
                <input type="hidden" name="id" value="${logedinUser.id}"/> 
	            
            </div><br>	
            <div class="row">	              
	                <input type="submit" id="uloadimages" class="btn btn-primary" value="Upload files">
	            	<button type="button" class="btn btn-danger small" data-dismiss="modal">Cancel</button>
	        
	        </div>
                
        </form>
                         
			</div>	
		
	        </div>
	        </div>
	        
	        <!-- Modal footer -->
	        <div class="modal-footer">
	        <span class="text-success">&copy; 2019 All Rights Reserved.</span>&nbsp;&nbsp;&nbsp;&nbsp;
	          <button type="button" class="btn btn-primary small" data-dismiss="modal">Close</button>
	        </div>
	        
	      </div>
	    </div>
	  </div>
</body>