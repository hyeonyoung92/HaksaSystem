<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>성적입력</title>
<script language="JavaScript">
function enroll(){
	document.insertScore.submit();
}

function cal() {
	var midscore = document.getElementById("midscore").value;
	if(midscore == ""){
		midscore = 0;
	}
	var finalcore = document.getElementById("finalscore").value;
	if(finalcore == ""){
		finalcore = 0;
	}
	var attend = document.getElementById("attend").value;
	if(attend == ""){
		attend = 0;
	}
	var report = document.getElementById("report").value;
	if(report == ""){
		report = 0;
	}
	var etc = document.getElementById("etc").value;
	if(etc == ""){
		etc = 0;
	}
	var total = Number(midscore)*0.3 + Number(finalcore)*0.3 + Number(attend)*0.2 +
			Number(report)*0.1 + Number(etc)*0.1;
	sum = total;
	var grade;
	if(95 <= sum){
		grade = 'A+';
	}else if(90 <= sum && sum < 95){
		grade = 'A';	
	}else if(85 <= sum && sum < 90){
		grade = 'B+';	
	}else if(80 <= sum && sum < 85){
		grade = 'B';	
	}else if(75 <= sum && sum < 80){
		grade = 'C+';	
	}else if(70 <= sum && sum < 75){
		grade = 'C';
	}else if(65 <= sum && sum < 70){
		grade = 'D+';	
	}else if(60 <= sum && sum < 65){
		grade = 'D';
	}else if(0 <= sum && sum <= 59){
		grade = 'F';	
	}
	document.getElementById("total").innerHTML=total;
	document.getElementById("grade").innerHTML=grade;
	
	var checkValue =document.insertScore;
	checkValue.total.value = total;
	checkValue.grade.value = grade;
}
</script>
</head>
<body>
	<h1><a href="/HaksaSystem" style="font-style:none;">교무학사관리 시스템 </a></h1>
	<h4>성적입력</h4>
	<form action="insertScore_result.jsp" name="insertScore" method="post">
		<table border="1">
			<tr>
				<td>학번</td>
				<td>
					<input type="text" name=stuid>
				</td>
			</tr>
			<tr>
				<td>과목명 : </td>
				<td>
					<select name="subcode">
						<option value="A001">A001-자바</option>
						<option value="A002">A002-영어</option>
						<option value="A003">A003-C언어</option>
						<option value="A004">A004-웹프로그램</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>중간고사</td>
				<td>
					<input type="text" name="midscore" id="midscore" onchange="cal()">
				</td>
			</tr>
			<tr>
				<td>기말고사</td>
				<td>
					<input type="text" name="finalscore" id="finalscore" onchange="cal()">
				</td>
			</tr>
			<tr>
				<td>출석</td>
				<td>
					<input type="text" name="attend" id="attend" onchange="cal()">
				</td>
			</tr>
			<tr>
				<td>보고서</td>
				<td>
					<input type="text" name="report" id="report" onchange="cal()">
				</td>
			</tr>
			<tr>
				<td>기타</td>
				<td>
					<input type="text" name="etc" id="etc" onchange="cal()">
				</td>
			</tr>
			<tr>
				<td colspan=2>
					<input type="button" name="confirm" value="등  록" OnClick="enroll()" />
				</td>
			</tr>
		</table>
		 총점 :<p id="total"></p><input type="hidden" name="total">
		 성적 :  <p id="grade"></p><input type="hidden" name="grade">
	</form>
</body>
</html>