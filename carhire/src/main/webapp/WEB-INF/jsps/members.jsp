<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<title>Members</title>
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
td  {
background-color: rgba(0,0,0,.85);
color: white;
}
</style>

<body>
<br />
<br />
<br />
	
<h1 style="text-align : center">Our Members</h1>
<br/>
	<div class="container center">

		<div class="col-md col-md-12 col-sm-12">
			
			<table class="table table-striped table-hover">
				<thead class="thead-dark">
					<tr class="text-info">
						<th>#</th>
						<th><input type="text" id="searchnow"
							placeholder=" Filter Names (${list.size()}) "
							class="form-control"></th>
						<th>Name</th>
						
							<th>Email</th>

							
					</tr>
				</thead>

				<tbody>
					<c:forEach var="item" items="${list}">
						<tr>
							<td>${list.indexOf(item)+1}.</td>
							<td><c:choose>
									<c:when test="${not empty item.image}">
										<a href="users-${item.id}"> <img
											src="${contextPath}//users//YouToTwo//${item.id}//${item.image}"
											width="70" height="70" />
											
											<!-- ${contextPath}//users//YouToTwo//images// -->
										</a>
									</c:when>
									<c:otherwise>
									No image     
									</c:otherwise>
								</c:choose></td>
							<td>
								<div class="inner col-md-12">
									<div class="btn-group">
										<i class="far fa-user-circle"> ${item.fname}
											${item.lname} </i> <a href="#" class="dropdown-toggle active"
											data-toggle="dropdown" href="#"> <span
											class="glyphicon glyphicon-chevron-down"></span>
										</a>
										<ul class="dropdown-menu col-md-12 text-left">
											<li class="divider text-success"></li>
											<li>&nbsp;<i class="fa fa-key"></i> ${item.role}
											</li>
											<%-- <li>&nbsp;<i class="fa fa-home"></i> ${item.city}
												${item.state} ${item.zip}
											</li>
											<li>&nbsp;<i class="fas fa-calendar-plus"></i> <fmt:formatDate
													value="${item.createdDate}" type="date"
													pattern="MMM-dd-yyyy" />
											</li> --%>
											<%-- <li>&nbsp;<i class="far fa-check-circle"></i>
  ${item.email}       
</li> --%>
										</ul>
									</div>
								</div>
							</td>
							<td>${item.email}</td>
							<c:if test="${logedinUser.role eq 'ADMIN'}">
								<td>
									<form method="POST" action="editrole">
										<input type="hidden" name="id" value="${item.id}" /> <select
											onchange="this.form.submit()" name="role"
											class="form-control">
											<option value="${item.role}">${item.role}</option>
											<option value="USER">USER</option>
											<option value="DBA">DBA</option>
											<option value="ADMIN">ADMIN</option>
										</select>
									</form>
								</td>

							</c:if>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

	<script>
		function confirmed() {
			if (confirm('You are about to delete, Do you want to proceed?')) {
				document.getElementById("del").submit();
				return true;
			} else {
				return false;
			}
		}

		$("#searchnow").keyup(function() {
			var value = this.value.toLowerCase().trim();

			$("table tr").each(function(index) {
				if (!index)
					return;
				$(this).find("td").each(function() {
					var id = $(this).text().toLowerCase().trim();
					var not_found = (id.indexOf(value) == -1);
					$(this).closest('tr').toggle(!not_found);
					return not_found;
				});
			});
		});
	</script>

	<%--<div class="container center">--%>
	<%--    <h1 class="text-info text-center">${MSG} <br> ${HEHE} <br> ${success}</h1>--%>

	<%--    <h3 class="text-info">--%>
	<%--        <a href="name?fn=Seth&ln=A" class="btn btn-danger">What is the name</a>--%>
	<%--        <a href="email-jsmith@gmail.com-John" class="btn btn-danger">Contact Us</a>--%>
	<%--    </h3>--%>

	<%--    <div class="col-md cold-md-5 col-sm-12">--%>
	<%--    <form:form class="form-inline navbar-right" action="ha" method="post">--%>
	<%--        <label for="name">Name</label>--%>
	<%--        <input class="form-control" id="name" name="name" type="text" placeholder="Name" required>--%>
	<%--        <br>--%>
	<%--        <label for="email">Email</label>--%>
	<%--        <input class="form-control" id="email" name="email" type="text" placeholder="Email" required>--%>
	<%--        <button class="btn btn-success" id="search" type="submit">Search</button>--%>
	<%--    </form:form>--%>
	<%--</div>--%>

	<%--</div>--%>
</body>
</html>

