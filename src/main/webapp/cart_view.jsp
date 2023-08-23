<%@page import="com.itwill.pizza.userinfo.User"%>
<%@page import="com.itwill.pizza.userinfo.UserService"%>
<%@page import="java.util.List"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="com.itwill.pizza.cart.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itwill.pizza.cart.CartService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
UserService userService = new UserService();
userService.login("user1", "2222");
CartService cartService = new CartService();
List<Cart> cartList = cartService.getCartItemByUserId("user1"); 
%>

<!DOCTYPE html>
<html>
<head>	 
			<div id="toptest-content">
				<jsp:include page="customer_service_center_top.jsp"/>
			</div>
			
			<style>
			  body {
			    margin-top: 180px; 
			  }
			</style>
			
			<style>
			  body {
			    margin-bottom: 180px; 
			  }
			</style>
			
	<link rel="stylesheet" type="text/css" href="https://cdn.dominos.co.kr/domino/asset/css/font.css">		
	<link rel="stylesheet" type="text/css" href="https://cdn.dominos.co.kr/domino/pc/css/common.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/ol.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.dominos.co.kr/domino/pc/css/sub.css">
	
	<link rel="stylesheet" type="text/css" href="css/font.css"> 
	<link rel="stylesheet" type="text/css" href="css/common.css"> 
	<link rel="stylesheet" type="text/css" href="css/sub.css">
		
</head>
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
													<li class="active"><a href="">배달<span class="itemA"> ~ 60분 소요</span></a></li>
													<li><a href="javascript:selectOrderType();">포장<span class="itemB"> ~ 45분 소요</span></a></li>
												</ul>
											</div>
							<div class="title-wrap cart-waiting-btn">
								<div class="cart-btn-side">
								</div>
							</div>
							
							
							<div class="deli-info">
								<div class="address">
									서울특별시 강남구 역삼동 823 삼원타워  4층 아이티윌</div>
								<div class="store">
									<span>역삼점</span>&nbsp;02-564-0554</div>
								<div class="reserve-info new221031">
									<div class="reserve-info-div">
										</div>
								</div>
								
								<ul class="notice-txt">
									<li class="delivery-notice"><b>* 환경보호를 위해 피클, 소스 등이 모두 받지 않기로 기본 설정됩니다.</b></li>
									<li>* 매장 상황에 따라 수령 시간이 상이할 수 있습니다.</li>
									<li>* 영업 마감 시간이 가까울 경우 매장 상황에 따라 주문이 불가할 수 있습니다.</li>
								</ul>
							</div>
						</div>
					<!-- //주소 -->
					<!-- 주문 내역 -->
					<div class="step-wrap">
							<div class="title-wrap">
								<h3 class="title-type">
									<strong>주문내역</strong>
								</h3>
								<span class="summary side"> 
									<a href="cart_delete_action.jsp">전체 삭제</a>
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
									int tot_price=0;
									for(Cart cart:cartList){ 
									tot_price+=cart.getProduct().getProduct_price()*cart.getCart_qty();
									%>
								
								
									<li class="row" id="sold-out0">
											<div class="sold-out-btn" id="sold-out-btn0" style="display:none">
                                        		<p>Sold Out</p>
                                           		<a href="javascript:changeGoodsCnt('delete',0,'RPZ290GL', '1', 1, 0);" class="btn-type4-brd3">삭제</a>
                                        	</div>
											<div class="prd-info">
												<div class="prd-img">
													<img src="<%=cart.getProduct().getProduct_image()%>" onerror="this.src='https://cdn.dominos.co.kr/admin/upload/goods/goods_default.jpg'">
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
											
											<div class="prd-option">
												</div>
											<div class="prd-quantity">
												<div class="quantity-box v2">
													<a href="javascript:void(0);" onclick="changeGoodsCnt('minus',0,'RPZ290GL', '1', 1, -1);" class="minus"><button class="btn-minus"></button></a>
													<input type="number" class="qty0" id="qty0" value="<%=cart.getCart_qty() %>" readonly="">
													<a href="javascript:void(0);" onclick="changeGoodsCnt('plus',0,'RPZ290GL', '1', 1, 1);" class="plus"><button class="btn-plus"></button></a>
													</div>
											</div>
											<div class="prd-total">
												<em>총주문금액 : <%=new DecimalFormat("#,##0").format(cart.getProduct().getProduct_price() * cart.getCart_qty())%>원</em>
											</div>
											<div class="prd-delete">
												<a href="cart_delete_item_action.jsp" class="btn-close">
													<span class="hidden">삭제</span>
												</a>
											</div>
										</li>
										<%}%>
										<!-- cart item end -->
										
									<!-- 총 주문 금액 -->
									<li class="total-price2 side">
			                            <p>총 금액 <em><%=new DecimalFormat("#,##0").format(tot_price)%></em>원</p>
			                        </li>
									<!-- //총 주문 금액 -->
								</ul>
							</div>
						</div>
					
						<div class="alcohol-layer" style="display:none;">
                            <dl>
                                <dt>주류상품 주문 안내</dt>
                                <dd>
                                    <ul>
                                        <li>※ 카스, 베어풋 메를로 상품 대상으로 진행되고 있는 주류 할인은 기간 한정 프로모션으로 매장 상황에 따라 조기 종료될 수 있습니다.</li>
                                        <li>- 오프라인(매장) 방문 및 온라인(홈페이지, 모바일웹, 어플) 주문 가능 (매장별 상이)</li>
                                        <li>- 콜센터 및 전화 주문 불가하며 온라인 주문 시 비회원 주문 불가</li>
                                        <li>- 19세 미만 주문 불가 (온라인 주문 시 주문 1회당 성인 인증 1회 必/ 배달 및 방문포장 피자 수령 시 반드시 신분증 소지 必/ 미 소지 시 주류 제외 재 결제 必)</li>
                                        <li>- 배달 주문 시 주류상품의 금액이 총 결제금액 또는 총 상품금액(도미노콘, 지류상품권 할인 적용)의 50%의 넘지 않을 경우 주문 가능</li>
                                        <li>- 배달 주문 시 주류 단독 주문 불가 (피자 or 조리류 사이드디시(ex. 스파게티, 치킨 등)와 함께 주문 시에만 주문 가능)</li>
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
                                        <li>*지나친 음주는 암 발생의 원인이 됩니다. 청소년 음주는 성장과 뇌 발달을 저해하며, 임신 중 음주는 태아의 기형 발생이나 유산의 위험을 높입니다.</li>
                                        <li>*주류 상품은 일부 매장 한정 판매로 매장별로 배달 및 방문포장 운영 여부가 상이하오니 자세한 판매 매장 리스트는 이벤트페이지 유의사항 참고 부탁드립니다.</li>
                                    </ul>
                                </dd>
                            </dl>
                            <a href="javascript:void(0);" class="btn-close"><span class="hidden">삭제</span></a>
                        </div>
						<!-- //주문 내역 -->
						
						<!-- 주문하기 버튼 -->
								
						<div class="btn-wrap">
									<a href="product_list.jsp" class="btn-type-brd">메뉴 추가하기</a>
								<a href="javascript:reserveValid('O', '30900');" class="btn-type v3">주문하기</a>
							</div>
						<!-- //주문하기 버튼 -->
					
		<input type="hidden" name="viewDay" id="viewDay" value="">
