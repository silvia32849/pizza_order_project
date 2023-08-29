<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="login_check.jspf" %>

<%
boolean isLogin = false;
if (session.getAttribute("sUserId") != null ) {
	isLogin = true;
	
}

%>

<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300&amp;display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/font.css">
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/sub.css">



<title>DOMINO</title>

<script type="text/javascript">
	function inquiriesCreate() {
		if (newsForm.inputTitle.value == "") {
			alert("제목을 입력하십시요.");
			newsForm.title.focus();
			return false;
		}
		if (newsForm.inputText.value == "") {
			alert("내용을 입력하십시요.");
			newsForm.content.focus();
			return false;
		}

		newsForm.action = "inquiries_write_action.jsp";
		newsForm.method = "POST";
		newsForm.submit();
	}

	function inquiriesList() {
		newsForm.action = "inquiries_list.jsp";
		newsForm.submit();
	}
	
System.out.println(sUser);


</script>
</head>
<body>
	<div id="container" style="margin-top: 100px;">
		<!-- header start -->
		<div id="header">
			<!-- include_common_top.jsp start-->






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
								<li class="li_tab"><a href="#" class="tab"> <span
										class="tab_name">메뉴</span>
								</a></li>
								<li class="li_tab"><a href="#" class="tab"> <span
										class="tab_name">추천</span>
								</a></li>
								<li class="li_tab"><a href="boardtestmain.jsp"
									class="tab updated"> <span class="tab_name">고객센터</span>

								</a></li>

							</ul>
						</nav>
					</div>
				</div>




			</div>
		</div>
		<div class="inner-box" style="margin-bottom: 300px;">


			<div class="page-title-wrap"
				style="font-size: 40px; margin-left: 40px; margin-bottom: 50px;">
				<h2 class="page-title">1대1문의</h2>
				<div class="page-date-wrap"
					style="font-size: 20px; margin-left: 800px;">
					<h2 class="page-date">작성일 : 2023년8월24일</h2>
				</div>
			</div>

			<article class="notice-area">
				<div class="news-view">
					<form id="newsForm" name="newsForm" method="post" class="write">
						<dl class="news-content">
							<dt>
								<input type="text" id="inputTitle" name="inputTitle"
									placeholder="제목 입력" style="width: 30%; height: 30px;">
							</dt>
							<dd>
								<p>
									<input type="text" id="inputText" name="inputText"
										placeholder="원하는 내용을 입력하세요" style="width: 50%; height: 300px;">
								</p>
							</dd>
						</dl>

					</form>
					<table width=590 border=0 cellpadding=0 cellspacing=0>
						<tr>
							<td align=center><input type="button" value="문의하기"
								onClick="inquiriesCreate()"> &nbsp; <input type="button"
								value="게시판 목록" onClick="boardList()"></td>
						</tr>
					</table>
					</td>
				</div>
			</article>

		</div>




	</div>
</body>
</html>