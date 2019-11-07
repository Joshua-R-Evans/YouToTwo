<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<title>You To Two</title>
<head>
<meta charset="ISO-8859-1">
<jsp:include page="header.jsp" />

</head>
<style>
body {
	background-color: rgb(75, 75, 75);
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
	background-attachment: fixed;
}

h1 {
	color: rgb(00, 150, 175);
	text-align: center;
	text-shadow: 1px 1px black;
}

h2 {
	color: rgb(00, 150, 175);
	text-shadow: 1px 1px black;
}

a {
	hover:;
	text-shadow: 1px 1px black;
}

p {
	color: white;
	text-align: center;
}

label {
	color: white;
	text-shadow: 1px 1px black;
	background-color: rgba(0, 0, 0, 0.75);
}

span {
	background-color: rgba(0, 0, 0, 0.75);
	text-shadow: 1px 1px black;
}

h3, h4 {
	color: white;
}

</style>



<body>
	<br />
	<br />
	<br />

	<div class="container text-center">
		<br>
		<h1 class="text-success text-center">${msg}
			<br> <small>${success}</small>
		</h1>
		<h1 class="text-danger">${error}</h1>
		<br>
		<div class="row">

			<div class="col-xl-3 col-lg-3">
				<h4><strong>Welcome</strong></h4>
				<p><strong>
					${logedinUser.fname} ${logedinUser.lname}<br>
					<fmt:formatDate value="${logedinUser.createdDate}" type="date"
						pattern="dd-MMM-yyyy" />
					<br> ${logedinUser.email}<br> ${logedinUser.address} <br>
					${logedinUser.city} ${logedinUser.state} ${logedinUser.zip}


				</strong></p>
			</div>
			<div class="col-xl-9 col-lg-9">
				<h3>
					<spring:message code="msg.pictures" />
					<button type="button" class="btn btn-info btn-sm"
						data-toggle="modal" data-target="#addImage">
						<i class="fas fa-plus"> Upload Pictures</i>
					</button>
					<c:if test="${logedinUser.role eq 'ADMIN'}">
					<a style="text-align: center" class="btn btn-info" href="addBike">Add Motorcycle</a>
					</c:if>
				</h3>
				<div class="row">
					<c:forEach var="item" items="${filesname}">
						<div class="col-lg-3 col-md-3">
							<div class="thumbnail">
								<a class="black-text"
									href="${contextPath}//users//YouToTwo//${logedinUser.id}//${item}">
									<img class="img-fluid img-thumbnail"
									src="${contextPath}//users//YouToTwo//${logedinUser.id}//${item}"
									width="320" height="280" alt="">
								</a>
								<div class="caption">
									<a href="deleteimage?id=${logedinUser.id}&image=${item}"
										onclick="confirmed(); return false;" title="Delete"> <i
										class="far fa-trash-alt btn btn-danger btn-xs"><small>
										</small></i>
									</a> <a
										href="setasprofile?image=${item}&email=${logedinUser.email}"
										title="Set as profile picture"> <i
										class="fas fa-plus btn btn-info btn-xs"><small>
												Profile</small></i>
									</a>
								</div>
							</div>
						</div>

					</c:forEach>
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
					<div class="container">

						<div class="form-group col-md-5">
							<form enctype="multipart/form-data" action="uploadMultipleFiles"
								method="POST">
								<div class="row">
									Please select: <input id="fileInput" type="file" id="one"
										name="uploadingFiles" onchange="updateSize();" multiple
										required> Please select: <input id="fileInput"
										type="file" id="two" name="uploadingFiles"
										onchange="updateSize();" multiple> Please select: <input
										id="fileInput" type="file" id="three" name="uploadingFiles"
										onchange="updateSize();" multiple> Please select: <input
										id="fileInput" type="file" id="four" name="uploadingFiles"
										onchange="updateSize();" multiple> Please select: <input
										id="fileInput" type="file" id="five" name="uploadingFiles"
										onchange="updateSize();" multiple> <input
										type="hidden" name="id" value="${logedinUser.id}" />

								</div>
								<br>
								<div class="row">
									<input type="submit" id="uloadimages" class="btn btn-primary"
										value="Upload files">
									<button type="button" class="btn btn-danger small"
										data-dismiss="modal">Cancel</button>

								</div>

							</form>

						</div>

					</div>
				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<span class="text-success">&copy; 2019 All Rights Reserved.</span>&nbsp;&nbsp;&nbsp;&nbsp;
					<button type="button" class="btn btn-primary small"
						data-dismiss="modal">Close</button>
				</div>

			</div>
		</div>
	</div>

	<%-- <jsp:include page="modals.jsp"/> --%>
</body>
</html>