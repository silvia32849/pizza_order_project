<%@page import="com.itwill.pizza.inquiries.Inquiries"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.pizza.inquiries.InquiriesService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.itwill.pizza.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ include file="login_check.jspf" %>

<%
InquiriesService inquiriesService = new InquiriesService();
System.out.println(sUser.getUserName());


List<Inquiries> inq = inquiriesService.findInquiriesList(sUser.getUserId());
System.out.println(inq);


if (sUser == null) {
    // 로그인 아이디가 없는 경우, 로그인 페이지로 리다이렉트
    response.sendRedirect("user_login_form.jsp");
}

System.out.println("유저아이디:"+sUser);

boolean isLogin = false;
if (session.getAttribute("sUserId") != null ) {
	isLogin = true;
	
}


%>


<!DOCTYPE html>
<html>
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

			
			
			<style>
			  body {
			    margin-top: 200px; 
			  }
			</style>
			
			<style>
			  body {
			    margin-bottom: 200px; 
			  }
			</style>
			
			
	<link rel="stylesheet" type="text/css" href="css/font.css"> 
	<link rel="stylesheet" type="text/css" href="css/common.css"> 
	<link rel="stylesheet" type="text/css" href="css/sub.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	
	
	<section id="content" >
		<div class="sub-type mypage">
			<div class="inner-box">
				<article class="mypage-wrap mypage-grade mypage-counsil">
					<div class="info-wrap">
							<div class="text-type">
							<strong><%=sUser.getUserId() %></strong>	
							<strong>님께서 문의하신 내용입니다.</strong>
							</div>
								
							<div class="text-type">
								<%=sUser.getUserId() %> 님께서 문의하신 내용은 
								<strong>총 <%=inq.size() %>건</strong> 입니다.
							</div>
						</div>
					<div class="counsil-wrap">
						<div class="table-type4">
							<table>
								<caption>피자 영양성분</caption>
								<colgroup>
									<col style="width:140px">
									<col style="width:180px">
									<col style="width:180px">
								</colgroup>
								<thead>
									<tr>
										<th>번호</th>
										<th>제목</th>
										<th>등록일</th>
									</tr>
								</thead>
								<% 
					        for (Inquiries inquiry : inq) {
					        %>
					        <tr>
							    <td><%= inquiry.getInquiries_no() %></td>
							    <td><a href="inquiries_view.jsp?inquiriesno=<%= inquiry.getInquiries_no() %>"><%= inquiry.getInquiries_title() %></a></td>
							    
							    <%
								    Date inquiriesDate = inquiry.getInquiries_date();
								    
								    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd ");
								    String formattedDate = sdf.format(inquiriesDate);
								%>
								    <td><%=formattedDate%></td>
							</tr>

					        <%
					        }
					        %>
							</table>
							
							
						</div>
						<div class="pager-wrap">
							<div class="pager-inner">
								</div>
						</div>
						<div class="btn-wrap">
						    <a href="#" class="btn-type v4" id="openPopup">문의하기</a>
						</div>
						
						<script>
						document.getElementById("openPopup").addEventListener("click", function(event) {
						    event.preventDefault(); // 기본 동작을 막습니다 (링크의 이동을 취소합니다).
						
						    // 원하는 페이지 URL을 여기에 설정합니다.
						    var otherPageUrl = "inquiries_write.jsp";
						    
						    // 페이지 이동
						    window.location.href = otherPageUrl;
						});
						</script>

					</div>
				</article>
			</div>
		</div>
	</section>
	
</body>
</html>
