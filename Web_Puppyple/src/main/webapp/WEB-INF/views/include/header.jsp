<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>퍼피플 PUPPYPLE</title>
<link rel="shortcut icon" href="imgs/favicon.ico" type="image/x-icon">
<link rel="icon" href="imgs/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/innks/NanumSquareRound/master/nanumsquareround.min.css">
<link rel="stylesheet" type="text/css" href="//cdn.rawgit.com/young-ha/webfont-archive/master/css/Godo.css">
<script src="https://kit.fontawesome.com/794175a030.js" crossorigin="anonymous" ></script>
<link rel="stylesheet" href="css/style.css">
<!-- <link rel="stylesheet" href="css/mypage.css"> -->
<!-- <link rel="stylesheet" href="css/common.css"> -->
<link rel="stylesheet" href="css/jquery.bxslider.min.css">
<script src="js/jquery-1.11.3.min.js"></script>
<script src="js/jquery.bxslider.min.js"></script>
<script src="js/slider.js"></script>
<script src="js/menu.js"></script>

<style type="text/css">
#header {
	border-bottom: 1px solid #ebebeb;
}

#hd_wrap {
	width: 1200px;
	height: 147px;
	margin: 0 auto;
	z-index: 30;
}

#gnb_wrap {
	width: 100%;
}

.logo {
	float: left;
}

.logo img {
	width: 150px;
	height: auto;
	margin-left: -4px;
	margin-top: 40px;
}

/* 마이페이지, 로그인, 로그아웃, 회원가입 (gnb_sub)  */
.gnb_sub_wrap {
	height: 40px;
}

.gnb_sub {
	width: 1200px;
	margin: 0 auto;
}

.gnb_sub ul {
	float: right;
	padding-top: 20px;
	box-sizing: border-box;
}

.gnb_sub li {
	float: left;
	margin-left: 30px;
	font-size: 13px;
}

.gnb_sub select {
	background-color: rgba(0, 0, 0, 0);
	border: 1px solid #d9d9d9;
	padding: 1px;
	font-size: 10px;
}

.gnb_sub option {
	background-color: #ebebebcf;
}

/* 메인메뉴바(gnb) */
#menu {
	float: right;
	width: 80%;
	height: 60px;
	line-height: 50px;
	margin-top: 30px;
	z-index: 10;
	position: relative;
}

.gnb {
	float: right;
}

.gnb li {
	float: left;
	height: 60px;
	margin-left: 55px;
	font-size: 18px;
	font-weight: 400;
	font-family: 'Godo', 'Sans-serif';
	border: 0;
}
.gnb li:first-child {
	margin-left: 0;
}

.hover {
	cursor: pointer;
}
/* js에서 hover 처리함 !!
.hover:hover .lnb{
	display: block;
	transition: 2s;
} */

/* 드롭다운으로 내려오는 lnb 메뉴바 */
#lnb_wrap {
	position: absolute;
	top: 60px;
	width: 130px;
	text-align: center;
}

.lnb {
	display: none;
	width: 100%;
	text-align: center;
	background-color: #fff;
}

.lnb_menu1 {
	margin-left: -33px;
}

.lnb_menu2 {
	margin-left: -25px;
}

.lnb li {
	clear: both;
	width: 100%;
	height: 47px;
	line-height: 47px;
	margin-left: 0px;
	font-size: 15px;
	background-color: #fff;
}

.lnb li:nth-child(odd) {
	background-color: #eee;
}

.lnb li:nth-child(even) {
	background-color: #fafafa;
}

.lnb a {
	display: inline-block;
	width: 100%;
	height: 100%;
}

.lnb a:hover {
	color: #fff;
	background-color: #8842e9;
	transition: 0.3s;
}

/* 반응형 레이아웃 */
@media screen and (min-width:900px) and (max-width:1199px) {
	/* 타블렛 가로 */
	#hd_wrap {
		width: 100%;
		padding: 0 20px;
	}
	#gnb_wrap {
		width: 100%;
	}
	.gnb_sub {
		width: 100%;
	}
}

@media screen and (min-width:600px) and (max-width:899px) {
	/* 모바일 가로, 타블렛 세로 */
	
	#hd_wrap {
		width: 100%;
	    padding: 0 15px;
	    height: 195px;
	    margin: 0 auto;
	    z-index: 30;
	}
	.logo {
	    width: 100%;
	    height: 134px;
	    display: block;
	    text-align: center;
	    margin-left: 12px;
	}
	
	.logo img {
		width: 150px;
	    height: auto;
	    margin-left: -4px;
	    margin-top: 40px;
	}
	#gnb_wrap {
		width: 100%;
	}
	
	.gnb_sub_wrap {
		height: 40px;
	    position: absolute;
	    top: -14px;
	    right: 15px;
	}
	.gnb_sub {
		width: 100%;
	}
	
	.gnb_sub ul {
		float: right;
	    padding-top: 20px;
	    box-sizing: border-box;
	}
	
	.gnb_sub li {
		float: left;
	    margin-left: 25px;
	    margin-top: 12px;
	    font-size: 13px;
	}
	
	#menu {
		float: none;
		clear: both;
	    width: 100%;
	    height: 60px;
	    line-height: 50px;
	    margin-top: 0;
	    z-index: 10;
	    position: relative;
	}
	.gnb {
		float: none;
		width: fit-content;
    	margin: 0 auto;
	}
	
	.gnb li {
	    float: left;
	    height: 52px;
	    font-size: 19px;
	    font-weight: 400;
	    font-family: 'Godo', 'Sans-serif';
	    border: 0;
	    margin-left: 37px;
	}
	
	#lnb_wrap {
		position: absolute;
		top: 62px;
		width: 130px;
		text-align: center;
	}
	
	.lnb li {
		clear: both;
		width: 100%;
		height: 47px;
		line-height: 47px;
		margin-left: 0px;
		font-size: 15px;
		background-color: #fff;
	}
	
	
}

