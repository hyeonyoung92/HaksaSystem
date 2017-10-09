<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메인화면</title>
</head>
<body>
<!-- 프로젝트(Dynamic Web Project) 설정 전 해야할 사항 
	 1. 제어판 - 시스템 (JAVA_HOME 변수로 JDK경로설정 / Path에 %JAVA_HOME%bin 설정)
	 2. Window - Preferences에 들어가서 Server - Runtime Environment에 Tomcat 설정
	 3. Java Build Path JRE설정하기
	 4. WEB-INF / lib 안에 jar파일 넣기(oraclexe-app-oracle-product.11.2.0-server-jdbc-lib)
-->
	<h1><a href="/HaksaSystem" style="font-style:none;">교무학사관리 시스템 </a></h1>
	<div style="background-color:yellow; padding:10px; border:1px solid red;">
	<a href="viewStudent.jsp">1. 학생조회</a><br>
	<a href="viewMajor.jsp">2. 학과조회</a><br>
	<a href="insertMajor.jsp">3. 학과입력</a><br>
	<a href="modifyMajor.jsp">4. 학과수정</a><br>
	<a href="deleteMajor.jsp">5. 학과삭제</a><br>
	<a href="insertScore.jsp">6. 성적입력</a><br>
	<a href="viewScore.jsp">7. 개인성적처리</a><br>
	</div>
</body>
</html>