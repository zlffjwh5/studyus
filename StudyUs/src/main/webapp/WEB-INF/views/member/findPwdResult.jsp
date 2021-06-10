<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/resources/css/member/findIdPwd.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="/resources/js/memberJoin.js"></script>
<title>아이디/비밀번호 찾기</title>
<style type="text/css">
	span.no {
		display : none;
		color:red;
		font-size: 14px;
		margin-top: -15px;
		margin-bottom: 5px;
	}
	
	span.ok {
		display : none;
		color:green;
		font-size: 14px;
		margin-top: -15px;
		margin-bottom: 5px;
	}
	span.error {
		display : none;
		color:red;
		font-size: 14px;
		margin-top: -15px;
		margin-bottom: 5px;
	}
</style>
</head>
<body>
	<div class="find-box">
		<div class="find-zone">
			<div class="home-link">
					<a href="/">StudyUs</a>
			</div>
			<div class="select-zone">
				<input type="button" value="아이디 찾기" class="page change id">
				<input type="button" value="비밀번호 찾기" class="page change pwd">
			</div>
			<div class="line"></div>
			<div class="result-zone pwd">
				<span class="main-text">이메일 정보로 비밀번호 찾기</span><br>
				<span class="sub-text">변경할 비밀번호를 입력해주세요.</span><br>
				<hr width="380px" style="margin-top: -10px; margin-bottom: 20px;">
				<div class="result">
					<form action="/member/changePwd" method="post">
						<input type="password" name="mbPassword" id="mbPassword" placeholder="비밀번호" class="form-control"><br>
						<span class="pwd no">비밀번호는 8~20자 이내 영문, 숫자 및 특수 문자</span><br>
						<input type="password" name="mbPwdCheck" id="mbPwdCheck" placeholder="비밀번호 확인" class="form-control"><br>
						<span class="pwd ok">비밀번호가 일치합니다.</span>
						<span class="pwd error">비밀번호가 일치하지 않습니다.</span><br>
						<input type="submit" value="확인" class="submit-btn"/>
					</form>
				</div>
			</div>
		</div>
	</div>

	<script>
		$(".page.change.id").addClass("common");
		$(".page.change.pwd").addClass("selected");
	</script>

</body>
</html>