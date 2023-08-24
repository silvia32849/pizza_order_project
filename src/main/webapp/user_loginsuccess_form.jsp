<%@page import="com.itwill.pizza.userinfo.UserService"%>
<%@page import="com.itwill.pizza.userinfo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String msg1=(String)request.getAttribute("msg1");
if(msg1==null)msg1="";
String msg2=(String)request.getAttribute("msg2");
if(msg2==null)msg2="";
User fuser=(User)request.getAttribute("fuser");
if(fuser==null) {
	fuser = new User("","","","","","","","");
}
 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/login.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">

<script type="text/javascript">
	function userCreate () {
		f.action = "user_create_form.jsp";
		f.summint();
	}

	function login() {
		if (f.id.value == "") {
			alert("사용자 아이디를 입력하세요.");
			f.id.focus();
			return false;
		}
		if (f.pw.value == "") {
			alert("비밀번호를 입력하세요.");
			f.pw.focus();
			return false;
		}
		
		f.action = "user_login_action.jsp"
		f.submit();
		
	}
</script>


    <title>로그인</title>
</head>
<body>
    <div class="header fixed social">
        <!-- 헤더 top 시작-->
        <div class="header_top">
            <div class="header_top_inner">
                <h1>
                    <a href="index.html" aria-label="홈" class="logo"></a>
                    <div class="center"></div>
                </h1>
                <!--
                <div class="search_area">
                    <form>
                       <input type="search" placeholder="sea5rch">
                        <span>검색</span>
                    </form>
                </div>
                -->
                <ul class="header_top_list">
                    <li class="header_top_item">
                        <a href="user_logout_action.jsp" class="header_top_link"> 로그아웃</a>
                    </li>
                    <li class="header_top_item">
                        <a href="user_info_form.jsp" class="header_top_link"> 마이페이지</a>
                    </li>
                    <li class="header_top_item">
                        <a href="cart_list_form.jsp" class="header_top_link"> 장바구니</a>
                    </li>
                </ul>
            </div>
        </div>

                  
        <!-- 헤더 마지막 시작-->
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
                    <a href="#" class="tab updated">
                        <span class="tab_name">고객센터</span>

                    </a>
                </li>
            </ul>
        </nav>
        </div>
    </div>


</body>
</html>