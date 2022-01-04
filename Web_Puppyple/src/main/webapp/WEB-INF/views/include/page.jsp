<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class='page_list'>

	<c:if test="${page.curBlock gt 1 }"> <!-- gt  >    같은 의미 -->
		<a class='page_first' title='처음' onclick="go_page(1)">처음</a>
		<a class='page_prev' title='이전' onclick="go_page(${page.beginPage - page.blockPage})">이전</a>
	</c:if>
	<c:forEach var="no" begin="${page.beginPage }" end="${page.endPage }">
		<!-- 현재 보고 있는 페이지인 경우 -->	
		<c:if test="${no eq page.curPage }">
			<span class='page_on'>${no }</span>
		</c:if>
		<!-- 현재 보고 있지 않는 페이지인 경우 -->
		<c:if test="${no ne page.curPage }">
			<a class='page_off' onclick='go_page(${no})'>${no }</a>
		</c:if>	
	</c:forEach>
	<!-- 현재 블록 번호가 총 블록수 보다 작으면 이미지가 나오고 그렇지 않으면 않 보임 -->
	<c:if test="${page.curBlock lt page.totalBlock }"> <!-- lt < 같은 의미 -->
		<a class='page_next' title="다음" onclick='go_page(${page.endPage+1})'>다음</a>
		<a class='page_last' title='마지막' onclick='go_page(${page.totalPage })'>마지막</a>	
	</c:if>
	
	
</div>
<script type="text/javascript">
	function go_page(page) {
		$('[name=curPage]').val(page);
		$('form').submit();
	}
</script>

<style>
	.page_list{ width: 100%; margin: 0 auto; margin: 55px 0;}
	
	.page_on, .page_off, .page_prev, .page_next, .page_last, .page_first {
		display: inline-block; width: 30px; height: 30px;  line-height: 30px;
		margin: 0 6px;
	}
	
	.page_on {
		border: 1px solid #731aed; background: #731aed;  color: #fff; border-radius: 4px;
	}
	.page_off {
		border: 1px solid #e3e3e3; background: #fff; color: #666666; border-radius: 4px;
		
	}
	
	.page_prev, .page_next, .page_last, .page_first {
		color: #424242; border: 1px solid #e3e3e3;  border-radius: 4px; text-indent: -99999999999px;
		
	}
	
	.page_next {background: url("imgs/page_next.jpg") center no-repeat;}
	.page_last {background: url("imgs/page_last.jpg") center no-repeat;}
	.page_first {background: url("imgs/page_first.jpg") center no-repeat;}
	.page_prev {background: url("imgs/page_prev.jpg") center no-repeat;}


</style>