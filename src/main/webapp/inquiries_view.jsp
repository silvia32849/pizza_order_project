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
	
	
 %>   
    
<!DOCTYPE html>


<html>
<head>
<meta charset="EUC-KR">
<title>inquiries view</title>
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