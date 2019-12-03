<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--EL은 간순히 객체의 값 표시 뿐 아니라 내부에서 산술,비교,논리,널 체크 등의 연산작업을 수행 할 수 있다 --%>
	<h1>연산</h1>
	
	<ul>
		<li>정수형 산술연산: ${iVal + 10 }</li>
		<li>실수형 산술연산: $(fVal * 10 * 10)</li>
		<li>비교 연산: ${iVal > fVal*10*10 }</li>
		<li>비교 + 논리연산: ${iVal > 2000 || fVal > 10 }</li>
		<li>null값의 확인: ${empty vo }</li>
		<!-- vo==null인가? -->
		<li>null확인 2: ${not empty vo }</li>
		<!-- vo !== null인가? -->
	</ul>
</body>
</html>