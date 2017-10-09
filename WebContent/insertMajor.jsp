<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>학과입력</title>
<script language="JavaScript">
	function enroll() {
		if(document.insertMajor.dept_id.value =="") {
			alert("학과코드를 입력하세요.");
			return;
		}
		if(document.insertMajor.dept_name.value =="") {
			alert("학과명을 입력하세요.");
			return;
		}
		document.insertMajor.submit();
	}
</script>
</head>
<body>
	<h1><a href="/HaksaSystem" style="font-style:none;">교무학사관리 시스템 </a></h1>
	<h4>학과입력</h4>
	<form action="insertMajor_result.jsp" name="insertMajor" method="post">
		<table border="1">
			<tr>
				<td>코드</td>
				<td>
					<input type="text" name="dept_id">
				</td>
			</tr>
			<tr>
				<td>학과명</td>
				<td>
					<input type="text" name="dept_name">
				</td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td>
					<input type="text" name="phone">
				</td>
			</tr>
			<tr>
				<td colspan=2>
					<input type="button" name="confirm" value="등  록" OnClick="enroll()" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>