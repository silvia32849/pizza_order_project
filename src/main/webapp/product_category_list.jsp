
<%@page import="java.text.DecimalFormat"%>
<%@page import="com.itwill.pizza.product.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.pizza.product.ProductService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%

String noStr = request.getParameter("product_category");
if (noStr == null || noStr.equals("")) {
	response.sendRedirect("product_list.jsp");
	return;
}

ProductService ps = new ProductService();
List<Product> productList= ps.findByCategory(Integer.parseInt(noStr));

boolean isLogin=false;
if(session.getAttribute("sUserId")!=null) {
	isLogin=true;
	
}
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/style.css" > 
    <link rel="stylesheet" type="text/css" href="css/product.css" > 
    <title>인생피자</title>
</head>
<body>
    <div class="warp">
            <!-- 헤더 시작-->    
            <div class="header fixed social">
                <!-- 헤더 top 시작-->
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
                

                <!-- 헤더 마지막 시작-->
                <div class="portal_tartget vue-portal-target">
                    <nav class="tabs">
                        <ul class="ul_tab home_tabs inline">
                           <li class="li_tab">
                                <a href="product_list.jsp" class="tab">
                                 <span class="tab_name">전체 메뉴</span>
                              </a>
                           </li>
                         
                           <li class="li_tab">
                                <a href="borad_list.jsp" class="tab updated">
                                    <span class="tab_name">고객센터</span>
                                </a>
                            </li>
                         </ul>
                    </nav>
                </div>
            </div>







            <!-- 컨테이너 시작 -->
            <div id="container">
                <!-- content -->
                <section id="content">
                    <div class="sub-type menu">
                        <div class="inner-box">
                            <!-- 1depth 메뉴명 & 네비게이션 -->
                            <div class="page-title-wrap">
                <h2 class="page-title">MENU</h2>
                <div class="depth-area">
                    <ol>
                        <li><a href="index.jsp">홈</a></li>
                        <li><a href="product_list.jsp">메뉴</a></li>
                        <li><strong>피자 </strong></li>
                        </ol>
                </div>
            </div>
            <!-- //1depth 메뉴명 & 네비게이션 -->
                            

                            <article class="menu-list-area">
                                <!-- menu-list -->
                                <div class="menu-nav-wrap">
                <div class="menu-nav">
                    <ul>
                        
                        <li class="active"><a href="product_category_list.jsp?product_category=1">피자</a></li>
                        <li class="active"><a href="product_category_list.jsp?product_category=2">사이드메뉴</a></li>
                        <li class="active"><a href="product_category_list.jsp?product_category=3">음료 & 소스</a></li>
                    </ul>
                </div>
                
                </div>
   
                                
                               
                                <div class="title-wrap-center" id="category-new">
                                    <h3 class="title-type">
                                        메뉴
                                    </h3>
                                </div> 
                                
                                <div class="menu-list">
                                    <ul>
                                        <!-- 피자&사이드 -->
                                        <%for (Product product : productList) { %>
                                        <li>
                               
                                            <div class="prd-img">
                                                <a href="product_detail.jsp?product_no=<%=product.getProduct_no()%>">
                                                    <img class="lazyload" src="<%=product.getProduct_image() %>" data-src="<%=product.getProduct_image() %>" alt="<%=product.getProduct_name()%>">
                                                </a>
                                                
                                                <a href="javascript:getDetailSlide('RPZ298AL','C0102');trk_call('list');" class="btn-detail">
                                                    <i class="ico-zoomImg"></i>
                                                    <span class="hidden">상세버튼</span>
                                                </a>
                                            </div>
                                            <div class="prd-cont">
                                                <div class="subject"><%=product.getProduct_name() %>
                                                </div>
                                            </div>
                                            <%
                                           // System.out.println(product.getProduct_image());
                                             String price = "";
	                       					 price = String.valueOf(product.getProduct_price());
	                     					
	                    					 DecimalFormat decimalFormat = new DecimalFormat("#,###");
	                    					 String formattedPrice = decimalFormat.format(Integer.parseInt(price)); // 포맷팅된 가격
	                    					
	                    					 String price1 = String.valueOf(product.getProduct_price() + 5000);
	                    					 DecimalFormat decimalFormat1 = new DecimalFormat("#,###");
	                    					 String formattedPrice1 = decimalFormat.format(Integer.parseInt(price1)); // 포맷팅된 가격 %>
                                            <div class="prd-price">
                                                <div class="price-box">
                                                    <span class="price"><span class="size_l">L</span><%=formattedPrice1%>원</span>
                                                        <span class="price"><span class="size_m">M</span><%=formattedPrice%>원</span>
                                                    </div>
                                            </div>
                                            <div class="hashtag">
                                                <span><%=product.getProduct_desc()%></span>
                                                    
                                                    </div>
                                          
                                        </li>
                                        <%} %>  
                                        <!-- //피자&사이드 -->
                                        
                                        </ul>
                                </div>
                                
                                <!-- 하단 클래식피자 리스트  -->
                                
                                
                                
                                
                                
                                </article>
                            
                            <div class="bottom-guide-area">
                                <div class="box">
                                    <div class="list-text">
                                        <dt>※ 유의사항</dt>
                                        <dd>
                                            <ul>
                                                <li>단종으로 인한 상품권 사용 안내 : 동일 가격 또는 더 높은 가격의 제품으로 대체 주문 가능<br>
                                                    (상품권에 명시된 제품보다 더 높은 가격대의 제품 주문 시, 금액 추가 발생)<br>
                                                (단, 상품권에 명시된 제품보다 저렴한 제품 주문 시 발생하는 차액에 대해서는 환불 처리 불가)</li>
                                                <li>
                                                일부 리조트 및 특수매장은 상기 가격과 차이가 있음</li>
                                                <li>모든 사진은 이미지 컷이므로 실제 제품과 다를 수 있습니다.</li>
                                            </ul>
                                        </dd>
                                    </div>
                                </div>
                                <div class="box">
                                    <p class="text-type">제품의 원산지, 영양성분 및 알레르기 유발성분을 먼저 확인하세요.</p>
                                    <div class="btn-wrap2">
                                        <a href="javascript:UI.layerPopUp({selId:'#pop-allergy', url:'/contents/ingredient'})" class="btn-type-left">원산지·영양성분 ·알레르기 유발성분 정보</a>
                                    </div>
                                    
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </section><!-- //content -->

                <!--  footer 시작 -->
            <div class="footer lg">
                <div class="inner">
                    <div class="coporation_area">
                        <div class="business_info">
                            <div class="info_list">
                                <dl class="info_item">
                                    <dt class="business_title">
                                        크림 주식회사 · 대표 차경진
                                        <span class="blank"></span>
                                        사업자등록번호 : 000-00-00000
                                        <span class="blank"></span>
                                        통신판매업 : 제 2021-성남분당C-0093호
                                        <span class="blank"></span><br>
                                        사업장소재지 : 서울 강남구 무슨타워, 4층 아이티윌
                                        <span class="blank"></span>
                                        호스팅 서비스 : 마이바티스 ㈜
                                    </dt>
                                </dl>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>