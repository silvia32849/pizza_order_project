<%@page import="com.itwill.pizza.orders.Order"%>
<%@page import="com.itwill.pizza.orders.OrderService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="login_check.jspf" %>
<% 
OrderService orderService=new OrderService();
String orderStr=request.getParameter("order_no");
//Order order=orderService.findOrderByOrderNo(Integer.parseInt(orderStr));
sUserId="user3";
sUser=new User("user1",null,"테스트이름","테스트이메일","테스트주소","010-1234-5678","테스트성별",null);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/style.css" >
    <link rel="stylesheet" type="text/css" href="css/orderinfo.css" >
    <title>도미노 피자</title>
</head>
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
                            <li class="header_top_item">
                                <a href="login.html" class="header_top_link"> 로그인</a>
                            </li>
                            <li class="header_top_item">
                                <a href="#" class="header_top_link"> 마이페이지</a>
                            </li>
                            <li class="header_top_item">
                                <a href="#" class="header_top_link"> 관심상품</a>
                            </li>
                        </ul>
                    </div>
                </div>
                

                <!-- 헤더 마지막 시작-->
                <div class="portal_tartget vue-portal-target">
                    <nav class="tabs">
                        <ul class="ul_tab home_tabs inline">
                           <li class="li_tab">
                                <a href="#" class="tab">
                                 <span class="tab_name">메뉴</span>
                              </a>
                           </li>
                          <li class="li_tab">
                               <a href="#" class="tab">
                                 <span class="tab_name">추천</span>
                               </a>
                           </li>
                           <li class="li_tab">
                                <a href="#" class="tab updated">
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
                        <li><a href="/main">홈</a></li>
                        <li><a href="/basket/detail">장바구니</a></li>
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
                                                    서울특별시 송파구 </div>
                                                
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
                                                        <div class="form-item">
                                                            <div class="chk-box v3">
                                                                <input type="checkbox" name="order_type" id="recipient" onchange="recipientChange()">
                                                                <label class="checkbox" for="recipient"></label>
                                                                <label for="recipient">주문자와 동일</label>
                                                            </div>
                                                        </div>
                                                        
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
                                                                    <select id="tel1" name="tel1" title="휴대전화번호">
                                                                        <option value="010">010</option>
                                                                        <option value="011">011</option>
                                                                        <option value="016">016</option>
                                                                        <option value="017">017</option>
                                                                        <option value="018">018</option>
                                                                        <option value="019">019</option>
                                                                    </select>
                                                                </div>
                                                                <input type="text" id="tel2" name="tel2" maxlength="4" class="i_text" title="휴대전화번호">
                                                                <input type="text" id="tel3" name="tel3" maxlength="4" class="i_text" title="휴대전화번호">
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
                                                        <strong class="goods_name">대만 콘 치즈 감자&nbsp; 슈퍼시드 화이버 함유 도우L x 1 외 2건</strong>
                                                        <!-- //피자 명  -->
                                                    </div>
                                                    <div class="topping">
                                                        <span style="display:none;" id="goods_name_brief">대만 콘 치즈 감자&nbsp; 슈퍼시드 화이버 함유 도우L x 1</span>
                                                        
                                                        <div class="item">
                                                            <span>대만 콘 치즈 감자 (슈퍼시드 화이버 함유 도우)&nbsp; L x 1</span>
                                                            /&nbsp;<span>20,900</span>원
                                                            
                                                            <!-- 토핑 -->
                                                            <!-- //토핑 -->
                                                        </div>
                                                        <span style="display:none;" id="goods_name_brief">아보카도 새우&nbsp; 슈퍼시드 화이버 함유 도우L x 1</span>
                                                        
                                                        <div class="item">
                                                            <span>아보카도 새우 (슈퍼시드 화이버 함유 도우)&nbsp; L x 1</span>
                                                            /&nbsp;<span>30,900</span>원
                                                            
                                                            <!-- 토핑 -->
                                                            <!-- //토핑 -->
                                                        </div>
                                                        <span style="display:none;" id="goods_name_brief">치즈 크레이프 샌드&nbsp; 샌드L x 1</span>
                                                        
                                                        <div class="item">
                                                            <span>치즈 크레이프 샌드 (샌드)&nbsp; L x 1</span>
                                                            /&nbsp;<span>34,900</span>원
                                                            
                                                            <!-- 토핑 -->
                                                            <!-- //토핑 -->
                                                        </div>
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
                                    <div class="step-wrap pay-step" id="pay_info">
                    <input type="hidden" id="userInfo" value="">
                    <input type="hidden" id="flagPin" value="">
                        
                                    <div class="step-wrap" id="final_pay_info">
                    <div class="step-wrap">
                        <div class="title-wrap">
                            <h3 class="title-type"><strong>최종결제금액</strong></h3>
                        </div>
                        
                        <div class="total-step">
                            <ul>                                 
                                <li class="total">
                                    <p class="tit">총 결제 금액</p>
                                    <p class="price"><em><span id="basketAccountPrice">86,700</span></em>원</p>
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
                                        <a href="javascript:;" id="doOrder" onclick="reserveValid()" class="btn-type">결제하기</a>
                                    </div>
                                    <!-- //주문하기 버튼 -->
                                
                                </article>
                            </div><!-- //inner-box -->
                        </div><!-- //sub-type order -->
                        <input type="hidden" name="viewDay" id="viewDay" value="">
            <input type="hidden" name="viewTime" id="viewTime" value="">
            <input type="hidden" name="viewReserveGubun" id="viewReserveGubun" value="">
            
            <script>
            $(document).ready(function() {
                child_reserve_reset();
            });
            </script>
            
           
            
            <script>
            //주문 예약 시간 조회
            function arriveTime(reserve_cho, orgId, targetId, timeType, viewDay, viewTime) {
                
                var reserveDay = "";
                var reserveTime = "";
                
                var validDay = "";
                var validTime = "";
                
                var dayFormat = reserveDay;
                var hourFormat = reserveDay + reserveTime.substring(0, 2);
                var minFormat = reserveTime.substring(2, 6);
                
                if ($("#reserve_time11").val() != $("#reserve_time11 option").eq(0).val() && $("#reserve_time12").val() != $("#reserve_time12 option").eq(0).val()) {
                    $(".btn-type1").prop("disabled", false);
                } else {
                    $(".btn-type1").prop("disabled", true);
                }
                
                if (timeType == "H" || timeType == "M") {
                    $("#reserve_time12 option").eq(0).prop("selected", true);
                    if ("2023082219".substring(0, 8) == $("#reserve_day").val().substring(0, 8)) {
                        reserve_cho = "TD";
                    } else {
                        reserve_cho = "TM";
                    }
                } else if (timeType == "ALL") {
                    if ("2023082219".substring(0, 8) == $("#reserve_day").val().substring(0, 8)) {
                        reserve_cho = "TD";
                    } else {
                        reserve_cho = "TM";
                    }
                }
                
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
            
            function saveReserveSetting(basket_no) {
                
                var reserve_gubun = "TD";
                if ($("#reserve_day option").index($("#reserve_day option:selected")) == 0) {
                    reserve_gubun = "TD";
                } else {
                    reserve_gubun = "TM";
                }
                
                var param = {
                        basket_no : basket_no,
                        reserve_gubun : reserve_gubun,
                        reserve_date : $("#reserve_time11").val().substring(0, 8),
                        reserve_time : $("#reserve_time11").val().substring(8, 10) + $("#reserve_time12").val()
                    };
                
                $.ajax({
                    type: "POST",
                    url: "/basket/reserveState",
                    dataType : "json",
                    data : param,
                    success:function(data) {
                        if (data.resultData.status != 'success') {
                            alert(data.resultData.msg);
                        } else {
                            $("#viewDay").val($("#reserve_time11").val().substring(0, 10));
                            $("#viewTime").val($("#reserve_time12").val());
                            $("#viewReserveGubun").val(reserve_gubun);
                            
                            UI.layerPopUp({selId:'#pop-reserve-setting',st:'close'});
                            
                            $('#reserve_online').fadeIn(10, function() {
                                $(this).find('.pop_content p').html("예약 설정이 완료되었습니다.");
                                window.setTimeout(function(){$('#reserve_online').fadeOut(300, function(){
                                    $(this).find('.pop_content p').html("");	
                                });}, 1000);
                            });
                            
                            var referrer = document.location.href;
                            if ((referrer.split('/')[3]+"/"+referrer.split('/')[4]).indexOf('order/info')>=0) {
                                location.reload();
                            } else {
                                $('.reserve-info').load(location.href+' .reserve-info-div');
                                $('.set-reserve').text("예약 변경");
                                $('.set-reserve').removeClass("ico-time2");
                                $('.set-reserve').addClass("ico-time3");
                            }
                        }
                    },
                    error: function (error){
                        alert("처리중 오류가 발생하였습니다.");
                    }
                });
            }
            
            
            function child_reserve(reserve_cho, viewDay, viewTime) {
                if ($("#viewReserveGubun").val() != "" || ("" != "" && "" != "30" 
                        && "" != "15" && "" != "TW")) {
                    arriveTime(reserve_cho, null, "reserve_time11", "ALL", viewDay, viewTime);
                } else {
                    arriveTime(reserve_cho, null, "reserve_time11", "H", viewDay, viewTime);
                }
            }
            
            function checkSelect() {
                if ($("#reserve_time11").val() != $("#reserve_time11 option").eq(0).val() && $("#reserve_time12").val() != $("#reserve_time12 option").eq(0).val()) {
                    $(".btn-type1").prop("disabled", false);
                } else {
                    $(".btn-type1").prop("disabled", true);
                }
            }
            
            function child_reserve_reset() {
                if ("" != "" || ("" != "" && "" != "30" 
                    && "" != "15" && "" != "TW" )) {
                    var reserve_cho = "";
                    if ("2023082219".substring(0, 8) == "" || "2023082219".substring(0, 8) == "") {
                        reserve_cho = "TD";
                    } else {
                        reserve_cho = "TM";
                    }
                    
                    arriveTime(reserve_cho, null, "reserve_time11", "ALL", "", "");
                } else {
                    arriveTime("TD", null, "reserve_time11", "H", "", "");
                }
            }
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