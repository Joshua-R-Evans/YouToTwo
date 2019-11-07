<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<title>Results</title>
<head>
<meta charset="ISO-8859-1">


</head>
<jsp:include page="header.jsp" />
</head>

<style>
body  {
  
  background-color: rgb(75, 75, 75);
  background-image: url('static/wheelie.jpg');
  background-repeat: no-repeat;
  background-size: cover;
  background-position: center;
  background-attachment: fixed;
}
td  {
background-color: rgba(0,0,0,.85);
color: white;
}
span {
background-color: rgba(0,0,0,.85);
color: white;
}

label{
font: 12px;
}
</style>

<body>
<br />
<br />
<br />
<br/>
	
<h1 style="text-align : center"><span>Here's Kinda' What You're Looking For</span></h1>
<br/>
	<div class="container center">

		<div class="col-md col-md-12 col-sm-12">
			
			<table class="table table-striped table-hover">
				<thead class="thead-dark">
					<tr>
						<th>#</th>
						<th><input type="text" id="findByModel"
							placeholder=" Filter By Model (${list.size()}) "
							class="form-control"></th>					
							<th>Make</th>
							<th>Model</th>
							<th>Engine Size</th>
						
					</tr>
				</thead>

				<tbody>
					<c:forEach var="item" items="${motorcycle}">
						<tr>
							<td>${motorcycle.indexOf(item)+1}.</td>						
							 <td><c:choose>
									<c:when test="${not empty item.image}">
										<a target="_blank" href="${contextPath}//motorcycles//bikes//${item.id}//${item.image}">
									<img class="img-fluid img-thumbnail"
									src="${contextPath}//motorcycles//bikes//${item.id}//${item.image}"
									width="70" height="50" alt="">
								</a>
									</c:when>
									<c:otherwise>
									No image     
									</c:otherwise>
								</c:choose></td> 
						<td>${item.make} </td>
							<td>${item.model}</td>
							<td>${item.size} cc</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>	
</body>
</html>


