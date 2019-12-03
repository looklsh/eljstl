<%@page import="vo.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>데이터형</title>
</head>
<body>
	<h1>데이터형</h1>
	
	<h3>JSP</h3>
	<!-- servlet에서 넘어온 값들을 표현할때 사용한다. java보다 간결하다 -->
	<%
	//서블릿에서 설정한 속성 sval,nullval, vo를 받아와서 출력해 봅니다
	String sVal = (String)request.getAttribute("sVal");
	Object nullVal = request.getAttribute("nullVal");
	UserVo vo = (UserVo)request.getAttribute("vo");
	//attribute를 받아올 때 attribute 객체를 강제로  casting 해야한다
	%>
	<ul>
		<li>문자열: <%= sVal %></li>
		<li>null: <%=nullVal %></li>
		<li>UserVo: <%=vo %></li>
	</ul>
	
	<h3>EL 방식</h3>
	<!-- SERVLET에서 넘어온 값들을 표현할 때 사용한다. JAVA보다 간결하다 -->
	<!-- 보다 중요한 차이점은 특별한 경우가 아니면 TYPECASTING을 하지 않아도 된다 -->
	<!-- Attribute에 담긴 객체가 어던 타입이던 상관없이 자동으로 캐스팅을 한다 null값은 출력하지 않는다 -->
	
	<ul>
		<li>정수형: ${iVal }</li>
		<li>실수형: ${fVal }</li>
		<li>논리형: ${bVal }</li>
		<li>문자형: ${sVal }</li>
		<li>null: ${nullVal }</li>
		<li>UserVo: ${vo }</li>
	</ul>
	
	
	
</body>
</html>