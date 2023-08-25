<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>인생피자</title>

<style>
        .inner-box {
            display: flex; /* 가로로 나열하기 위해 flexbox 사용 */
        }

        .inner-box ul {
            list-style-type: none; /* 목록 스타일 제거 */
            display: flex; /* 가로로 나열하기 위해 flexbox 사용 */
            padding: 0; /* 목록의 내부 여백 제거 */
        }

        .inner-box li {
            margin-right: 200px; /* 이미지 간 간격을 조절 */
        }

        .inner-box img {
            width: 300px; /* 이미지의 가로 크기를 조절 */
            height: 300px; /* 이미지의 세로 크기를 조절 */
        }
    </style>
</head>
<body>
    <div id="toptest-content">
        <jsp:include page="include_common_top.jsp"/>
    </div>
    
    
   <div id="container" >
	<section id="content"   style="margin-bottom: 500px;">
		<div class="main">
			<!-- visual -->
			    <img src="images/메인배너.jpg" alt="이미지 설명">
		</div>

			<!-- //visual -->
	
	<div id="wrap">
            <div class="inner-box" style="margin-bottom: 100px;">
                <ul>
                <a href="cart_list_form.jsp">
                    <li><img src="images/배달주문.jpg" alt="그래픽 이미지: 회사 로고"></li>
                </a>
                <a href="">
                    <li><img src="images/퀵오더.jpg" alt="이미지 2"></li>
               </a>
               <a href="cart_takeout_list_form.jsp">
                    <li><img src="images/포장주문.jpg" alt="이미지 3"></li>
               </a>
                </ul>
            </div>
        </div>

</div>
			
</body>
</html>