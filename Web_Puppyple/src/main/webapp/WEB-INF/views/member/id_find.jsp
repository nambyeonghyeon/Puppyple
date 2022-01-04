<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
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
		padding: 129px 0px;
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
	.id_find_header p{
		margin-bottom: 10px;
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
				<div class="id_find_header">
					<h3>아이디 찾기</h3>
					<p>회원가입 시 입력했던 이메일을 입력해주세요.</p>
				</div>
				
				<div id="search_id">
					<form action="find_id_check" method="post" id="form">
						<div>
							<span id="email_title"><label for="input_email">이메일</label></span>
							<div>
								<input type="text" style="display: none;">
								<input type="text" id="input_email" name="input_email" class="chk" title="이메일" autofocus />
							</div>
						</div>
					</form>
					<div class="find_btn">
						<a onclick = 'if ( emptyCheck() && mailFormCheck()  ) $("#form").submit()'class="btn_submit" >확인</a>
						<a class="btn_cancle" onclick="history.go(-1);">취소</a>
					</div>
				</div>
			</div>
		</div>	
	</div>
</body>
<script type="text/javascript">
	/* 입력 이메일 형식 유효성 검사 */
	function mailFormCheck(){
		
		var email = $("#input_email").val();
	   	var form = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
		
	   	if(!form.test(email)){
			alert("이메일을 정확히 입력해주세요.");
			$(email).val("");
			$(email).focus();
			return false;
		}
	   	return true;
		
	}
</script>
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</html>