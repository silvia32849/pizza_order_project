<%@page import="java.text.DecimalFormat"%>
<%@page import="com.itwill.pizza.cart.Cart"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.pizza.cart.CartService"%>
<%@page import="com.itwill.pizza.userinfo.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="login_check.jspf"%>
<%
CartService cartService = new CartService();
List<Cart> cartList = cartService.getCartItemByUserId(sUserId);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/cartlist.css">
<title>도미노 피자</title>
</head>
<script type="text/javascript">
	/*전체 삭제(장바구니 비우기)*/

	function cart_delete() {
		document.cart_view_form.method = 'POST';
		document.cart_view_form.action = 'cart_delete_action.jsp';
		document.cart_view_form.submit();
	}

	/*카트아이템 1개 삭제*/

	function cart_deleteItem(cart_no) {

		var form = document.getElementById("deleteForm" + cart_no);
		console.log(form);
		document.cart_delete_form.method = 'POST';
		document.cart_delete_form.action = 'cart_delete_item_action.jsp';
		document.cart_delete_form.submit();
	}

	//카트 수량 변경
	function changeNumber(desc, cart_no) {
		var form = document.getElementById("updateForm" + cart_no);
		var qty = document.getElementById("qty" + cart_no);
		if (desc == '+') {
			form.cart_qty.value = parseInt(form.cart_qty.value) + 1;
			qty.value = form.cart_qty.value;
		} else if (desc == '-') {
			if (form.cart_qty.value - 1 >= 0) {
				form.cart_qty.value = parseInt(form.cart_qty.value) - 1;
				qty.value = form.cart_qty.value;
			}
		}

		form.method = 'POST';
		form.action = 'cart_update_action.jsp';
		form.submit();

	}
