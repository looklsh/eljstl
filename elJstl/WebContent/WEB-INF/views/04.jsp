<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="vo.UserVo" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>객체접근</h1>
	
	<h2>자바문법</h2>
	<% 
	UserVo userVo = (UserVo)request.getAttribute("userVo");
	int num = (int)request.getAttribute("num");
	String str = (String)request.getAttribute("str");
	%>
	name = <%=userVo.getName()%> <br/>
    email = <%=userVo.getEmail() %> <br/>
    password = <%=userVo.getPassword() %> <br/>
	gender = <%=userVo.getGender() %> <br/> 
	
	num = <%=num %> <br/>
	str = <%=str %>	<br/>
	
	
	
	<h2>el</h2> 
	<h3>Scope Test</h3>                
	<ul>
		<li>Request Scope: ${requestScope.userVo.name }</li>
		<%--UserVo의 name필드는 private지만 
		el이 명시한 필드명을 getter/setter 명명 규칙에 따라서 변경하여 호출 --%>
		<li>Session Scope: ${sessionScope.userVoSess }</li>
		<li>Application Scope: ${applicationScope.userVoApp }</li>
	</ul>


	
	
</body>
</html>