<%@page import="com.itwill.pizza.userinfo.UserService"%>
<%@page import="com.itwill.pizza.userinfo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	User fuser=(User)request.getAttribute("fuser");
	if(fuser==null) {
		fuser= new User("","","","","","","","");
	}

	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	UserService userService = new UserService();
	User finduser = userService.findUser(id);


%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/style.css" >
<link rel="stylesheet" type="text/css" href="css/user_find_idSuccess_form.css" >
    <title>도미노 피자</title>
</head>
<body>
    <div class="warp">
            <!-- 헤더 시작-->    
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
                               <input type="search" placeholder="search">
                                <span>검색</span>
                            </form>
                        </div>
                        -->
                        
                        <ul class="header_top_list">
                            <li class="header_top_item">
                                <a href="user_login_form.jsp" class="header_top_link"> 로그인</a>
                            </li>
                            <li class="header_top_item">
                                <a href="user_info_form.jsp" class="header_top_link"> 마이페이지</a>
                            </li>
                            <li class="header_top_item">
                                <a href="cart_list.form.jsp" class="header_top_link"> 장바구니</a>
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
                                <a href="board_list.jsp" class="tab updated">
                                    <span class="tab_name">고객센터</span>
                                </a>
                            </li>
                         </ul>
                    </nav>
                </div>
            </div>
            




            <div id="container">
                <section id="content">
                    <div class="sub-type member">
                        <div class="inner-box">
                            <div class="page-title-wrap">
                                <h2 class="page-title">아이디/비밀번호 찾기</h2>
                                <div class="depth-area">
                                    <ol>
                                        <li><a href="index.jsp">홈</a></li>
                                        <li><strong>아이디/비밀번호 찾기</strong></li>
                                    </ol>
                                </div>
                            </div>
                            <article class="srch-member">
                                <div class="menu-nav-wrap">
                                    <div class="menu-nav js_tab">
                                        <ul>
                                            <li class="srchId"><a href="#srchId">아이디 찾기</a></li>
                                            <li class="active srchPw"><a href="#srchPw">비밀번호 찾기</a></li>
                                         </ul>
                                    </div>
                                </div>
                                

                                
                                    
                                    <!-- 아이디찾기 결과-->
                                    <div class="result-box v2" id="result_id" style="">
                                        <div class="result-list">
                                            <p class="sub-tit">고객님의 정보와 일치하는 비밀번호 입니다.</p>
                                        	<label for="findId0"><%=finduser.getUserPw() %></label>          		
                                           
                                        <dl> 
                                            <dt> 
                                                <div class="chk-box">     
                                                        
                                          			<input type="hidden" id="findId0" name="fId" value="<%=finduser.getUserPw() %>">
                                                </div>                                         	
                                            </dt>                                              	
                                            <dd>                                               		
                                             
                                        <div class="btn-wrap">
                                            <a href="user_login_form.jsp" class="btn-type v6">로그인 하기</a>
                                        </div>
                                    </div>
                                    
                            </article>
                        </div>
                    </div>
                </section>
            </div>



            <!--  footer 시작 -->
            <div class="footer lg">
                <div class="inner">
                    <div class="coporation_area">
                        <div class="business_info">
                            <div class="info_list">
                                <dl class="info_item">
                                    <dt class="business_title">
                                        크림 주식회사 · 대표 차경진
                                        <span class="blank"></span>
                                        사업자등록번호 : 000-00-00000
                                        <span class="blank"></span>
                                        통신판매업 : 제 2021-성남분당C-0093호
                                        <span class="blank"></span><br>
                                        사업장소재지 : 서울 강남구 무슨타워, 4층 아이티윌
                                        <span class="blank"></span>
                                        호스팅 서비스 : 마이바티스 ㈜
                                    </dt>
                                </dl>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
</body>
</html>