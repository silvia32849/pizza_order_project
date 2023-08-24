<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<head>
    <!-- ���⿡ �ʿ��� ��Ÿ�ϰ� ��ũ��Ʈ�� �߰��� �� �ֽ��ϴ�. -->
    <style>
        .inner-box {
            display: flex; /* ���η� �����ϱ� ���� flexbox ��� */
        }

        .inner-box ul {
            list-style-type: none; /* ��� ��Ÿ�� ���� */
            display: flex; /* ���η� �����ϱ� ���� flexbox ��� */
            padding: 0; /* ����� ���� ���� ���� */
        }

        .inner-box li {
            margin-right: 30px; /* �̹��� �� ������ ���� */
        }

        .inner-box img {
            width: 400px; /* �̹����� ���� ũ�⸦ ���� */
            height: 400px; /* �̹����� ���� ũ�⸦ ���� */
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
                    <li><img src="images/��������.jpg" alt="�׷��� �̹���: ȸ�� �ΰ�"></li>
                </a>
                <a href="board_faq.jsp">
                    <li><img src="images/FAQ.jpg" alt="�̹��� 2"></li>
               </a>
               <a href="inquiries_main.jsp">
                    <li><img src="images/1��1����.jpg" alt="�̹��� 3"></li>
               </a>
                </ul>
            </div>
        </div>
    </div>
</body>
</html>

