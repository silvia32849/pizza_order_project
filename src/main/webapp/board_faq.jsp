<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
boolean isLogin = false;
if (session.getAttribute("sUserId") != null ) {
	isLogin = true;
	
}
%>
<!DOCTYPE html>


	<!-- ������ ���� 2019.12.02 -->
	<link rel="stylesheet" type="text/css" href="/resources/css/ol.css"><link rel="stylesheet" type="text/css" 
	href="css/font.css"> 
	<link rel="stylesheet" type="text/css" href="css/common.css"> 
	 <!--���ο��� sub.css ȣ����������-->
	<link rel="stylesheet" type="text/css" href="css/sub.css">
	<!--//���ο��� sub.css ȣ����������  -->

	<script src="https://cdn.dominos.co.kr/domino/asset/js/jquery-3.1.1.min.js" integrity="sha256-cNrkaflPIUtYnVNSG5A4MKCLT7WJ1HpMJpqDx5EWiGo=" crossorigin="anonymous"></script>
	<script src="https://cdn.dominos.co.kr/domino/asset/js/slick.js" integrity="sha256-1gDsGcL/mf9bomEXFPinwG4SG0I6FjA2J91pWU29WF8=" crossorigin="anonymous"></script>
	<script src="https://cdn.dominos.co.kr/domino/asset/js/TweenMax.min.js" integrity="sha256-AJvwDTgx+2JZWtsg4XDtKI2KFXST+2AosYiLBYde2PM=" crossorigin="anonymous"></script>
	<script src="https://cdn.dominos.co.kr/domino/asset/js/lazyload.js" integrity="sha256-h0ytEAJzE/NiCncNSjODaYM+1bORPweTy4UANhsZ5uo=" crossorigin="anonymous"></script>
			
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/font.css">
    <link rel="stylesheet" type="text/css" href="css/common.css">
    <link rel="stylesheet" type="text/css" href="css/sub.css">
    
</script>
<head>
<title>�λ�����</title>
</head>
<body>


		<div class="warp">
            <div class="header fixed social">
                <div class="header_top">
                    <div class="header_top_inner">
                        <h1>
                            <a href="index.jsp" aria-label="Ȩ" class="logo"></a>
                            <div class="center"></div>
                        </h1>

                        <ul class="header_top_list">
                            <li class="header_top_item">
                            	<% if (isLogin) { %>
								    <a href="user_logout_action.jsp" class="header_top_link">�α׾ƿ�</a>
								<% } else { %>
								    <a href="user_login_form.jsp" class="header_top_link">�α���</a>
								<% } %>

                            </li>
                            <li class="header_top_item">
                             <% if (isLogin) { %>
                                <a href="user_info_form.jsp" class="header_top_link"> ����������</a>
							<% } else { %>
								<a href="user_login_form.jsp" class="header_top_link"> ����������</a>
                           <% } %>
                                
                            </li>
                            <li class="header_top_item">
                             <% if (isLogin) { %>
                                <a href="cart_list_form.jsp" class="header_top_link"> ��ٱ���</a>
                            <% } else { %>
                                 <a href="user_login_form.jsp" class="header_top_link"> ��ٱ���</a>
                            	 <% } %>
                               
                            </li>
                    </div>
                </div>
                

                <div class="portal_tartget vue-portal-target">
                <nav class="tabs">
                    <ul class="ul_tab home_tabs inline">
                        <li class="li_tab">
                            <a href="product_list.jsp" class="tab">
                                <span class="tab_name">�޴�</span>
                            </a>
                        </li>
                        <li class="li_tab">
                            <a href="#" class="tab">
                                <span class="tab_name">��õ</span>
                            </a>
                        </li>
                        <li class="li_tab">
                            <a href="board_main.jsp" class="tab updated">
                                <span class="tab_name">������</span>

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
			    margin-bottom: 50px; 
			  }
			</style>
			
					
			<link rel="stylesheet" type="text/css" href="css/font.css"> 
			<link rel="stylesheet" type="text/css" href="css/common.css"> 
			<link rel="stylesheet" type="text/css" href="css/sub.css">
			
	
	<link rel="stylesheet" type="text/css" media="screen" href="/resources/css/jquery-ui.css">
  <div id="wrap">

<script type="text/javascript" src="/resources/js/jquery-ui.js"></script>