<input type="hidden" name="viewTime" id="viewTime" value="">
<input type="hidden" name="viewReserveGubun" id="viewReserveGubun" value="">

<script>
$(document).ready(function() {
	child_reserve_reset();
});
</script>

<div class="pop-layer" id="pop-reserve-setting">
	<div class="dim"></div>
	<div class="pop-wrap">
		<div class="pop-title-wrap">
			<h2 class="pop-title">예약 설정</h2>
		</div>
		<div class="pop-content">
			<div class="form-group">
				<div class="form-item">
					<div class="select-type2">
							<select id="reserve_day" name="reserve_day" onchange="arriveTime('', 'reserve_day','reserve_time11','H', '', '');">
								<option value="2023082216">오늘 8/22(화)</option>
								<option value="2023082316">내일 8/23(수)</option>
							</select>
					</div>
					<div class="select-type2">
						<select id="reserve_time11" name="reserve_time11" onchange="arriveTime('', 'reserve_time11', 'reserve_time12', 'M', '', '');"><option value="2023082200">시</option><option value="2023082218">18시</option><option value="2023082219">19시</option><option value="2023082220">20시</option><option value="2023082221">21시</option><option value="2023082222">22시</option></select>
					</div>
					<div class="select-type2">
						<select id="reserve_time12" name="reserve_time12" onchange="checkSelect();"><option value="">분</option></select>
					</div>
				</div>
			</div>
			<div class="warn-txt" style="display:none;">
				<!-- <p>
					현재 오늘예약 주문 가능한 시간을 초과하였습니다.<br />
					내일예약으로 진행해주시기 바랍니다.
				</p> -->
				<p>
					선택하신 시각의 주문 예약이 마감되었습니다.<br>
					예약 설정을 다시 해주세요.
				</p>
			</div>
			<div class="btn-wrap">
				<button type="button" class="btn-type1" disabled="" onclick="saveReserveSetting('208787832')">완료</button>
			</div>
		</div>
		<a href="javscript:;" class="btn-close"></a>
	</div>
</div>

<script>

</script></section>
