<%@ page language="java" contentType="text/html; charset=EUC-KR"   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�λ�����</title>

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
            margin-right: 100px; /* �̹��� �� ������ ���� */
        }

        .inner-box img {
            width: 250px; /* �̹����� ���� ũ�⸦ ���� */
            height: 250px; /* �̹����� ���� ũ�⸦ ���� */
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
			    <img src="images/���ι��.jpg" alt="�̹��� ����">
		</div>

			<!-- //visual -->
	
	<div id="wrap">
            <div class="inner-box" style="margin-bottom: 100px;">
                <ul>
                <a href="cart_list_form.jsp">
                    <li><img src="images/����ֹ�.jpg" alt="�׷��� �̹���: ȸ�� �ΰ�"></li>
                </a>
                <a href="">
                    <li><img src="images/������.jpg" alt="�̹��� 2"></li>
               </a>
               <a href="cart_takeout_list_form.jsp">
                    <li><img src="images/�����ֹ�.jpg" alt="�̹��� 3"></li>
               </a>
                </ul>
            </div>
        </div>

</div>
			
</body>
</html>