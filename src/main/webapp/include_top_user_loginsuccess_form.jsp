<%@page import="com.itwill.pizza.userinfo.UserService"%>
<%@page import="com.itwill.pizza.userinfo.User"%>
dlqslek<%@ include file="login_check.jspf" %>      

<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>

<%

String contextPath = application.getContextPath();

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
    <link rel="stylesheet" type="text/css" href="css/sub.css">
    
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
                            	<% if (sUser != null) { %>
                                <a href="user_login_form.jsp" class="header_top_link"> 로그아웃</a>
       								<% } else { %>
                                <a href="index.jsp" class="header_top_link"> 로그인</a>
          								<% } %>
                           
                            </li>
                            <li class="header_top_item">
                                <a href="user_login_form.jsp" class="header_top_link"> 마이페이지</a>
                            </li>
                            <li class="header_top_item">
                                <a href="user_login_form.jsp" class="header_top_link"> 장바구니</a>
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


</html>