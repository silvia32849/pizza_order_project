<%@page import="java.text.DecimalFormat"%>
<%@page import="org.apache.ibatis.scripting.xmltags.ForEachSqlNode"%>
<%@page import="com.itwill.pizza.product.Product"%>
<%@page import="com.itwill.pizza.orders.OrderItem"%>
<%@page import="com.itwill.pizza.cart.Cart"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itwill.pizza.product.ProductService"%>
<%@page import="com.itwill.pizza.userinfo.UserService"%>
<%@page import="com.itwill.pizza.cart.CartService"%>
<%@page import="com.itwill.pizza.orders.Order"%>
<%@page import="com.itwill.pizza.orders.OrderService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="login_check.jspf" %>
<% 


String phone = sUser.getUserPhone();

String phone1 = phone.substring(0, 4);
String phone2 = phone.substring(4, 8);
String phone3 = phone.substring(9);

String buyType = request.getParameter("buyType");


CartService cartService = new CartService();
UserService userService = new UserService();
ProductService productService = new ProductService();

int tot_price = 0;
int oi_tot_count = 0;

Order order = new Order();

List<Cart> cartItemList = new ArrayList<Cart>();
cartItemList = cartService.getCartItemByUserId(sUserId);
for (Cart cart : cartItemList) {
	order.getOrderItemList().add(new OrderItem(0, cart.getCart_qty(), 0, cart.getProduct()));
	tot_price += cart.getCart_qty() * cart.getProduct().getProduct_price();
	oi_tot_count += cart.getCart_qty();
}




	
/*if (buyType.equals("cart")) {
	
	카트테이블에있는 모든제품을 주문하기
	
	List<Cart> cartItemList = new ArrayList<Cart>();
	cartItemList = cartService.getCartItemByUserId(sUserId);
	for (Cart cart : cartItemList) {
		order.getOrderItemList().add(new OrderItem(0, cart.getCart_qty(), 0, cart.getProduct()));
		tot_price += cart.getCart_qty() * cart.getProduct().getProduct_price();
		oi_tot_count += cart.getCart_qty();
	}
	
	
} else if (buyType.equals("cart_select")) {
	/*
	카트보기에서 선택된 제품을 주문하기
	
	cart_item_noStr_array = request.getParameterValues("cart_item_no");
	if(cart_item_noStr_array==null){
		response.sendRedirect("product_list.jsp");
		return;
	}

	for (String cart_item_noStr : cart_item_noStr_array) {
		Cart cart = cartService.getCartItemByCartNo(Integer.parseInt(cart_item_noStr));
		order.getOrderItemList().add(new OrderItem(0, cart.getCart_qty(), 0, cart.getProduct()));
		tot_price += cart.getCart_qty() * cart.getProduct().getProduct_price();
		oi_tot_count += cart.getCart_qty();
	}

} *//*else if (buyType.equals("direct")) {
	/*
	상품에서에서 직접제품을 주문하기
	*/
	/*
	String p_noStr = request.getParameter("product_no");
	String p_qtyStr = request.getParameter("product_qty");
	if (p_noStr == "" || p_qtyStr == ""){
		response.sendRedirect("product_list.jsp");
		return;
	}
	
	Product product = productService.productDetail(Integer.parseInt(p_noStr));
	order.getOrderItemList().add(new OrderItem(0, 1, 0, product));
	tot_price = order.getOrderItemList().get(0).getOi_qty() * order.getOrderItemList().get(0).getProduct().getProduct_price();
	oi_tot_count += order.getOrderItemList().get(0).getOi_qty();

}*/
String o_desc = order.getOrderItemList().get(0).getProduct().getProduct_name() + "외 " + (oi_tot_count - 1) + " 건";

order.setUser_id(sUserId);
order.setOrder_price(tot_price);
order.setOrder_name(o_desc);

/**********************세션에 주문데이타담기***************************/
session.setAttribute("order", order);

/*********************************************************************/
User loginUser=userService.findUser(sUserId);



