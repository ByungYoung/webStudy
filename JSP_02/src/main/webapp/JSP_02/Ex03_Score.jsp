<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Score</title>
</head>
<body>
	<%
	// 1. post 방식 인코딩
	request.setCharacterEncoding("UTF-8");
	
	// 2. 요청받은 데이터 가져오기
	String name = request.getParameter("name");
	String javaScore = request.getParameter("javaScore");
	String webScore = request.getParameter("webScore");
	String crawlingScore = request.getParameter("crawlingScore");
	String springScore = request.getParameter("springScore");

	// 3. 평균을 구하기 위해 필요한 부분 형 변환
	int java = Integer.parseInt(javaScore);
	int web = Integer.parseInt(webScore);
	int crawling = Integer.parseInt(crawlingScore);
	int spring = Integer.parseInt(springScore);
	
	// 4. 합계, 평균, 학점 변수 선언
	int sum = java + web + crawling + spring;
	double avg = Math.floor(sum / 4.0);
	String degree;
	
	// 5. 학점 확인하기 로직
	if (avg >= 95 && avg <= 100)
		degree = "A+";
	else if (avg >= 90)
		degree = "A";
	else if (avg >= 85)
		degree = "B+";
	else if (avg >= 80)
		degree = "B";
	else
		degree = "F";
	%>

	<fieldset align="center">
		<legend>학점확인프로그램</legend>
		<table align="center">
			<tr>
				<td align="left">이름</td>
				<td><%=name%></td>
			</tr>
			<tr>
				<td align="left">JAVA점수</td>
				<td><%=java%></td>
			</tr>
			<tr>
				<td align="left">WEB점수</td>
				<td><%=web%></td>
			</tr>
			<tr>
				<td align="left">Crawling점수</td>
				<td><%=crawling%></td>
			</tr>
			<tr>
				<td align="left">Spring점수</td>
				<td><%=spring%></td>
			</tr>
			<tr>
				<td align="left">합계</td>
				<td><%=sum%></td>
			</tr>
			<tr>
				<td align="left">평균점수</td>
				<td><%=avg%></td>
			</tr>
			<tr>
				<td align="left">학점</td>
				<td><h3>
						<strong><%=degree%></strong>
					</h3></td>
			</tr>
		</table>
	</fieldset>
</body>
</html>