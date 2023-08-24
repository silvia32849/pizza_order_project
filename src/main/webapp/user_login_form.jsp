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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/login.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">

<script type="text/javascript">
	function userCreate () {
		f.action = "user_create_form.jsp";
		f.submit();
	}

	function login_form_submit() {
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
		f.method='POST';
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
                    <a href="index.jsp" aria-label="홈" class="logo"></a>
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
                        <a href="user_login_form.jsp" class="header_top_link"> 로그인</a>
                    </li>
                    <li class="header_top_item">
                        <a href="#" class="header_top_link"> 마이페이지</a>
                    </li>
                    <li class="header_top_item">
                        <a href="#" class="header_top_link"> 관심상품</a>
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


    <!-- 컨테이너 시작 -->
    <div class="center">
        <h1>로그인</h1>
        <form method="post" name="f">
            <div class="text_field">
                <input type="text" name="id" value="<%=fuser.getUserId() %>" placeholder="아이디" class="input_text" maxlength="40">
                <span></span><font color="red"></font>
            </div>
            <div class="text_field">
                <input type="password" name="pw" value="<%=fuser.getUserPw() %>" placeholder="비밀번호" class="input_text" maxlength="16" >
                <span></span><font color="red"><%=msg2%></font>
            </div>
            <div class="btn_login_wrap">
                <button type="submit" class="btn_login" id="log.logain" onClick="login_form_submit();">
                    <span class="btn_text">로그인</span>
                </button>


            </div>

            <ul class="find_wrap" id="find_wrap">
                <li>
                    <a target="_blank" href="https://nid.naver.com/user2/api/route?m=routePwInquiry&amp;lang=ko_KR" class="find_text">비밀번호 찾기</a>
                </li>
                <li>
                <a target="_blank" href="https://nid.naver.com/user2/api/route?m=routeIdInquiry&amp;lang=ko_KR" class="find_text">아이디 찾기</a>
                </li>
                <li>
                <a target="_blank" href="user_create_form.jsp">회원가입</a>
                </li>
            </ul>
        </form>

    </div>
</body>
</html>