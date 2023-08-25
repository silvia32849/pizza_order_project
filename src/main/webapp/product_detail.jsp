<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="com.itwill.pizza.product.Product"%>

<%@page import="com.itwill.pizza.product.ProductService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String sUserId=null;

String noStr = request.getParameter("product_no");
if (noStr == null || noStr.equals("")) {
	response.sendRedirect("product_list.jsp");
	return;
}
boolean isLogin = false;
if (session.getAttribute("sUserId") != null) {
	isLogin = true;
}

ProductService ps = new ProductService();

Product product = ps.productDetail(Integer.parseInt(noStr));

%>

<!DOCTYPE HTML>
<html lang="ko">
<head>
<script type="text/javascript">
	function add_cart() {
		if (<%=!isLogin%>) {
			alert('로그인 하세요');
			location.href = 'user_login_form.jsp';
			return false;
		}
		return true;
	}
	//제품 상세 페이지에서 장바구니 담기
	function add_cart_popup_window() {
		if (<%=!isLogin%>) {
			alert('로그인 하세요');
			location.href = 'user_login_form.jsp';
		} else {
			var left = Math.ceil((window.screen.width) / 5);
			var top = Math.ceil((window.screen.height) / 3);
			console.log(left);
			console.log(top);
			var cartWin = window
					.open(
							"about:blank",
							"cartForm",
							"width=260,height=130,top="
									+ top
									+ ",left="
									+ 0
									+ ",location=no, directories=no, status=no, menubar=no, scrollbars=no,copyhistory=no");
			document.add_cart_form.action = 'cart_add_action.jsp';
			document.add_cart_form.target = 'cartForm';
			document.add_cart_form.method = 'POST';
			document.add_cart_form.submit();
		}
	}
	/*
	제품상세보기에서 다이렉트 주문
	 */
	function order_create_form() {
		if (<%=!isLogin%>) {
			alert('로그인 하세요');
			location.href = 'user_login_form.jsp';
		} else {
			document.product_detail_form.method = 'POST';
			document.product_detail_form.action = 'order_create_action.jsp';
			document.product_detail_form.submit();
		}
	}
	function productList() {
		location.href = 'product_list.jsp';
	}
</script>
<script>
	
</script>
<meta charset="euc-kr">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" id="viewport"
	content="width=1119px, user-scalable=yes">
<meta http-equiv='cache-control' content='no-cache'>
<meta http-equiv='expires' content='0'>
<meta http-equiv='pragma' content='no-cache'>
<meta http-equiv='Cache-Control' content='no-cache'>
<!-- 사용자지정 태그 -->
<meta name="description" content="<%=product.getProduct_desc()%>" />
<meta name="title" content="<%=product.getProduct_name()%>- 책을 피자" />
<title><%=product.getProduct_name()%> - 인생 피자</title>
<meta property="og:type" content="website" />
<meta property="og:title"
	content="<%=product.getProduct_name()%> - 책을 피자" />
<meta property="og:site_name" content="책을 피자" />
<meta property="og:image" content="<%=product.getProduct_image()%>" />
<meta property="og:image:width" content="270" />
<meta property="og:image:height" content="270" />
<meta property="og:description" content="<%=product.getProduct_desc()%>" />
<meta property="og:url" content="product_detail.jsp" />
<meta name="twitter:card" content="app" />
<meta name="twitter:title"
	content="<%=product.getProduct_name()%> - 책을 피자" />
<meta name="twitter:image" content="<%=product.getProduct_image()%>" />
<meta name="twitter:description"
	content="<%=product.getProduct_desc()%>" />
<meta name="twitter:description"
	content="<%=product.getProduct_desc()%>" />
<meta name="twitter:app:name:iphone" content="책을 피자" />
<meta name="twitter:app:id:iphone" content="371008429" />
<meta name="twitter:app:url:iphone"
	content="<%=product.getProduct_image()%>" />
<meta name="twitter:app:name:ipad" content="책을피자" />
<meta name="twitter:app:id:ipad" content="371008429" />
<meta name="twitter:app:url:ipad"
	content="<%=product.getProduct_image()%>" />
<link rel="stylesheet" type="text/css"
	href="https://cdn.dominos.co.kr/domino/asset/css/font.css">
<link rel="stylesheet" type="text/css" href="css/common.css" > 
<!-- <link rel="stylesheet" type="text/css"
	href="https://cdn.dominos.co.kr/domino/pc/css/common.css"> -->
<link rel="stylesheet" type="text/css" href="/resources/css/ol.css">
<!--메인에는 sub.css 호출하지않음-->
<link rel="stylesheet" type="text/css"
	href="https://cdn.dominos.co.kr/domino/pc/css/sub.css"> 