%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/style.css" >
<link rel="stylesheet" type="text/css" href="css/orderinfo.css" >
<script type="text/javascript">
	/*
	 * 주문
	 */
	function order_create_form_submit() {
		document.order_create_form = 'POST';
		document.order_create_form.action = 'order_create_action.jsp';
		document.order_create_form.submit();
	}
</script>    
    
    <title>도미노 피자</title>
</head>
<body>
    <form name="order_create_form" method="post">
		<input type="hidden" name="buyType" value="<%=buyType%>">
	</form>
    <div class="warp">
            <!-- 헤더 시작-->    
            <div class="header fixed social">
                <!-- 헤더 top 시작-->
                <div class="header_top">
                    <div class="header_top_inner">
                        <h1>
                            <a href="user_loginsuccess_form.jsp" aria-label="홈" class="logo"></a>
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
                            <li class="header_top_item">
                                <a href="user_logout_action.jsp" class="header_top_link"> 로그아웃</a>
                            </li>
                            <li class="header_top_item">
                                <a href="user_info_form.jsp" class="header_top_link"> 마이페이지</a>
                            </li>
                            <li class="header_top_item">
                                <a href="cart_list_form.jsp" class="header_top_link"> 장바구니</a>
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
                                 <span class="tab_name">메뉴</span>
                              </a>
                           </li>
                          <li class="li_tab">
                               <a href="#" class="tab">
                                 <span class="tab_name">추천</span>
                               </a>
                           </li>
                           <li class="li_tab">
                                <a href="board_main.jsp" class="tab updated">
                                    <span class="tab_name">고객센터</span>
                                </a>
                            </li>
                         </ul>
                    </nav>
                </div>
            </div>


            <!-- 컨테이너 시작-->
            <div id="container">
                <iframe id="inicisFrame" name="inicisFrame" title="시스템용" src="" style="display:none;width:0px;height:0px;"></iframe>
                <iframe name="smilepayFrame" id="smilepayFrame" src="" width="0" height="0"></iframe>
                <form id="orderFrm" name="orderFrm" action="" target="" method="post">
                    <div id="hidden_info">
                        <input type="hidden" name="order_gubun" id="order_gubun" value="O">
                        <input type="hidden" name="gift_yn" id="gift_yn" value="N">
                        <input type="hidden" name="branch_code" id="branch_code" value="86665">
                        <input type="hidden" name="o_addr_sn" id="o_addr_sn" value="29599141">
                        <input type="hidden" name="w_addr_sn" id="w_addr_sn" value="">
                        <input type="hidden" name="reserve_gubun" id="reserve_gubun" value="">
                        <input type="hidden" name="reserve_gubun_chk" id="reserve_gubun_chk" value="">
                        <input type="hidden" name="pay_method" id="pay_method" value="4">
                        <input type="hidden" name="pay_method_chk" id="pay_method_chk" value="Y">
                        <input type="hidden" name="settlement_method" id="settlement_method" value="9">
                        <input type="hidden" name="final_payment_yn" id="final_payment_yn" value="">
                        <input type="hidden" name="" id="payment_save" value="Y">
                        <input type="hidden" name="" id="afterPay" value="0">
                        <input type="hidden" class="setPayMent" value="">
                        <input type="hidden" id="sktid_action" value="N">
                        <input type="hidden" id="sktid_data" value="">
                        <input type="hidden" id="survey" value="">
                        <input type="hidden" name="dominoPay_payMethod" id="dominoPay_payMethod" value="">
                        <input type="hidden" name="dominoPay_wpayToken" id="dominoPay_wpayToken" value="">
                        <input type="hidden" name="dominoPay_bankCardCode" id="dominoPay_bankCardCode" value="">
                        <input type="hidden" name="dominoPay_cardIsscoCode" id="dominoPay_cardIsscoCode" value="">
                        <input type="hidden" name="dominoPay_cardQuota" id="dominoPay_cardQuota" value="">
                        <input type="hidden" name="dominoPay_cardInterest" id="dominoPay_cardInterest" value="">
                        <input type="hidden" name="dominoPay_flagCardPoint" id="dominoPay_flagCardPoint" value="">
                        <input type="hidden" name="zero_waste_gubun" id="zero_waste_gubun" value="3">
                        <input type="hidden" name="zero_waste_gal_cnt" id="zero_waste_gal_cnt" value="2">
                        <input type="hidden" name="zero_waste_hot_cnt" id="zero_waste_hot_cnt" value="3">
                        <input type="hidden" name="zero_waste_pick_cnt" id="zero_waste_pick_cnt" value="2">
                        <input type="hidden" name="zero_waste_pick_m_cnt" id="zero_waste_pick_m_cnt" value="1">
                        <input type="hidden" name="zero_waste_fork_cnt" id="zero_waste_fork_cnt" value="0">
                        <input type="hidden" name="money_voucher" id="money_voucher" value="0">
                                    <!-- 현금영수증 별도발행 여부 -->
                        <input type="hidden" name="receipt_use" id="receipt_use" value="N">
                        <input type="hidden" name="applePayInfo" id="applePayInfo" value="">
                        <!-- 배달비 할인쿠폰 적용여부 -->
                        <input type="hidden" name="deliveryCouponApplyYn" id="deliveryCouponApplyYn" value="N">
                    </div>
                    
                    <section id="content">
                        <div class="sub-type order">
                            <div class="inner-box">
                                <!-- 1depth 메뉴명 & 네비게이션 -->
                                <div class="page-title-wrap">
                <h2 class="page-title">결제하기</h2>
                <div class="depth-area">
                    <ol>
                        <li><a href="user_loginsuccess_form.jsp">홈</a></li>
                        <li><a href="cart_list_form.jsp">장바구니</a></li>
                        <li><strong>결제하기</strong></li>
                        </ol>
                </div>
            </div>
            <!-- //1depth 메뉴명 & 네비게이션 -->
                            
                                <article class="pay">
                                    <div class="step-wrap"> 
                                        <div class="title-wrap __border">
                                            <h3 class="title-type"><strong>배달 정보</strong></h3>
                                            </div>
                                        
                                        <!-- 배달 -->
                                        <div class="deli-info">
                                                <div class="address">
                                                    <%=sUser.getUserAddress() %> </div>
                                                
                                                <div class="reserve-info new221031">
                                                    <div class="reserve-info-div">
                                                        <span class="ico-reserve">30분 소요</span>
                                                                    </div>
                                                </div>
                                                <ul class="notice-txt">
                                                    <li class="delivery-notice">* 배달주문 시, 배달비 2,000원이 부과됩니다. (49,000원 이상 무료 배달)</li>
                                                    <li>* 매장 상황에 따라 수령 시간이 상이할 수 있습니다.</li>
                                                    <li>* 영업 마감 시간이 가까울 경우 매장 상황에 따라 주문이 불가할 수 있습니다.</li>
                                                </ul>
                                            </div>
                                        <!-- // 배달 -->
                                        
                                        <!-- 포장 -->
                                        <!-- // 포장 -->
                                        
                                        <div class="deli-info form">
                                            <dl class="chk-wrap">
                                                <dt></dt>
                                                <dd>
                                                    <div class="form-group">
                                                        
                                                        
                                                        <!-- 선물하기 -->
                                                        <div class="form-item  gift_msg_info gift_area">
                                                            <div class="chk-box v3">
                                                                <input type="checkbox" id="present_case" name="order_type" value="N" onchange="recipientChange()">
                                                            </div>
                                                        </div>
                                                        <!-- //선물하기 -->
                                                        </div>
                                                </dd>
                                            </dl>
                                            
                                            <dl>
                                                <dl>
                                                    <dt>이름</dt>
                                                    <dd>
                                                        <div class="form-item">
                                                            <input type="text" id="customerName" name="customerName" value="<%=sUser.getUserName() %>" maxlength="8">
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </dl>
                                            
                                            <dl>
                                                <dt>연락처</dt>
                                                <dd>
                                                    <div class="form">
                                                        <div class="form-group2 select-group">
                                                            <div class="form-item">
                                                                <div class="select-type2">
                                                                    <select id="tel1" name="tel1" title="휴대전화번호" value="<%=phone1%>">
                                                                        <option value="010">010</option>
                                                                        <option value="011">011</option>
                                                                        <option value="016">016</option>
                                                                        <option value="017">017</option>
                                                                        <option value="018">018</option>
                                                                        <option value="019">019</option>
                                                                    </select>
                                                                </div>
                                                                <input type="text" id="tel2" name="tel2" maxlength="4" class="i_text" title="휴대전화번호" value="<%=phone2%>">
                                                                <input type="text" id="tel3" name="tel3" maxlength="4" class="i_text" title="휴대전화번호" value="<%=phone3%>">
                                                            </div>
                                                        </div>
                                                        
                                                        <!-- 선물하기 -->
                                                        <div class="form-item form-gift gift_msg_box gift_area" style="display:none;">
                                                            <input type="text" name="sms_msg" id="sms_msg" onkeyup="checkByte(this, 50)" value="" placeholder="선물메시지입력창">
                                                            <div class="guide-box3">선물메세지는 SMS로 전송됩니다.</div>
                                                        </div>
                                                        <!-- //선물하기 -->
                                                        </div>
                                                </dd>
                                            </dl>
                                            
                                            <!-- <div class="form-item tel">
                                                <input type="text"  id="customerName" name="customerName" value="" maxlength="30">
                                                <input type="text" id="tel1" name="tel1" value="" />
                                                <input type="hidden" id="tel2" name="tel2" value="" />
                                                <input type="hidden" id="tel3" name="tel3" value="" />
                                            </div> -->
                                        </div>
                                        
                                        <!-- S: 221005 제로웨이스트 -->
                                        

                                        
                                           
                                        <!-- E: 제로웨이스트 -->
                                    </div><!-- //step-wrap -->
                                    
                                    <!-- 주문내역 -->
                                    <div class="step-wrap">
                                        <div class="title-wrap">
                                            <div class="title-type"><strong>주문내역</strong></div>
                                        </div>
                                        <div class="order-step">
                                            <ul>
                                            	
                                                                              
                                            
                                                <li>
                                                    <div class="menu">
                                                        <!-- 피자 명  -->
                                                        <strong class="goods_name"><%=order.getOrder_name()%><!-- 대만 콘 치즈 감자&nbsp; 슈퍼시드 화이버 함유 도우L x 1 외 2건--></strong>
                                                        <!-- //피자 명  -->
                                                    </div>
                                                    
                                                    <div class="topping">
                                                    	<% 
                                                    		for (OrderItem orderItem : order.getOrderItemList()) {
                                                    	%>
                                                        <span style="display:none;" id="goods_name_brief"><%=orderItem.getProduct().getProduct_name()%>&nbsp; 슈퍼시드 화이버 함유 도우L x <%=orderItem.getOi_qty() %></span>
                                                        
                                                        <div class="item">
                                                            <span><%=orderItem.getProduct().getProduct_name() %> (슈퍼시드 화이버 함유 도우)&nbsp; L x <%=orderItem.getOi_qty() %></span>
                                                            /&nbsp;<span><%= new DecimalFormat("#,##0").format(orderItem.getOi_qty() * orderItem.getProduct().getProduct_price()) %></span>원
                                                            
                                                            
                                                        </div>
                                                        <!--  
                                                        <span style="display:none;" id="goods_name_brief">아보카도 새우&nbsp; 슈퍼시드 화이버 함유 도우L x 1</span>
                                                        
                                                        <div class="item">
                                                            <span>아보카도 새우 (슈퍼시드 화이버 함유 도우)&nbsp; L x 1</span>
                                                            /&nbsp;<span>30,900</span>원
                                                            
                                                           
                                                        </div>
                                                        <span style="display:none;" id="goods_name_brief">치즈 크레이프 샌드&nbsp; 샌드L x 1</span>
                                                        
                                                        <div class="item">
                                                            <span>치즈 크레이프 샌드 (샌드)&nbsp; L x 1</span>
                                                            /&nbsp;<span>34,900</span>원
                                                            
                                                           
                                                        </div>
                                                        -->
                                                         <%
                                            				}
                                               			 %>
                                                        </div>
                                                </li>
                                               
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- //주문내역 -->
                                    
              
                                    <!-- //할인 적용 -->
                                    
                                    <!-- 배달비 할인 적용 -->
                                    
                
                   
                                    <!-- //배달비 할인 적용 -->
                                    
                                    <!-- 금액상품권 -->
                                    <!-- 금액상품권 -->
                                    
                                    <!-- <div class="order_section order_sale" id="dc_info">
                                        <div class="tit_order">
                                            <strong>할인</strong>
                                        </div>
                                    </div> -->
                        
                                    <!-- 결제방법 -->
                                      <div class="step-wrap" id="final_pay_info">
                    <div class="step-wrap">
                        <div class="title-wrap">
                            <h3 class="title-type"><strong>최종결제금액</strong></h3>
                        </div>
                        
                        <div class="total-step">
                            <ul>
                                    <li>
                                                <p class="tit">총 상품 금액</p>
                                                <p class="price"><em><span id="basketTotalPrice"><%=new DecimalFormat("#,###").format(order.getOrder_price())%></span></em>원</p>
                                            </li>
                                        <li class="discount">
                                    <p class="tit">총 할인 금액</p>
                                    <p class="price"><em><span id="basketDcPrice">0</span></em>원</p>
                                </li>
                                <li class="delivery">
                                         <span class="tooltip-wrap">
                                         <span class="tooltip">결제금액 49,000원 이상 무료</span>
                                                <span class="triangle"></span>
                                            </span>
                                         <p class="tit">배달비</p>
                                         <p class="price">
                                             <em>
                                                 <span id="deliveryFee">0</span>
                                                 </em>원
                                         </p>
                                     </li>
                                <li class="total">
                                    <p class="tit">총 결제 금액</p>
                                    <p class="price"><em><span id="basketAccountPrice"><%=new DecimalFormat("#,###").format(order.getOrder_price())%></span></em>원</p>
                                    <input type="hidden" value="86700" id="tmpPrice">
                                    <input type="hidden" name="a_basketNo" id="a_basketNo" value="208774624">
                                </li>
                            </ul>
                            <!-- <div class="chk-box v3">
                                <input type="checkbox" id="agree">
                                <label class="checkbox" for="agree"></label>
                                <label for="agree"></label>
                                <a href="#">결제조건 확인 및 개인정보 제공</a>에 동의합니다.
                            </div> -->
                        </div>
                    </div>
                </div>
                                    <!-- // 결제 금액, 퀵 오더로 설정, 결제 및 주문완료 -->
                                    
                                    <!-- 주문하기 버튼 -->
                                   
                                    <div class="btn-wrap pay-btn">
                                        <a href="javascript:order_create_form_submit();" id="doOrder"  class="btn-type">결제하기</a>
                                    </div>
                                    
                                    <!-- //주문하기 버튼 -->
                                
                                </article>
                            </div><!-- //inner-box -->
                        </div><!-- //sub-type order -->
                        <input type="hidden" name="viewDay" id="viewDay" value="">
            <input type="hidden" name="viewTime" id="viewTime" value="">
            <input type="hidden" name="viewReserveGubun" id="viewReserveGubun" value="">
            
           
            
           
            
            <script>
            //주문 예약 시간 조회
            function arriveTime(reserve_cho, orgId, targetId, timeType, viewDay, viewTime) {
              
                
                
                
                if (reserve_cho != null) {
                    var branch_code="86665";
                    var order_gubun="O";
                    var address_gubun= cookieManager.getCookie('ADDRESS_GUBUN');
                    var select_time = "2023082219";
                    
                    if (orgId != null) {
                        select_time=$("#"+orgId).val();
                    }
                    
                    if (timeType == "ALL" && viewDay == "") {
                        select_time = hourFormat;
                        validDay = hourFormat;
                        validTime = minFormat;
                    } else if (timeType == "ALL" && viewDay != "") {
                        select_time = viewDay;
                        validDay = viewDay;
                        validTime = viewTime;
                    }
                    
                    if (select_time == null || select_time == "") {
                        alert("입력 정보를 다시 확인해 주세요.");
                        return;
                    }
                    
                    var param = { 
                        order_gubun : order_gubun,
                        branch_code : branch_code,
                        reserve_cho : reserve_cho,
                        select_time : select_time,
                        address_gubun : address_gubun
                    };
                    
                    $.ajax({
                        url : '/order/getOnlineOrderReserveTime',
                        type : 'POST',
                        dataType : 'json',
                        data : param,
                        success : function(data) {
                            
                            if (timeType == "ALL"){
                                $("#reserve_time11").html("");
                                $("#reserve_time12").html("");
                                
                                if (data.resultData.h_list.length <= 0) {
                                    $("#reserve_time11").append('<option value="">시</option>');
                                    $("#reserve_time12").append('<option value="">분</option>');
                                    //$(".warn-txt").css("display","block");
                                }
                                
                                $("#reserve_time11").append('<option value="'+ data.resultData.h_list[0].value.substring(0,8) +'00"' + '>시</option>');
                                if(data.resultData.h_list.length > 0){
                                    for(var i=0 ; i<data.resultData.h_list.length ; i++){
                                        $("#reserve_time11").append('<option value="'+data.resultData.h_list[i].value+'"' + ( data.resultData.h_list[i].value == validDay ? 'selected="selected"' : '' ) + '>'+data.resultData.h_list[i].text+'</option>');
                                    }
                                }
                                
                                $("#reserve_time12").append('<option value="">분</option>');
                                if(data.resultData.m_list.length > 0){
                                    for(var i=0 ; i<data.resultData.m_list.length ; i++){
                                        $("#reserve_time12").append('<option ' + data.resultData.m_list[i].disabled + ' value="'+data.resultData.m_list[i].value+'"' + ( data.resultData.m_list[i].value == validTime ? 'selected="selected"' : '' ) + '>'+data.resultData.m_list[i].text+'</option>');
                                    }
                                }
                            } else {
                                $("#"+targetId).html("");
                                
                                if(timeType=='H'){
                                    $("#reserve_time12").html("");
                                    $("#reserve_time12").append('<option value="">분</option>');
                                    if(data.resultData.h_list.length > 0){
                                        $("#"+targetId).append('<option value="'+ data.resultData.h_list[0].value.substring(0,8) +'00"' + '>시</option>');
                                        for(var i=0 ; i<data.resultData.h_list.length ; i++){
                                            $("#"+targetId).append('<option value="'+data.resultData.h_list[i].value+'"' + ( data.resultData.h_list[i].value == validDay ? 'selected="selected"' : '' ) + '>'+data.resultData.h_list[i].text+'</option>');
                                        }
                                        
                                        //$(".warn-txt").css("display","none");
                                    } else {
                                        $("#"+targetId).append('<option value="">시</option>');
                                        //$(".warn-txt").css("display","block");
                                    }
                                } else if(timeType=='M'){
                                    $("#"+targetId).append('<option value="">분</option>');
                                    if(data.resultData.m_list.length > 0){
                                        for(var i=0 ; i<data.resultData.m_list.length ; i++){
                                            $("#"+targetId).append('<option ' + data.resultData.m_list[i].disabled + ' value="'+data.resultData.m_list[i].value+'"' + ( data.resultData.m_list[i].value == validTime ? 'selected="selected"' : '' ) + '>'+data.resultData.m_list[i].text+'</option>');
                                        }
                                    } else {
                                        alert('현재 오늘예약 주문 가능한 시간을 초과하였습니다. 내일예약으로 진행해주시기 바랍니다.');
                                    }
                                }
                            }
                        },beforeSend: function() {
                            $(".btn-type1").prop("disabled", true);
                        },complete: function() {
                            ajaxRequest = null;
                        }
                    });
                }
            };
            
            
            
            
            
            </script></section>
                </form>
          


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
</body>
</html>