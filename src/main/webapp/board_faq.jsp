<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
boolean isLogin = false;
if (session.getAttribute("sUserId") != null ) {
	isLogin = true;
	
}
%>
<!DOCTYPE html>


	<!-- 리뉴얼 적용 2019.12.02 -->
	<link rel="stylesheet" type="text/css" href="/resources/css/ol.css"><link rel="stylesheet" type="text/css" 
	href="css/font.css"> 
	<link rel="stylesheet" type="text/css" href="css/common.css"> 
	 <!--메인에는 sub.css 호출하지않음-->
	<link rel="stylesheet" type="text/css" href="css/sub.css">
	<!--//메인에는 sub.css 호출하지않음  -->

	<script src="https://cdn.dominos.co.kr/domino/asset/js/jquery-3.1.1.min.js" integrity="sha256-cNrkaflPIUtYnVNSG5A4MKCLT7WJ1HpMJpqDx5EWiGo=" crossorigin="anonymous"></script>
	<script src="https://cdn.dominos.co.kr/domino/asset/js/slick.js" integrity="sha256-1gDsGcL/mf9bomEXFPinwG4SG0I6FjA2J91pWU29WF8=" crossorigin="anonymous"></script>
	<script src="https://cdn.dominos.co.kr/domino/asset/js/TweenMax.min.js" integrity="sha256-AJvwDTgx+2JZWtsg4XDtKI2KFXST+2AosYiLBYde2PM=" crossorigin="anonymous"></script>
	<script src="https://cdn.dominos.co.kr/domino/asset/js/lazyload.js" integrity="sha256-h0ytEAJzE/NiCncNSjODaYM+1bORPweTy4UANhsZ5uo=" crossorigin="anonymous"></script>
			
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/font.css">
    <link rel="stylesheet" type="text/css" href="css/common.css">
    <link rel="stylesheet" type="text/css" href="css/sub.css">
    
</script>
<head>
<title>인생피자</title>
</head>
<body>


		<div class="warp">
            <div class="header fixed social">
                <div class="header_top">
                    <div class="header_top_inner">
                        <h1>
                            <a href="index.jsp" aria-label="홈" class="logo"></a>
                            <div class="center"></div>
                        </h1>

                        <ul class="header_top_list">
                            <li class="header_top_item">
                            	<% if (isLogin) { %>
								    <a href="user_logout_action.jsp" class="header_top_link">로그아웃</a>
								<% } else { %>
								    <a href="user_login_form.jsp" class="header_top_link">로그인</a>
								<% } %>

                            </li>
                            <li class="header_top_item">
                             <% if (isLogin) { %>
                                <a href="user_info_form.jsp" class="header_top_link"> 마이페이지</a>
							<% } else { %>
								<a href="user_login_form.jsp" class="header_top_link"> 마이페이지</a>
                           <% } %>
                                
                            </li>
                            <li class="header_top_item">
                             <% if (isLogin) { %>
                                <a href="cart_list_form.jsp" class="header_top_link"> 장바구니</a>
                            <% } else { %>
                                 <a href="user_login_form.jsp" class="header_top_link"> 장바구니</a>
                            	 <% } %>
                               
                            </li>
                    </div>
                </div>
                

                <div class="portal_tartget vue-portal-target">
                <nav class="tabs">
                    <ul class="ul_tab home_tabs inline">
                        <li class="li_tab">
                            <a href="product_list.jsp" class="tab">
                                <span class="tab_name">메뉴</span>
                            </a>
                        </li>
                        <li class="li_tab">
                            <a href="#" class="tab">
                                <span class="tab_name">추천</span>
                            </a>
                        </li>
                        <li class="li_tab">
                            <a href="board_main.jsp" class="tab updated">
                                <span class="tab_name">고객센터</span>

                            </a>
                        </li>
                       
                    </ul>
                </nav>
                </div>
            </div>
			
			<style>
			  body {
			    margin-top: 50px; 
			  }
			</style>
			
			<style>
			  body {
			    margin-bottom: 50px; 
			  }
			</style>
			
					
			<link rel="stylesheet" type="text/css" href="css/font.css"> 
			<link rel="stylesheet" type="text/css" href="css/common.css"> 
			<link rel="stylesheet" type="text/css" href="css/sub.css">
			
	
	<link rel="stylesheet" type="text/css" media="screen" href="/resources/css/jquery-ui.css">
  <div id="wrap">

<script type="text/javascript" src="/resources/js/jquery-ui.js"></script>



