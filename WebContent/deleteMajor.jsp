<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"    
%>
<%
	String sql = "select * from major";
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
<title>학과삭제</title>
<script language="JavaScript">
	function majordelete() {
		if(document.deleteMajor.dept_id.value =="") {
			alert("학과코드를 입력하세요.");
			return;
		}
		document.deleteMajor.submit();
	}
</script>
</head>
<body>
	<h1><a href="/HaksaSystem" style="font-style:none;">교무학사관리 시스템 </a></h1>
	<h4>학과삭제</h4>
	<table border="1">
		<tr>
			<th>코드</th>
			<th>학과명</th>
			<th>전화번호</th>
		</tr>
		<% 
			while(rs.next()) { 
		%>
		<tr>
			<td><%= rs.getString(1) %></td>
			<td><%= rs.getString(2) %></td>
			<td><%= rs.getString(3) %></td>
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
	<form action="deleteMajor_result.jsp" name="deleteMajor" method="post">
		<table border="1">
			<tr>
				<td>코드</td>
				<td>
					<input type="text" name="dept_id">
				</td>
			</tr>

			<tr>
				<td colspan=2>
					<input type="button" name="confirm" value="삭  제" OnClick="majordelete()" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>