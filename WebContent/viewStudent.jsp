<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"
%>
<%
	int i=0;
	String sql = "select * from student";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection(url,"system", "1234");
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>학생조회</title>
</head>
<body>
	<h1><a href="/HaksaSystem" style="font-style:none;">교무학사관리 시스템 </a></h1>
	<h4>학생조회</h4>
	<table border="1">
		<tr>
			<th>순서</th>
			<th>학번</th>
			<th>이름</th>
			<th>학과코드</th>
			<th>주민번호</th>
			<th>전화번호</th>
			<th>이메일</th>		
		</tr>
		<% 
			while(rs.next()) { 
		%>
		<tr>
			<td><%= ++i %></td>
			<td><%= rs.getString(1) %></td>
			<td><%= rs.getString(2) %></td>
			<td><%= rs.getString(3) %></td>
			<td><%= rs.getString(4) %></td>
			<td><%= rs.getString(5) %></td>
			<td><%= rs.getString(6) %></td>
		</tr>
		<% 
			}
		%>
	</table>
		<% 
			rs.close();
			stmt.close();
			con.close();
		%>
		<p>성공</p>
		<% 
		} catch(SQLException e) {
		%>
		<p>에러</p>
		<%
		}
		%>
</body>
</html>