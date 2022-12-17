<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html; charset=UTF-8" %>
<html>

<head>

	<title>luv2code Company Home Page</title>
</head>
<body>

	<h2>luv2code Company Home Page - Yoohoo!!!</h2>
	<hr>
	
	<p>
		Welcome the luv2code company hompage
	</p>
	
		
	<p>
		User: <security:authentication property="principal.username"/>
	</p>
	<p>
		Role(s): <security:authentication property="principal.authorities"/>
	</p>		

	
	<security:authorize access="hasRole('MANAGER')">
	
		<!-- Add a link to point to /leaders ... this is for the managers -->
		
		<p>
			<a href="${pageContext.request.contextPath }/leaders">LeaderShip Meeting</a>
			(Only for Manager peeps)
		</p>
		
	</security:authorize>
	
	
	<security:authorize access="hasRole('ADMIN')">
	
		<!-- Add a link to point to /systems ... this is for the admins -->
		
		<p>
			<a href="${pageContext.request.contextPath }/systems">IT Systems Meeting</a>
			(Only for Admin peeps)
		</p>
	
	</security:authorize>
	
	
	
	<!-- Add a logout button -->
	<form:form action="${pageContext.request.contextPath }/logout" 
			   method="POST">
	
		<input type="submit" value="Logout" />
		
		<!-- form:form tag는 auto input csrf token -->
	
	</form:form>
</body>
	
</html>