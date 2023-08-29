<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

boolean isLogin=false;
if(session.getAttribute("sUserId")!=null){
	isLogin=true;

}
%>
<head>

    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/font.css">
    <link rel="stylesheet" type="text/css" href="css/common.css">
    <link rel="stylesheet" type="text/css" href="css/sub.css">
    
    <!-- 여기에 필요한 스타일과 스크립트를 추가할 수 있습니다. -->
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
            margin-right: 30px; /* 이미지 간 간격을 조절 */
        }

        .inner-box img {
            width: 400px; /* 이미지의 가로 크기를 조절 */
            height: 400px; /* 이미지의 세로 크기를 조절 */
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

    <div class="container" style="margin-top: 300px;" style="margin-bottom: 300px;">
        <div id="wrap">
            <div class="inner-box">
                <ul>
               
                
                <a href="board_list.jsp">
                    <li><img src="images/공지사항.jpg" alt="그래픽 이미지: 회사 로고"></li>
                </a>
               
                <a href="board_faq.jsp">
                    <li><img src="images/FAQ.jpg" alt="이미지 2"></li>
               </a>
               <a href="inquiries_main.jsp">
                    <li><img src="images/1대1문의.jpg" alt="이미지 3"></li>
               </a>
                </ul>
            </div>
        </div>
    </div>
</body>
</html>

