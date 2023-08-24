<%@page import="com.itwill.pizza.inquiries.Inquiries"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.pizza.inquiries.InquiriesService"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="com.itwill.pizza.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

<%
InquiriesService inquiriesService = new InquiriesService();
String User_id="우한영";
List<Inquiries> inq = inquiriesService.findInquiriesList(User_id);
System.out.println(inq);


%>


<!DOCTYPE html>
<html>
<head>

</head>
<body>
 			<div id="toptest-content">
				<jsp:include page="include_common_top.jsp"/>
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
							<strong><%=User_id %></strong>	
							<strong>님께서 문의하신 내용입니다.</strong>
							</div>
								
							<div class="text-type">
								<%=User_id %> 님께서 문의하신 내용은 
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
