<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"
%>
<%
	request.setCharacterEncoding("UTF-8");
	String stuid = request.getParameter("stuid");
	String subcode = request.getParameter("subcode");
	String midscore = request.getParameter("midscore");
	String finalscore = request.getParameter("finalscore");
	String attend = request.getParameter("attend");
	String report = request.getParameter("report");
	String etc = request.getParameter("etc");
	String total = request.getParameter("total");
	String grade = request.getParameter("grade");
	String sql = "insert into score (stuid,subcode,midscore,finalscore,attend,report,etc,total,grade) values (?,?,?,?,?,?,?,?,?)";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection(url, "system", "1234");
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1, stuid);
		pstmt.setString(2, subcode);
		pstmt.setInt(3, Integer.parseInt(midscore));
		pstmt.setInt(4, Integer.parseInt(finalscore));
		pstmt.setInt(5, Integer.parseInt(attend));
		pstmt.setInt(6, Integer.parseInt(report));
		pstmt.setInt(7, Integer.parseInt(etc));
		pstmt.setInt(8, Integer.parseInt(total));
		pstmt.setString(9, grade);
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
<title>성적입력결과</title>
</head>
<body>
	<h4>성적입력결과확인</h4>
	<h5><a href="/HaksaSystem/viewScore.jsp" style="font-style:none;">성적확인</a></h5>
</body>
</html>