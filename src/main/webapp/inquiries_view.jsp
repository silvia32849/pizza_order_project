<%@page import="com.itwill.pizza.inquiries.Inquiries"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="com.itwill.pizza.inquiries.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
 <%
 
	Integer inquiriesno=null;
	try{
		inquiriesno=Integer.parseInt(request.getParameter("inquiriesno"));
	}catch(Exception e){
		
	}
 	InquiriesService inquiriesService = new InquiriesService();
	Inquiries Inquiries1 = inquiriesService.findInquiries(inquiriesno);
	
	
    
boolean isLogin = false;
if (session.getAttribute("sUserId") != null ) {
isLogin = true;
	
}
 %>   
<!DOCTYPE html>


<html>
<head>
<meta charset="EUC-KR">
<title>인생피자</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/font.css">
    <link rel="stylesheet" type="text/css" href="css/common.css">
    <link rel="stylesheet" type="text/css" href="css/sub.css">
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
            
	<div id="container" style="margin-top: 100px;">
	</div>
	<div class="inner-box" >
                    <article class="notice-area">
                        <div class="news-view">
                        <form id="newsForm" name="newsForm" method="post">
                            <dl class="news-content">                            
								<input type="hidden" id="type" name="type" value="N">
								<input type="hidden" id="pageNo" name="pageNo" value="1">
								<input type="hidden" id="search" name="search" value="subject">
								<input type="hidden" id="condition" name="condition" value="">
                                
                                <dt>
                                <strong><%=Inquiries1.getInquiries_title() %></strong>
                                
                                
                                	<%
                                	Date Inquiries1Date = Inquiries1.getInquiries_date();
								    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd ");
								    String formattedDate = sdf.format(Inquiries1Date);
                                	%>
                                    <ul>
                                        <li><%=formattedDate %></li>
                                    </ul>
                                    
                                    
                                </dt>
						<dd>
						    <p style="margin: 0px; color: rgb(0, 0, 0); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: &quot;맑은 고딕&quot;; font-size: 14.66px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
						    <%=Inquiries1.getInquiries_content()%>
						    </p>
						    
						    
						    
						</dd>
                            </dl>
                            
                            </form>
                        </div>
                        <div class="btn-wrap">
                            <a href="inquiries_main.jsp" class="btn-type v2">목록</a>
                        </div>
                    </article>
                </div>
	
	
	
</body>
</html>