<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="vo.UserVo" %>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<% 
	List<UserVo> userList = (List<UserVo>)request.getAttribute("userList");
%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3>JSTL forEach 횟수 지정 반복</h3>
	<ul>
		<!-- begin="시작값" end="끝값" step="간격" var="변수명"-->
		<c:forEach begin="0" end="10" step="2" var="i">
		<li>${i }</li>
		</c:forEach>
	</ul>
	<h1>사용자 리스트</h1>
	
	<table border=1>
		<tr>
			<td>no</td><td>name</td><td>email</td>
		</tr>
	
		<% for(UserVo userVo : userList) { %>
			<tr>
				<td><%=userVo.getNo() %></td><td><%=userVo.getName() %></td><td><%=userVo.getEmail() %></td>
			</tr>
		<% } %>
		
		
	
	</table>
	
	
	
	<h3>JSTL:forEach</h3>
	<table border=1>
		<tr>
			<td>no</td><td>name</td><td>email</td><td>status.index</td><td>status.count</td>
		</tr>
		
		<!-- c:forEach
		items: Collection 객체(배열,List,Map등)
		var: items로부터 추출된 개별 객체에 붙이는 변수명
		varStatus: 개별 객체(var)가 실제 컬렉션(items)내에서 위치(인덱스)와 카운트(몇번째 요소인가) -->
		<c:forEach items="${userList }" var="user" varStatus="status">
		<tr>
			<td>${user.no}</td>
			<td>${user.name}</td>
			<td>${user.email}</td>
			<!-- varStatus: 해당 객체내의 컬렉션 내부에서의 상태값 -->
			<td>${status.index}</td>
			<td>${status.count}</td>
		</tr>
		
		</c:forEach>
		




		
	
	</table>
	
	
	
	

</body>
</html>