<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<head>
    <!-- 여기에 필요한 스타일과 스크립트를 추가할 수 있습니다. -->
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
            margin-right: 30px; /* 이미지 간 간격을 조절 */
        }

        .inner-box img {
            width: 400px; /* 이미지의 가로 크기를 조절 */
            height: 400px; /* 이미지의 세로 크기를 조절 */
        }
    </style>
</head>
<body>
    <div id="toptest-content">
        <jsp:include page="include_common_top.jsp"/>
    </div>

    <div class="container" style="margin-top: 300px;" style="margin-bottom: 300px;">
        <div id="wrap">
            <div class="inner-box">
                <ul>
                <a href="board_list.jsp">
                    <li><img src="images/공지사항.jpg" alt="그래픽 이미지: 회사 로고"></li>
                </a>
                <a href="board_faq.jsp">
                    <li><img src="images/FAQ.jpg" alt="이미지 2"></li>
               </a>
               <a href="inquiries_main.jsp">
                    <li><img src="images/1대1문의.jpg" alt="이미지 3"></li>
               </a>
                </ul>
            </div>
        </div>
    </div>
</body>
</html>

