<%@page import="com.itwill.pizza.board.BoardDaoImplMyBatis"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.itwill.pizza.board.BoardListPageMakerDto"%>
<%@page import="com.itwill.pizza.board.Board"%>
<%@page import="com.itwill.pizza.board.BoardService"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>


<%!public String getTitleString(Board board) {
		StringBuilder title = new StringBuilder(128);
		String t = board.getBoard_title();
		if (t.length() > 15) {
			//t = t.substring(0,15); 15글자넘어가면 ...으로 처리.
			//t = t+"...";
			t = String.format("%s...", t.substring(0, 15));
		}
		return title.toString();
	}%>

<%	//1.요청페이지번호	
String pageno=request.getParameter("pageno");
if(pageno==null||pageno.equals("")){
	pageno="1";
}	
//게시물조회(리스트)
BoardListPageMakerDto boardListpage 
	=new BoardService().findBoardList(Integer.parseInt(pageno));
System.out.println(boardListpage);


boolean isLogin = false;
if (session.getAttribute("sUserId") != null ) {
	isLogin = true;
	
}

%>
<!DOCTYPE html>
<html>
<head>		
			
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
			
			
	<style>
	  body {
	    margin-top: 50px; 
	  }
	</style>
	
	<style>
	  body {
	    margin-bottom: 180px; 
	  }
	</style>
	
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
										<li class="active"><a href="/bbs/faqList">공지사항</a></li>
										</ul>
								</div>
  
			  
			
			  
			  <div id="wrap">
				
				<div class="inner-box">
							
							
                <article class="notice-area">

                    <div class="notice-wrap">
                    <form id="searchForm" name="searchForm" action="/bbs/newsList" method="post">
				<input type="hidden" id="type" name="type" value="N">
				<input type="hidden" id="pageNo" name="pageNo" value="1">
	                       
               
                        <div class="table-type3">
                            <p class="side">총 <%=boardListpage.pageMaker.getTotCount()%> 건</p>
                            
                
                            <table>
                                <caption>news</caption>
                                <colgroup>
                                    <col style="width:106px">
                                    <col>
                                    <col style="width:333px">
                                  
                                </colgroup>
                                <thead>
                                <tr>
                                    <th>번호</th>
                                    <th>제목</th>
                                    <th>등록일</th>
                                  
                                </tr>
                                
                                </thead>
                                <tbody>
								
								<% 
								for (Board board : boardListpage.itemList){
								%>
								
								<tr>
								    <td><%=board.getBoard_no()%></td>
								    <td><a href="board_view.jsp?board_no=<%=board.getBoard_no()%>"><%=board.getBoard_title()%></a></td>
								    
								    <%
								    Date boardDate = board.getBoard_date();
								    
								    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd ");
								    String formattedDate = sdf.format(boardDate);
								    %>
								    
								    <td><%=formattedDate%></td>
								</tr>
								
								<%
								}
								%>

                               		</tbody>
                            </table>
						
							
							
                		 	<table border="0" cellpadding="0" cellspacing="1" width="590">
								<tr>
									<td align="center">
							     		 <%if(boardListpage.pageMaker.getCurBlock() > 1) {%>    
											<a href="./board_list.jsp?pageno=<%=boardListpage.pageMaker.getPrevGroupStartPage()%>">◀◀</a>&nbsp;
										 <%}%>
										
										 <%if(boardListpage.pageMaker.getPrevPage()>0) {%>    
											<a href="./board_list.jsp?pageno=<%=boardListpage.pageMaker.getPrevPage()%>">◀</a>&nbsp;&nbsp;
										 <%}%>
										
										<%for (int i = boardListpage.pageMaker.getBlockBegin(); i <= boardListpage.pageMaker.getBlockEnd(); i++) {
										 	if (boardListpage.pageMaker.getCurPage() == i) { %>
										<span style="color: red; font-weight: bold; font-size: 20px;"><%=i%></span>&nbsp;
										<%} else {%>
										<a href="./board_list.jsp?pageno=<%=i%>">
										<strong><%=i%></strong>
										</a>&nbsp;
										<%
										  }
										}%>
										  
										  
										 <%if(boardListpage.pageMaker.getNextPage()<=boardListpage.pageMaker.getTotPage()){%>
										  <a href="./board_list.jsp?pageno=<%=boardListpage.pageMaker.getNextPage()%>">▶</a>
										 <%}%>
										 
										 <%if(boardListpage.pageMaker.getTotBlock() > boardListpage.pageMaker.getCurBlock()){%>
										  <a href="./board_list.jsp?pageno=<%=boardListpage.pageMaker.getNextGroupStartPage()%>">▶▶&nbsp;</a>
										 <%}%>
										
									</td>
								</tr>
							</table>
						 </article>
                              </div>
                            </div>
                          </div>
                        </article>
                      </div>
                    </section>
                  </div>
                </section>
              </div>
            </body>
        </html>