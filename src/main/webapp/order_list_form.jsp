<%@page import="java.util.List"%>
<%@page import="com.itwill.pizza.userinfo.User"%>
<%@page import="com.itwill.pizza.orders.Order"%>
<%@page import="com.itwill.pizza.orders.OrderService"%>
<%@page import="com.itwill.pizza.userinfo.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="login_check.jspf" %>
<%
boolean isLogin = false;
if (session.getAttribute("sUserId") != null ) {
	isLogin = true;
	
}

OrderService orderService = new OrderService();
List<Order> orderList = orderService.findOrderByUserId(sUserId);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/style.css" >
<link rel="stylesheet" type="text/css" href="css/mypage.css" >
<script type="text/javascript">
	function order_delete_action(formId){
		 if (confirm("정말 삭제하시겠습니까??") == true){    //확인
		     document.removefrm.submit();
			var delete_form= document.getElementById(formId);
			delete_form.method='POST';
			delete_form.action='order_delete_action.jsp';
			delete_form.submit();
		 }else{   //취소
		     return false;

		 }
	
	}
</script>
    
    <title>인생피자</title>
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
                        <a href="board_main.jsp" class="tab updated">
                            <span class="tab_name">고객센터</span>

                        </a>
                    </li>
                </ul>
            </nav>
            </div>
        </div>





        

        <!-- 컨테이너 시작-->
        <div class="container">
           <section id="content">
            <div class="sub-type mypage">
                <div class="inner-box">
                    <div class="page-title-wrap">
                        <h2 class="page-title">마이 페이지</h2>
                        <div class="depth-area">
                            <ol>
                                <li>
                                    <a href="#">홈</a>
                                </li>
                                <li>
                                    <a href="#">마이 페이지</a>
                                </li>
                                <li>
                                    <a href="#">주문내역</a>
                                </li>
                            </ol>
                        </div>
                    </div>
                    <article class="mypage-wrap mypage-grade">
                        <div class="menu-nav-wrap">
                            <div class="menu-nav">
                                <ul>
                                    <li>
                                        <a href="#">주문내역</a>
                                    </li>
                                    <li>
                                        <a href="#">정보수정</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="info-wrap">
						<%


						for(Order order : orderList) {

						%>
                            <div class="user">
                                <span><strong><%=sUser.getUserName() %></strong>님이 주문하신 내역입니다.</span>
                                
                            </div>
                            <div class="text-type">주문을 취소하시려면 해당 매장으로 전화하셔야 합니다.</div>
                        </div>

                        
                        <div class="order-list">
                            <ul>
                                <li>
                                    <div class="order-top">
                                        <span class="type">배달</span>
                                        <span class="date">
                                        <span class="tit">주문일시</span>
                                            <%=order.getOrder_date() %>
                                        </span>
                                        <span class="num">
                                            <span class="tit">주문번호</span>
                                            <%=order.getOrder_no() %>
                                        </span>
                                        <a href="javascript:order_delete_action('order_delete_form<%=order.getOrder_no()%>');" class="close">
														<span type="hidden" value=""></span>
														
										</a>
										<form id="order_delete_form<%=order.getOrder_no()%>"  >
											<input type="hidden" name="order_no" value="<%=order.getOrder_no()%>">
										</form>	
                                    </div>
                                    <div class="order-center">
                                        <div class="state od-box">
                                            <strong>주문접수완료</strong>
                                        </div>
                                        <div class="info od-box">
                                            <a href="javascript:order_delete_action();">
                                                <div class="menu">
                                                    <%=order.getOrder_name() %>&nbsp;
                                                    
                                                </div>
                                            </a>
                                        </div>
                                        <div class="btn-detail od-box">
                                            <a href="order_detail.jsp?order_no=<%=order.getOrder_no() %>" class="detail">상세보기</a>
                                        </div>
                                    </div>
										<%}%>
                                </li>    
                            </ul>
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
</div>
</body>
</html>