@media screen and (max-width:599px) {
/* 모바일 세로 */
	#hd_wrap {
		width: 100%;
	    padding: 0 15px;
	    height: 184px;
	    margin: 0 auto;
	    z-index: 30;
	}
	.logo {
	    width: 100%;
	    height: auto;
	    display: block;
	    text-align: center;
	    margin-left: 12px;
	}
	
	.logo img {
		width: 150px;
	    height: auto;
	    margin-left: -4px;
	    margin-top: 44px;
	}
	#gnb_wrap {
		width: 100%;
	}
	
	.gnb_sub_wrap {
		height: 40px;
	    position: absolute;
	    top: -14px;
	    right: 15px;
	}
	.gnb_sub {
		width: 100%;
	}
	
	.gnb_sub ul {
		float: right;
	    padding-top: 20px;
	    box-sizing: border-box;
	}
	
	.gnb_sub li {
		float: left;
	    margin-left: 25px;
	    margin-top: 12px;
	    font-size: 13px;
	}
	
	#menu {
		float: none;
		clear: both;
	    width: 100%;
	    height: 60px;
	    line-height: 50px;
	    margin-top: 0;
	    z-index: 10;
	    position: relative;
	}
	.gnb {
		float: none;
		width: fit-content;
    	margin: 0 auto;
	}
	
	.gnb li {
	    float: left;
	    height: 52px;
	    font-size: 14px;
	    font-weight: 400;
	    font-family: 'Godo', 'Sans-serif';
	    border: 0;
	    margin-top: 13px;
	    margin-left: 31px;
	}
	#lnb_wrap {
	    position: absolute;
	    top: 62px;
	    width: 107px;
	    text-align: center;
	}
	.lnb li {
		clear: both;
		width: 100%;
		height: 43px;
		line-height: 47px;
		margin-top: 0;
		margin-left: 0px;
		font-size: 12px;
		background-color: #fff;
	}
	

}
</style>
</head>
<body>
<!-- 헤더 영역 시작 -->
	<header id="header">
		<div id="hd_wrap">
		
			<h1 class="logo">
				<a href='<c:url value='/' />'> <img src="imgs/logo.png" alt="퍼피플로고"></a>
			</h1>
			
			<div id="gnb_wrap">
				<div class="gnb_sub_wrap">
					<div class="gnb_sub">
						<ul>
							<!-- 로그인을 하지 않은 경우 -->
							<c:if test="${empty loginInfo }">
								<li><a href="login">로그인</a></li>
								<li><a href="member">회원가입</a></li>
							</c:if>
							<!-- 로그인을 한 경우 -->
							<c:if test="${! empty loginInfo}">
								<li>${loginInfo.member_nickname }	님</li>
								<c:if test="${loginInfo.member_admin eq 'Y' }">
									<li><a href="admin_list.mp">관리자페이지</a></li>
								</c:if>
								<c:if test="${empty loginInfo.member_admin || loginInfo.member_admin eq 'N' }">
									<li><a href="member_info.mp?member_id=${loginInfo.member_id }">마이페이지</a></li>
								</c:if>
								<li><a href="logout">로그아웃</a></li>
							</c:if>
							
						</ul>
					</div>
				</div>
				<%-- <c:url value='/' /> --%>
				<nav id="menu">
					<ul class="gnb">
						<li><a href="<c:url value='/#introduce' />">퍼피플소개</a></li>
						<li><a href="map.map">퍼피맵</a></li>
						<li class="hover community" ><a href="list.com">커뮤니티</a>
							<div id="lnb_wrap">
								<ul class="lnb lnb_menu1">
									<li><a href="list.com">자유게시판</a></li>
									<li><a href="list.info">정보 공유</a></li>
									<li><a href="list.gal">갤 러 리</a></li>
									<li><a href="list.tra">중고 거래</a></li>
								</ul>
							</div>
						</li>
						<li><a href="youtube_daily.daily">펫튜브</a></li>
						<li class="hover notice"><a href="list.no">퍼피플소식</a>
							<div id="lnb_wrap">
								<ul class="lnb lnb_menu2">
									<li><a href="list.no">공지사항</a></li>
									<li><a href="list.faq" >F A Q</a></li>
									<li><a href="list.ev" >이벤트</a></li>
								</ul>
							</div>	
						</li>
					</ul>
				</nav>
				
			</div>
			
		</div>	
	</header>
<!-- 헤더 영역 끝 -->