<!-- container -->
		<div id="container">
			<!-- content -->
			<section id="content">
				<div class="sub-type faq">
					<div class="inner-box">
						<div class="page-title-wrap">
							<h2 class="page-title">������</h2>
							
							
						</div>
						<article class="faq-area">
							<div class="menu-nav-wrap">
								<div class="menu-nav">
									<ul>
										<li class="active"><a href="/bbs/faqList">�����ϴ� ����</a></li>
										</ul>
								</div>
								
								
							</div>
							

 <style>
    /* �� ��ư ��Ÿ�� */
    .tab-button {
        padding: 10px 20px; /* �� ��ư�� �е� ���� (���� 10px, �¿� 20px) */
        background-color: #3498db; /* �� ��ư�� ��� ���� ���� */
        color: #fff; /* �� ��ư �ؽ�Ʈ ���� ���� */
        font-size :25px;
        cursor: pointer; /* ������ Ŀ���� ���콺 ���� ȿ�� ���� */
        
    }

    /* ���õ� �� ��ư ��Ÿ�� */
    .tab-button.active {
        background-color: #e74c3c; /* ���õ� �� ��ư�� ��� ���� ���� */
    }

    /* �� ������ ��Ÿ�� */
    .tab-content {
        display: none; /* �⺻������ ��� �� �������� ���� */
        padding: 20px; /* �� �������� �е� ���� (�����¿� 20px) */
        font-size :18px;
        background-color: #f1f1f1; /* �� �������� ��� ���� ���� */
    }

    /* ���õ� �� ������ ��Ÿ�� */
    .tab-content.active {
        display: block; /* ���õ� �� �������� ǥ�� */
    }
</style>
        <!-- �� ��ư -->
        <div class="tab-button" onclick="showTab('tab1')">���� �ֹ��� ��� �� �� �ֳ���?</div>
                <div class="tab-content" id="tab1-content">���� �ֹ��� ��ٱ��Ͽ��� ������ �����մϴ�. ������ �����ϰų� ����ϴ� ��� ��ٱ��Ͽ� �����ϱ⿡�� �����մϴ�.</div>
        
        <div class="tab-button" onclick="showTab('tab2')">���ݿ����� �߱��� ��� �� �� �ֳ���?</div>
                <div class="tab-content" id="tab2-content">E����, ���̳���, M12 ����� ����Ʈ���� ����ϰų� ���̳����� ������ü�� ������ �¶��� �ֹ��� ���ݿ������� �ڵ� �߱޵˴ϴ�.
				<br>										��, ������ǰ�� ��� �Ǵ� �������ݰ��� �ÿ��� ������ '�Ϸ�'�� �� ���忡�� �������� ���ݿ����� �߱� ó���ص帳�ϴ�.
															
				<br>										�� ���ݿ����� �߱޹ޱ�
				<br>										- �ֹ�����: [�ֹ�/���� ������ > ���ݿ�����] ������ ��û�Ͽ� �߱� ����
															
				<br>										�� ���ݿ����� Ȯ���ϱ�
				<br>										- ��� : [�������� > �ֹ����� > �ֹ������� > ���ݿ����� ��ȸ Ŭ��]
															
				<br>										�� ���ݿ����� ��û���� �����ϱ�
				<br>										�� �ֹ��� [�������� > �������� > ���ݿ����� ����]���� '���ݿ����� ��û ����' �Է��� �����մϴ�.
															
				<br>										�� ��Ÿ����
				<br>										- ���ݿ����� ���� ����̳� �̽�û�� ��쿡�� �����߱��Ͽ� ����ó���� �帳�ϴ�.
				<br>										- �����߱޺��� ��� ���ݿ����� �ĺ���ȣ�� 010-0000-1234�� ����˴ϴ�.
				<br>										- �������� �����߱��� ��� ����û ����Ʈ���� �����߱޺� ����� ����� �ϼž߸� �ҵ���� �� ������ ������ �� �ֽ��ϴ�.
				<br>										- ���ݿ����� ���೻���� ����û ����Ʈ(http://hometax.go.kr)���� ��ȸ�� �����մϴ�.</div>
															        
        <div class="tab-button" onclick="showTab('tab3')">	���̳����̰� �����ΰ���?</div>
                <div class="tab-content" id="tab3-content">	���̳����̴� ���� �� ���� ������� ������ �����ϰ� ������ �� �� �ִ� ������������Դϴ�.
				<br>										���̳����� ��� �� ������й�ȣ ������ �Ͻø� �����ϱ� ��ư Ŭ�� �� ��� ������ �����մϴ�.
				<br>										(��, 5���� �̻� ���� �ÿ��� ���� ��й�ȣ �Է� �ʼ�/������ü�� ��� �ݾ� ���� ���� ��й�ȣ �Է� �ʼ�)</div>
													        

        
    </div>
		</li>
		</ul>
		<script>
		 function showTab(tabId) {
		        // ��� �� �������� ����ϴ�.
		        var tabContents = document.querySelectorAll('.tab-content');
		        tabContents.forEach(function (content) {
		            content.style.display = 'none';
		        });

		        // Ŭ���� �� �������� ǥ���մϴ�.
		        var tabContent = document.getElementById(tabId + '-content');
		        tabContent.style.display = 'block';
		    }
   		 </script>
		
									</div>
							
							</div>
					
					</div>
			
		
		<!-- //container -->

