<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%
%>
<%

boolean isLogin=false;
if(session.getAttribute("sUserId")!=null){
	isLogin=true;

}

%>    
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/font.css">
    <link rel="stylesheet" type="text/css" href="css/common.css">
    
    <title>인생피자</title>

<style>
        .inner-box {
            display: flex; /* 가로로 나열하기 위해 flexbox 사용 */
        }

        .inner-box ul {
            list-style-type: none; /* 목록 스타일 제거 */
            display: flex; /* 가로로 나열하기 위해 flexbox 사용 */
            padding: 0; /* 목록의 내부 여백 제거 */
        }

        .inner-box li {
            margin-right: 200px; /* 이미지 간 간격을 조절 */
        }

        .inner-box img {
            width: 300px; /* 이미지의 가로 크기를 조절 */
            height: 300px; /* 이미지의 세로 크기를 조절 */
        }
    </style>
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
                        </ul>
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



    
    
   <div id="container" >
	<section id="content"   style="margin-bottom: 500px;">
		<div class="main">
			<!-- visual -->
			    <img src="images/메인배너.jpg" alt="이미지 설명">
		</div>

			<!-- //visual -->
	
	<div id="wrap">
            <div class="inner-box" style="margin-bottom: 100px;">
                <ul>
                <a href="cart_list_form.jsp">
                    <li><img src="images/배달주문.jpg" alt="그래픽 이미지: 회사 로고"></li>
                </a>
                <a href="">
                    <li><img src="images/퀵오더.jpg" alt="이미지 2"></li>
               </a>
               <a href="cart_takeout_list_form.jsp">
                    <li><img src="images/포장주문.jpg" alt="이미지 3"></li>
               </a>
                </ul>
            </div>
        </div>

</div>
			
</body>
</html>