</script>
<body>
	<div class="warp">
		<!-- 헤더 시작-->
		<div class="header fixed social">
			<!-- 헤더 top 시작-->
			<div class="header_top">
				<div class="header_top_inner">
					<h1>
						<a href="/" aria-label="홈" class="logo"></a>
						<div class="center"></div>
					</h1>
					<!--
                        <div class="search_area">
                            <form>
                               <input type="search" placeholder="search">
                                <span>검색</span>
                            </form>
                        </div>
                        -->

					<ul class="header_top_list">
						<li class="header_top_item"><a href="login.html"
							class="header_top_link"> 로그인</a></li>
						<li class="header_top_item"><a href="#"
							class="header_top_link"> 마이페이지</a></li>
						<li class="header_top_item"><a href="#"
							class="header_top_link"> 관심상품</a></li>
					</ul>
				</div>
			</div>


			<!-- 헤더 마지막 시작-->
			<div class="portal_tartget vue-portal-target">
				<nav class="tabs">
					<ul class="ul_tab home_tabs inline">
						<li class="li_tab"><a href="#" class="tab"> <span
								class="tab_name">메뉴</span>
						</a></li>
						<li class="li_tab"><a href="#" class="tab"> <span
								class="tab_name">추천</span>
						</a></li>
						<li class="li_tab"><a href="#" class="tab updated"> <span
								class="tab_name">고객센터</span>
						</a></li>
					</ul>
				</nav>
			</div>
		</div>

		<div id="container">
			<section id="content">
				<div class="sub-type cart">
					<div class="inner-box">
						<div class="page-title-wrap">
							<h2 class="page-title">장바구니</h2>
							<div class="depth-area">
								<ol>
									<li><a href="/main">홈</a></li>
									<li><strong>장바구니</strong></li>
								</ol>
							</div>
						</div>

						<article class="cart-area pay">
							<!-- 주소 -->
							<div class="step-wrap">
								<div class="cart-waiting-tab">
									<ul>
										<li class="active"><a href="">배달<span class="itemA">30분
													소요</span></a></li>
										<li><a href="javascript:selectOrderType();">포장<span
												class="itemB">15분 소요</span></a></li>
									</ul>
								</div>
								<div class="title-wrap cart-waiting-btn"></div>
								<div class="deli-info">
									<div class="address">서울특별시 송파구</div>
									<div class="reserve-info new221031">
										<div class="reserve-info-div"></div>

									</div>
									<ul class="notice-txt">
										<li class="delivery-notice"><b>* 환경보호를 위해 피클, 소스 등이
												모두 받지 않기로 기본 설정됩니다.</b></li>
										<li>* 매장 상황에 따라 수령 시간이 상이할 수 있습니다.</li>
										<li>* 영업 마감 시간이 가까울 경우 매장 상황에 따라 주문이 불가할 수 있습니다.</li>
									</ul>
								</div>
							</div>
							<!-- //주소 -->
							<!-- 주문 내역 -->
							<form name="cart_view_form" action="cart_delete_action.jsp"
								method="POST"></form>

							<div class="step-wrap">
								<div class="title-wrap">
									<h3 class="title-type">
										<strong>주문내역</strong>
									</h3>
									<span class="summary side"> <a
										href="javascript:cart_delete();">전체 삭제</a>
									</span>
								</div>
								<div class="cart-list">
									<ul>
										<li class="category">
											<div>상품정보</div>
											<div>추가토핑</div>
											<div>수량</div>
											<div>금액</div>
											<div></div>
										</li>
										<!-- cart item start -->
										<%
										int tot_price = 0;
										for (Cart cart : cartList) {
											tot_price += cart.getProduct().getProduct_price() * cart.getCart_qty();
										%>

											<!-- cart form -->
		                                      <form id="updateForm<%=cart.getCart_no()%>">
											  <input type = "hidden" name="cart_no" value="<%=cart.getCart_no()%>">
											  <input type = "hidden" name="cart_qty" value="<%=cart.getCart_qty()%>">
											  </form>



										<li class="row" id="sold-out0">
											<div class="sold-out-btn" id="sold-out-btn0"
												style="display: none">
												<p>Sold Out</p>
												<a
													href="javascript:changeGoodsCnt('delete',0,'RPZ290GL', '1', 1, 0);"
													class="btn-type4-brd3">삭제</a>
											</div>
											<div class="prd-info">
												<div class="prd-img">
													<img src="<%=cart.getProduct().getProduct_image()%>"
														onerror="this.src='https://cdn.dominos.co.kr/admin/upload/goods/goods_default.jpg'">
												</div>
												<div class="prd-cont">
													<div class="subject"><%=cart.getProduct().getProduct_name()%></div>
													<div class="option">
														<input type="hidden" name="pizza" value="1">
														<%=cart.getProduct().getProduct_size()%></div>
													<div class="price">
														<%=cart.getProduct().getProduct_price()%>
													</div>
												</div>
											</div>

											<div class="prd-option"></div>
											<div class="prd-quantity">
												<div class="quantity-box v2">


													<a href="javascript:changeNumber('-', '<%=cart.getCart_no()%>');"
														class="minus"><button class="btn-minus"></button></a> 
														<input type="number" class="qty0" id="qty<%=cart.getCart_no()%>" value="<%=cart.getCart_qty()%>" readonly="readonly">
													<a href="javascript:changeNumber('+', '<%=cart.getCart_no()%>');"
														class="plus"><button class="btn-plus"></button></a>
												</div>






											</div>
											<div class="prd-total">
												<em>주문금액 : <%=new DecimalFormat("#,##0").format(cart.getProduct().getProduct_price() * cart.getCart_qty())%>원
												</em>
											</div> 
											<div class="prd-delete">
												
													<!-- 카트 1개 삭제 -->
												<a href="javascript:cart_deleteItem('<%=cart.getCart_no()%>')"
													class="btn-close"><span class="hidden">삭제</span></a>
											</div>
											
											<form name="cart_delete_form"
													id="deleteForm<%=cart.getCart_no()%>">
													<input type="hidden" name="cart_no" value="<%=cart.getCart_no()%>">
												</form>


										</li>
										<%
										}
										%>
										<!-- cart item end -->


										<div class="prd-delete">
									<!-- 		<a
												href="javascript:changeGoodsCnt('delete',1,'RPZ298AL', '1', 2, 0);"
												class="btn-close"> <span class="hidden">삭제</span> 
											</a> -->
										</div>
										</li>
										<!-- 총 주문 금액 -->
										<li class="total-price2 side">
											<p>
											    <p>총 금액 <em><%=new DecimalFormat("#,##0").format(tot_price)%></em>원</p>
											</p>
										</li>
										<!-- //총 주문 금액 -->
									</ul>
								</div>
							</div>

							<div class="alcohol-layer" style="display: none;">
								<dl>
									<dt>주류상품 주문 안내</dt>
									<dd>
										<ul>
											<li>※ 카스, 베어풋 메를로 상품 대상으로 진행되고 있는 주류 할인은 기간 한정 프로모션으로 매장
												상황에 따라 조기 종료될 수 있습니다.</li>
											<li>- 오프라인(매장) 방문 및 온라인(홈페이지, 모바일웹, 어플) 주문 가능 (매장별 상이)</li>
											<li>- 콜센터 및 전화 주문 불가하며 온라인 주문 시 비회원 주문 불가</li>
											<li>- 19세 미만 주문 불가 (온라인 주문 시 주문 1회당 성인 인증 1회 必/ 배달 및
												방문포장 피자 수령 시 반드시 신분증 소지 必/ 미 소지 시 주류 제외 재 결제 必)</li>
											<li>- 배달 주문 시 주류상품의 금액이 총 결제금액 또는 총 상품금액(도미노콘, 지류상품권 할인
												적용)의 50%의 넘지 않을 경우 주문 가능</li>
											<li>- 배달 주문 시 주류 단독 주문 불가 (피자 or 조리류 사이드디시(ex. 스파게티, 치킨
												등)와 함께 주문 시에만 주문 가능)</li>
											<li>- 주류 상품만 포장 주문 시 할인 적용 불가</li>
											<li>- 비대면 안전배달 이용불가</li>
										</ul>
									</dd>
									<br>
									<dt>주류 상품 안내</dt>
									<dd>
										<ul>
											<li>- 베어풋 메를로(187ml, 13도) 정상가 6,000원</li>
											<li>- 카스(355ml, 4.5도) 정상가 2,500원 (* 롯데월드점 한해 3,000원)</li>
											<li>- 구스 아일랜드 IPA(495ml, 5.9도) 정상가 3,900원</li>
											<li>*지나친 음주는 암 발생의 원인이 됩니다. 청소년 음주는 성장과 뇌 발달을 저해하며, 임신 중
												음주는 태아의 기형 발생이나 유산의 위험을 높입니다.</li>
											<li>*주류 상품은 일부 매장 한정 판매로 매장별로 배달 및 방문포장 운영 여부가 상이하오니 자세한
												판매 매장 리스트는 이벤트페이지 유의사항 참고 부탁드립니다.</li>
										</ul>
									</dd>
								</dl>
								<a href="javascript:void(0);" class="btn-close"><span
									class="hidden">삭제</span></a>
							</div>
							<!-- //주문 내역 -->

							<!-- 주문하기 버튼 -->

							<div class="btn-wrap">
								<a href="order_into_form.jsp" class="btn-type v3">주문하기</a>
							</div>

							<a href="product_list.jsp" class="btn-type-brd">메뉴 추가하기</a>


							<!-- //주문하기 버튼 -->



						</article>
					</div>
				</div>
				<input type="hidden" name="viewDay" id="viewDay" value=""> <input
					type="hidden" name="viewTime" id="viewTime" value=""> <input
					type="hidden" name="viewReserveGubun" id="viewReserveGubun"
					value="">















				<!--  footer 시작 -->
				<div class="footer lg">
					<div class="inner">
						<div class="coporation_area">
							<div class="business_info">
								<div class="info_list">
									<dl class="info_item">
										<dt class="business_title">
											크림 주식회사 · 대표 차경진 <span class="blank"></span> 사업자등록번호 :
											000-00-00000 <span class="blank"></span> 통신판매업 : 제
											2021-성남분당C-0093호 <span class="blank"></span><br> 사업장소재지
											: 서울 강남구 무슨타워, 4층 아이티윌 <span class="blank"></span> 호스팅 서비스 :
											마이바티스 ㈜
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