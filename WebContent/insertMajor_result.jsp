<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"
%>
<%
	request.setCharacterEncoding("UTF-8");
	String dept_id = request.getParameter("dept_id");
	String dept_name = request.getParameter("dept_name");
	String phone = request.getParameter("phone");
	String sql = "insert into major (dept_id,dept_name,phone) values (?,?,?)";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection(url, "system", "1234");
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1, dept_id);
		pstmt.setString(2, dept_name);
		pstmt.setString(3, phone);
		
		pstmt.executeUpdate();
		pstmt.close();
		con.close();
		
		out.println("<h4>성공</h4>");
	} catch(SQLException e) {
		out.println("<h4>오류</h4>");
	}
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>학과입력결과</title>
</head>
<body>
	<h4>학과입력결과페이지</h4>
	<h5><a href="/HaksaSystem/viewMajor.jsp" style="font-style:none;">학과확인</a></h5>
</body>
</html>