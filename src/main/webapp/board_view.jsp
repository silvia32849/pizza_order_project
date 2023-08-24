<%@page import="com.itwill.pizza.board.*"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%

	Integer board_no=null;
	int pageno=1;
	try{
		board_no=Integer.parseInt(request.getParameter("board_no"));
		pageno=Integer.parseInt(request.getParameter("pageno"));
	}catch(Exception e){
		
	}
	if(board_no==null){
		//목록으로이동
		response.sendRedirect("board_list.jsp?pageno="+pageno);
		return;
	}
	Board board =new BoardService().findBoard(board_no);
	if(board==null){
		response.sendRedirect("board_list.jsp?pageno="+pageno);
		return;
	}
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

<body>
	<div id="container" style="margin-top: 100px;">
		<!-- header start -->
		<div id="header">
			<!-- include_common_top.jsp start-->
			<jsp:include page="include_common_top.jsp" />
			<!-- include_common_top.jsp end-->
		</div>
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
                                <strong><%=board.getBoard_title() %></strong>
                                    
                                    
                                    <%
								    Date boardDate = board.getBoard_date();
								    
								    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd ");
								    String formattedDate = sdf.format(boardDate);
								    %>
								    
                                    <ul>
								   			 <td><%=formattedDate%></td>
                                    </ul>
                                    
                                    
                                    
                                </dt>
						<dd>
						    <p style="margin: 0px; color: rgb(0, 0, 0); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: &quot;맑은 고딕&quot;; font-size: 14.66px; font-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
						    <%=board.getBoard_content() %>
						    </p>
						    
						    
						    
						</dd>
                            </dl>
                            
                            </form>
                        </div>
                        <div class="btn-wrap">
                            <a href="board_list.jsp" class="btn-type v2">목록</a>
                        </div>
                    </article>
                </div>
	
	
	
</body>
</html>