</head>
<body>

	<div id="wrap">
		<header id="header">
		<div class="top-wrap">
				<div class="inner-box" id="tip-box-top">
					<a href="index.jsp" class="btn-logo"> <i class="ico-logo"></i>
						<h1 class="hidden">도미노피자</h1>
					</a>

					<ul class="header_top_list">
                            <li class="header_top_item">
                            <%if(sUserId!=null){%>
                            	<a href="logout.html" class="header_top_link"> 로그아웃</a>
                            <%}else {%>
                                <a href="login.html" class="header_top_link"> 로그인</a>
                            <%} %>
                            	
                            </li>
                            <li class="header_top_item">
                            <%if(sUserId!=null){%>
                                <a href="user_info.jsp?userId=?<%=sUserId %>" class="header_top_link"> 마이페이지</a>
                             <%}else {%>
                             	<a href="user_login_form.jsp" class="header_top_link"> 로그인</a>
                             <%} %>
                            </li>
                      </ul>
				</div>
			</div>

			<!-- main 1dep menu -->
			<div id="gnb" class="gnb-wrap">
				<div class="gnb-inner">
					<ul>
						<li class="active"><a href="product_list.jsp"><span>메뉴</span></a>
						</li>
						<!-- <li><a href="/ecoupon/main"><span>e-쿠폰</span></a></li>
						<li><a href="/voucher/list?gubun=M"><span>상품권 선물</span></a></li>
						<li><a href="/event/list?gubun=E0200"><span>이벤트&middot;제휴</span></a>
						</li>
						<li><a href="/branch"><span>매장검색</span></a></li>
						<li><a href="/company/contents/chainstore1"><span>가맹점
									모집</span></a></li> -->
					</ul>

				</div>
			</div>
			<!-- //main 1dep menu -->
		</header>
		<!-- //header -->
		<script type="text/javascript"
			src="/resources/js/doughOptions.js?ver=0.1"></script>
		<!-- 도우&엣지 정보 -->



		<div id="container">
			<section id="content">
				<div class="sub-type menu">
					<div class="">


						<div class="page-title-wrap inner-box">
							<h2 class="page-title">메뉴</h2>
							<div class="depth-area">
								<ol>
									<li><a href="index.html">홈</a></li>
									<li><a href="product_list.jsp">메뉴</a></li>
									<li><strong><%=product.getProduct_name() %></strong></li>
								</ol>
							</div>
						</div>

						<article class="menu-list-area menu-detail-area">
							<!-- menu-list -->
							<div class="inner-box">
								<div class="menu-nav-wrap">
									<div class="menu-nav">
										<ul>
											<li class="active"><a
												href="product_category_list.jsp?product_category=1">피자</a></li>
											<li><a
												href="product_category_list.jsp?product_category=2">사이드메뉴</a></li>
											<li><a
												href="product_category_list.jsp?product_category=3">음료 &
													소스</a></li>
										</ul>
									</div>

								</div>

							</div>
							<!-- //menu-list -->
<script type="text/javascript">
	function getDetailSlide(imageName){
		window.open("http://localhost/web_project_team1_aaaa/<%=product.getProduct_image()%>","imageView","width=500,height=500,top=50,left=50,location=no, directories=no, status=no, menubar=no, scrollbars=no,copyhistory=no")
	}

</script>
							<div class="menu-info inner-box">
								<div class="img-wrap">
									<div class="view-box">
										<!-- 대표 이미지 슬라이드 -->
										<div class="menu-slider-view2">
											<div>
												<img src="<%=product.getProduct_image()%>"
													alt="<%=product.getProduct_name()%>" />
											</div>
										</div>

										<div class="menu-slider-viewdouble" style="display: none;"></div>

										<!-- //대표 이미지 슬라이드 -->

										<a
											href="javascript:getDetailSlide();"
											class="btn-detail"> <i class="ico-zoomImg"></i>제품상세 <span
											class="hidden">상세버튼</span>
										</a>
									</div>

									<div class="guide-box2">모든 사진은 이미지컷으로 실제 제품과 다를 수 있습니다.</div>
									<div class="guide-box2">원산지 정보는 사진 우측 하단 돋보기 메뉴를 통해 확인
										가능합니다.</div>
<script>
//영양성분표시
function yungyang(){
	window.open("https://web.dominos.co.kr/contents/deliveryIngredient","imageView","width=500,height=500,top=50,left=50,location=no, directories=no, status=no, menubar=no, scrollbars=no,copyhistory=no")
}
				
</script>
<script type="text/javascript">
	
</script>
<%
	DecimalFormat df = new DecimalFormat("#,###");
	int lPrice = product.getProduct_price()+5000;
	int mPrice = product.getProduct_price();
	String formatLPrice=df.format(lPrice);
	String formatMPrice=df.format(mPrice);
				
%>
								</div>
								<div class="detail-wrap">
									<div class="menu-box">
										<div class="title-box">
											<h3 class="title pizza"><%=product.getProduct_name()%></h3>

											<div class="hashtag">
												<span><%=product.getProduct_desc()%></span>

											</div>
										</div>

										<div class="btn-wrap2">
											<a href="javascript:yungyang();" class="btn-type-left v2">원산지·영양성분 ·알레르기 유발성분 정보</a>
										</div>
									</div>

									<!-- 주문 옵션 선택 -->

<style>


        /* 장바구니 및 주문하기 버튼 스타일 */
        .btn-type {
            display: inline-block;
            padding: 10px 20px;
            background-color: #000;
            color: #fff;
            text-decoration: none;
            font-weight: bold;
            border-radius: 5px;
        }

        .btn-type:hover {
            background-color: #222;
        }

}
</style>


<form name="add_cart_form" method="POST" onsubmit="return add_cart();" action="cart_add_action.jsp"> 
        <h3>사이즈 선택</h3>
        <div class="radio-container">
            <label class="radio-label" for="size1">
                <input type="radio" id="size1" name="size" value="M" checked="checked"/>
                <span class="radio" ></span> M &nbsp;<%=formatMPrice %>원
            </label>
            
            <label class="radio-label" for="size2">
                <input type="radio" id="size2" name="size" value="L" />
                <span class="radio" ></span> L &nbsp;<%=formatLPrice %>원
            </label>
        </div>
        <br><br>
        <a href="javascript:add_cart_popup_window(this.parentElement);" title="장바구니[팝업]" class="btn-type">장바구니</a>
        <a href="javascript:order_create_form();" title="주문하기[팝업]" class="btn-type">주문하기</a>
    </form>	
							
									
									</div>
								</div>
							</article>
						</div>
					</div>
				</section>
			</div>
		</div>
	</body>
</html>