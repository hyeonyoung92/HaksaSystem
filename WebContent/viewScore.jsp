<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"
%>
<%
	String sql = "select * from score";
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
<title>성적조회</title>
</head>
<body>
	<h1><a href="/HaksaSystem" style="font-style:none;">교무학사관리 시스템 </a></h1>
	<h4>성적조회</h4>
	<table border="1">
		<tr>
			<th>학번</th>
			<th>과목코드</th>
			<th>중간고사</th>
			<th>기말고사</th>
			<th>출석</th>
			<th>레포트</th>
			<th>기타</th>
			<th>총합</th>
			<th>성적</th>
		</tr>
		<% 
			while(rs.next()) { 
		%>
		<tr>
			<td><%= rs.getString(1) %></td>
			<td><%= rs.getString(2) %></td>
			<td><%= rs.getInt(3) %></td>
			<td><%= rs.getInt(4) %></td>
			<td><%= rs.getInt(5) %></td>
			<td><%= rs.getInt(6) %></td>
			<td><%= rs.getInt(7) %></td>
			<td><%= rs.getInt(8) %></td>
			<td><%= rs.getString(9) %></td>
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