<!-- container -->
		<div id="container">
			<!-- content -->
			<section id="content">
				<div class="sub-type faq">
					<div class="inner-box">
						<div class="page-title-wrap">
							<h2 class="page-title">고객센터</h2>
							
							
						</div>
						<article class="faq-area">
							<div class="menu-nav-wrap">
								<div class="menu-nav">
									<ul>
										<li class="active"><a href="/bbs/faqList">자주하는 질문</a></li>
										</ul>
								</div>
								
								
							</div>
							

 <style>
    /* 탭 버튼 스타일 */
    .tab-button {
        padding: 10px 20px; /* 탭 버튼의 패딩 설정 (상하 10px, 좌우 20px) */
        background-color: #3498db; /* 탭 버튼의 배경 색상 설정 */
        color: #fff; /* 탭 버튼 텍스트 색상 설정 */
        font-size :25px;
        cursor: pointer; /* 포인터 커서로 마우스 오버 효과 지정 */
        
    }

    /* 선택된 탭 버튼 스타일 */
    .tab-button.active {
        background-color: #e74c3c; /* 선택된 탭 버튼의 배경 색상 설정 */
    }

    /* 탭 컨텐츠 스타일 */
    .tab-content {
        display: none; /* 기본적으로 모든 탭 컨텐츠를 숨김 */
        padding: 20px; /* 탭 컨텐츠의 패딩 설정 (상하좌우 20px) */
        font-size :18px;
        background-color: #f1f1f1; /* 탭 컨텐츠의 배경 색상 설정 */
    }

    /* 선택된 탭 컨텐츠 스타일 */
    .tab-content.active {
        display: block; /* 선택된 탭 컨텐츠만 표시 */
    }
</style>
        <!-- 탭 버튼 -->
        <div class="tab-button" onclick="showTab('tab1')">예약 주문은 어디서 할 수 있나요?</div>
                <div class="tab-content" id="tab1-content">예약 주문은 장바구니에서 설정이 가능합니다. 예약을 변경하거나 취소하는 경우 장바구니와 결제하기에서 가능합니다.</div>
        
        <div class="tab-button" onclick="showTab('tab2')">현금영수증 발급은 어떻게 할 수 있나요?</div>
                <div class="tab-content" id="tab2-content">E쿠폰, 도미노콘, M12 모바일 기프트권을 사용하거나 도미노페이 계좌이체로 결제한 온라인 주문은 현금영수증이 자동 발급됩니다.
				<br>										단, 지류상품권 사용 또는 현장현금결제 시에는 결제가 '완료'된 후 매장에서 수동으로 현금영수증 발급 처리해드립니다.
															
				<br>										■ 현금영수증 발급받기
				<br>										- 주문시점: [주문/결제 페이지 > 현금영수증] 란에서 신청하여 발급 가능
															
				<br>										■ 현금영수증 확인하기
				<br>										- 경로 : [나의정보 > 주문내역 > 주문내역상세 > 현금영수증 조회 클릭]
															
				<br>										■ 현금영수증 신청정보 관리하기
				<br>										※ 주문전 [나의정보 > 정보수정 > 현금영수증 관리]에서 '현금영수증 신청 정보' 입력이 가능합니다.
															
				<br>										■ 기타사항
				<br>										- 현금영수증 발행 대상이나 미신청한 경우에는 자진발급하여 발행처리해 드립니다.
				<br>										- 자진발급분의 경우 현금영수증 식별번호가 010-0000-1234로 기재됩니다.
				<br>										- 발행방법이 자진발급인 경우 국세청 사이트에서 자진발급분 사용자 등록을 하셔야만 소득공제 등 혜택을 받으실 수 있습니다.
				<br>										- 현금영수증 발행내역은 국세청 사이트(http://hometax.go.kr)에서 조회가 가능합니다.</div>
															        
        <div class="tab-button" onclick="showTab('tab3')">	도미노페이가 무엇인가요?</div>
                <div class="tab-content" id="tab3-content">	도미노페이는 최초 한 번의 등록으로 빠르고 간편하게 결제를 할 수 있는 간편결제수단입니다.
				<br>										도미노페이 등록 후 결제비밀번호 생략을 하시면 결제하기 버튼 클릭 시 즉시 결제가 가능합니다.
				<br>										(단, 5만원 이상 결제 시에는 결제 비밀번호 입력 필수/계좌이체인 경우 금액 관계 없이 비밀번호 입력 필수)</div>
													        

        
    </div>
		</li>
		</ul>
		<script>
		 function showTab(tabId) {
		        // 모든 탭 컨텐츠를 숨깁니다.
		        var tabContents = document.querySelectorAll('.tab-content');
		        tabContents.forEach(function (content) {
		            content.style.display = 'none';
		        });

		        // 클릭한 탭 컨텐츠를 표시합니다.
		        var tabContent = document.getElementById(tabId + '-content');
		        tabContent.style.display = 'block';
		    }
   		 </script>
		
									</div>
							
							</div>
					
					</div>
			
		
		<!-- //container -->

