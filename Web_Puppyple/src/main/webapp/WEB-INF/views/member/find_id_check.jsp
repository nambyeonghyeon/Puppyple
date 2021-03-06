<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<jsp:include page="/WEB-INF/views/include/header.jsp" />
<head>
<meta charset="UTF-8">

<title>퍼피플 아이디 찾기</title>
<link rel="shortcut icon" href="imgs/favicon.ico" type="image/x-icon">
<link rel="icon" href="imgs/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/innks/NanumSquareRound/master/nanumsquareround.min.css">
<link rel="stylesheet" type="text/css" href="//cdn.rawgit.com/young-ha/webfont-archive/master/css/Godo.css">
<script type="text/javascript" src='js/common.js'></script>
<style type="text/css">
	#id_find_wrap{	
		width: 50%;
		height: 636px;
		padding: 206px 0px;
		margin: 50px auto;
	}
	input{
		border: 1px solid #d2d2d2;
		width: 100%;
		height: 48px;
		padding-left: 10px;
		padding-top: 3px;
	}
	input:focus{
		outline: none;
	}
	.id_find_header{
		width: 100%;
		text-align: center;
		margin-bottom: 66px;
	}
	#email_title{
		display: block;
		margin-bottom: 10px;
	}
	h3 {
		font-size: 27px;
		margin-bottom: 15px;
	}
	.find_btn{
		width: 100%;
		text-align: center;
		margin-top: 40px;
	}
	.btn_submit, .btn_cancle{
		text-align: center;
		padding: 5px 10px;
		border: 1px solid #731aed;
		border-radius: 3px;
		color: #fff;
		background-color: #731aed;
	}
</style>
</head>
<body>
	<div id="id_find_wrap">
		<div>
			<div>
			<c:if test="${id eq null }">
				<div class="id_find_header">
					<h3>아이디 찾기 결과</h3>
					<p>입력한 이메일과 일치하는 아이디가 없습니다.</p>
					
					<div id="search_id">
						<div class="find_btn">
							<a href="member" class="btn_submit">회원가입</a>
							<a href="id_find.find"class="btn_cancle" >아이디 찾기</a>
						</div>
					</div>
				
				</div>			
			</c:if>
				<c:if test="${id ne null }">
				<div class="id_find_header">
					<h3>아이디 찾기 결과</h3>
					<p>회원님의 아이디는 ${id } 이며, 입력한 이메일로 발송처리 되었습니다.</p>
				</div>
				
				<div id="search_id">
					<div class="find_btn">
						<a href="login" class="btn_submit">로그인</a>
						<a href="pw_find.find"class="btn_cancle" >비밀번호 찾기</a>
					</div>
				</div>
			</c:if>
			</div>
		</div>
	</div>
</body>
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</html>