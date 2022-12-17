<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Custom Login Page</title>
	<style type="text/css">
		.failed {
			color: red;
		}
	</style>
</head>
<body>
<script type="text/javascript">
var error = '<c:out value="${param.error }"></c:out>'
</script>
<h3>My Custom Login Page</h3>
<!-- 로그인 정보가 맞는지 확인... authenticated(입증된) -->
<form:form action="${pageContext.request.contextPath }/authenticateTheUser"
		   method="POST">
	<!-- Check for login error -->
	<!-- 스프링 시큐리티 필터가 authenticated 가 되지 않으면 error를 보냄 -->
	<!-- url?error="" empty string 이라서 error != null 이 true-->
	<c:if test="${param.error != null }">
	
		<i class="failed">Sorry! You entered invalid username/password.</i>
		
	</c:if>
	
	<p>
		User name: <input type="text" name="username" />
	</p>
	
	<p>
		Password: <input type="password" name="password" />
	</p>

	<input type="submit" value="Login">
	
</form:form>


</body>
</html>