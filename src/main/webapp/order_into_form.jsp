<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                                                            <input type="text" id="customerName" name="customerName" value="" maxlength="8">
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
                                            
                                            <dl>
                                                <dt>요청사항</dt>
                                                <dd>
                                                    <div class="form">
                                                        <div class="form-item divide-area">
                                                            <div class="select-type2">
                                                                <select name="more_req_box" onchange="directMessage();">
                                                                    <option value="">요청사항을 선택하세요.</option>
                                                                    <option value="문 앞에 놓아 주세요.">문 앞에 놓아 주세요.</option><option value="벨은 누르지 말아주세요.">벨은 누르지 말아주세요.</option>
                                                                    <option value="direct">직접 입력</option>
                                                                </select>
                                                            </div>
                                                            <div class="chk-box v3">
                                                                <input type="checkbox" name="user_etc" id="user_etc" value="Y">
                                                                <label class="checkbox" for="user_etc"></label>
                                                                <label for="user_etc">요청사항 다음에도 사용</label>
                                                            </div>
                                                        </div>
                                                        <!-- 직접 입력 -->
                                                        <div class="form-item form-text">
                                                            <input style="display:none;" name="more_req" id="more_req" type="text" onkeyup="checkByte(this, 50)" value="" placeholder="주문시 요청사항을 입력하세요. (최대 25자까지 입력가능)">
                                                        </div>
                                                    </div>
                                                </dd>
                                            </dl>
                                            
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
                                    
                                    <!-- 할인 적용 -->
                                    <div class="step-wrap" id="dc_info">
                    <input type="hidden" id="prmt_idx" value="0">
                    <div class="title-wrap">
                        <h3 class="title-type"><strong>할인 적용</strong></h3>
                    </div>
                    <div class="guide-box3">할인을 선택해주세요.</div>
                                        <div class="discount-step">                  
                        <ul>
                            <li id="myCoupon"><a href="javascript:changePrmt('myCoupon');" class="btn-type-brd5">도미노 온라인 쿠폰 선택</a></li>
                            <li id="dcPrmt"><a href="javascript:changePrmt('dcPrmt');" class="btn-type-brd5">온라인 프로모션 선택</a></li>
                                        <li id="mobile"><a href="javascript:privacyPop();" class="btn-type-brd5">통신사 및 카드사 제휴 프로모션 선택</a></li>
                                <li id="voucher"><a href="javascript:changePrmt('voucher');" class="btn-type-brd5 ">상품권 및 쿠폰번호 입력</a></li>
                                </ul>
                    </div> <!-- //discount-step -->
                </div>
                                    <!-- //할인 적용 -->
                                    
                                    <!-- 배달비 할인 적용 -->
                                    <div class="step-wrap receipt-wrap token-wrap" id="deliveryDiscount">
                <script>
                $("#deliveryCouponApplyYn").val("N");
                
                //배달비 쿠폰 적용 및 해제
                function deliveryCouponApply(){
                    if("0" == "33" //지류상품권
                    ||"0" == "1259" //도미노콘
                    ||"0" == "1035" //금액 할인권 할인
                    ||"0" == "1842" //e쿠폰
                    ||"0" == "1290" //쇼핑몰쿠폰 주문
                    ||"0" == "109" //쇼핑몰 쿠폰
                    ){
                        alert("도미노콘, 지류상품권, e-쿠폰, M12 금액할인권은 온라인 회원 배달비 무료 쿠폰과 중복 적용 불가합니다.");
                        return;
                    }
                    var resetMoneyVoucherYn = "N";
                    if("0" > 0 ){
                        if(confirm("배달비 할인 적용을 변경하면 금액상품권이 초기화됩니다. 초기화하시겠습니까?")){
                            resetMoneyVoucherYn = "Y";
                        }else{
                            return;
                        }
                    }else{
                        if($("#deliveryCouponApplyYn").val()=="Y"){
                            if(!confirm("온라인 회원 배달비 무료 쿠폰 적용을 취소하시겠습니까?")){
                                return;
                            }
                        }
                    }
                    $.ajax({
                        url : '/basket/deliveryCoupon',
                        type : 'POST',
                        data : { 
                                'basket_no' : '208774624',
                                'deliveryCouponApplyYn' : $("#deliveryCouponApplyYn").val()
                        },
                        success : function(data) {
                            console.log("deliveryCoupon");
                            console.log(data);
                            var resultMsg = data.resultData.resultMsg;
                            if(resultMsg != null){
                                if(resultMsg == "login error"){
                                    alert("로그인 정보가 유효하지 않습니다.\n 재 로그인 후 이용 부탁드립니다. ");
                                    location.href = "/global/logout";
                                    return;
                                }else{
                                    alert(resultMsg);
                                    return;
                                }
                            }else if(resetMoneyVoucherYn == "Y"){
                                resetMoneyVoucher('deliveryCoupon');
                            }else{
                                //배달비 쿠폰 적용
                                if($("#deliveryCouponApplyYn").val() == "N"){
                                    alert("온라인 회원 배달비 무료 쿠폰이 적용 되었습니다.");
                                    $("#deliveryCouponApplyYn").val("Y");
                                    $("#deliveryCouponText").text("온라인 회원 배달비 무료 쿠폰");
                                    $("#deliveryCoupon").addClass("active");
                                    
                                    $("span.tooltip").css("background-color","#ef0000");
                                    $("span.triangle").css("border-bottom","10px solid red");
                                    $("span.tooltip").text("배달비 무료 쿠폰 적용");
                                    
                                    //총 결제금액표시 변경
                                    var accountPrice = data.resultData.basketVO.account_price.toString();
                                    $("#basketAccountPrice").text(accountPrice.cvtNumber());
                                    
                                    //배달비 표시 변경
                                    $("#deliveryFee").text("0");
                                    $("#deliveryFee").css("color","red");
                                    
                                    //총 할인 금액 표시 변경
                                    var dcPrice = data.resultData.basketVO.dc_price.toString();
                                    $("#basketDcPrice").text(dcPrice.cvtNumber());
                                    
                                    
                                }else{
                                    //배달비 쿠폰 적용 해제
                                    $("#deliveryCouponApplyYn").val("N");
                                    $("#deliveryCouponText").text("온라인 회원 배달비 무료 쿠폰 선택");
                                    $("#deliveryCoupon").removeClass("active");
                                    
                                    $("span.tooltip").css("background-color","black");
                                    $("span.triangle").css("border-bottom","10px solid black");
                                    $("span.tooltip").text("결제금액 49,000원 이상 무료");
                                    
                                    //총 결제금액표시 변경
                                    var accountPrice = data.resultData.basketVO.account_price.toString();
                                    $("#basketAccountPrice").text(accountPrice.cvtNumber());
                                    
                                    //배달비 표시 변경
                                    $("#deliveryFee").text("2,000");
                                    $("#deliveryFee").css("color","black");
                                    
                                    //총 할인 금액 표시 변경
                                    var dcPrice = data.resultData.basketVO.dc_price.toString();
                                    $("#basketDcPrice").text(dcPrice.cvtNumber());
            
                                }
                                
                            }
                        }
                    })
                }
                </script>
                    <div class="title-wrap" style="margin-bottom:20px;">
                        <h3 class="title-type"><strong>배달비 할인 적용</strong></h3>
                        <div class="notice-text side delivery-coupon">온라인 회원 배달비 무료 리워드 쿠폰 이벤트 유의사항</div>
                        <div class="layer-notice delivery-coupon" style="display: none;">
                            <dl>
                                <dt>온라인 회원 배달비 무료 리워드 쿠폰 지급 이벤트 유의사항</dt>
                                <dd>
                                    <ul>
                                        <li>- 온라인 (홈페이지, 모바일웹, 어플) 주문 시 이용 가능</li>
                                        <li>- 해당 프로모션은 사정에 따라 변경 및 취소될 수 있음</li>
                                        <li>- 8/1~31 Premium, VIP, Royal 등급 회원, 피자 주문 시 배달비 무료 리워드 쿠폰 지급</li>
                                        <li>- 주문 당일이 아닌 익일 지급</li>
                                        <li>- 배달비 무료 리워드 쿠폰 유효기간 : 발급일로부터 30일</li>
                                        <li style="color:red">- 배달비 무료 리워드 쿠폰 사용 시에는 쿠폰 미지급</li>
                                        <li>- 배달 최소 주문금액 17,000원 충족 시 쿠폰 사용 가능</li>
                                        <li>- 프리미엄 피자(L) 1판 이상 주문 시 쿠폰 사용 가능</li>
                                        <li>- 일부 특수매장 해당 없음 (알펜시아점, 대명비발디파크점, 잠실야구장점, 롯데월드점)</li>
                                        <li>- 타 프로모션 및 쿠폰과 중복 적용 가능 (단, 도미노콘, 지류상품권, e-쿠폰은 중복 적용 불가)</li>
                                        <br>
                                        <li><strong>※ 해당 프로모션은 당사 사정에 따라 사전 고지없이 변경 및 조기 종료될 수 있습니다.</strong></li>
                                    </ul>
                                </dd>
                            </dl>
                            <a href="javascript:;" class="btn-close">닫기</a>
                        </div>
                    </div>
                    <div class="discount-step">
                        <ul>
                            <li>
                                        <span class="btn-type-brd5" style="border:none;padding-left:0px">적용 가능한 온라인 회원 배달비 무료 리워드 쿠폰이 없습니다.</span>
                                    </li>
                                </ul>
                    </div>       
                </div>
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
                        <script>
                        $(document).ready(function(){
                            
                            /* $("#dc_info .discount-step ul li").on("click", function(){
                                if($('#reserve_gubun').val() == "TD" || $('#reserve_gubun').val() == "TM"){
                                    alert("할인 설정을 변경하면 예약 시간 설정이 초기화됩니다. 할인 선택 후 예약 시간을 다시 선택해 주세요.");
                                }
                            }); */
                            
                            if ("0" == "1842") {
                                if ("9" == "1" || "9" == "2") {
                                    mid = "ok";
                                    $("#pay_method_4").addClass("selected").find("input:radio").prop("checked", true);
                                    dataValue = $("#pay_method_4").data('value').split('|');
                                    $("#settlement_method").val(dataValue[0]);
                                    $("#pay_method").val(dataValue[1]);
                                    $("#pay_method_chk").val(dataValue[2]);
                                    $("#payment_save").val("Y");
                                }
                            }
                            
                            if ("0" == "33") {
                                $('.dominopay-div').hide();
                                $('.btn-otherMethod').addClass('selected');
                                $('#sel-otherMethod').prop('checked', true);
                                $("#pay_method_1").addClass("selected").find("input:radio").prop("checked", true);
                            } else {
                                $('.dominopay-div').show();
                            }
                            
                            if("" != "Y"){
                                var item = "input[name=itemCHK]";
                                $("input:checkbox[name=itemCHK]").prop("checked", false);
                            }
                            
                            // checkbox
                            $("input[type='checkbox']").change(function () {
                                if ($(this).is(':checked')) {
                                    $(this).parent().addClass('selected');
                                    $(this).attr('checked', true);
                                } else {
                                    $(this).parent().removeClass('selected');
                                    $(this).attr('checked', false);
                                }
                            });
                            
                            // S: 200818 도미노페이 고도화
            
                            // 결제수단
                            // $(".hide-box").hide();
                            // $("input:radio[name=pay]").click(function () {
                            //     if ($("input[name=pay]:checked").val() == "card") {
                            //         $("#pay-card").show();
                            //         $("#pay-cash").hide();
                            //     } else if ($("input[name=pay]:checked").val() == "cash") {
                            //         {
                            //             $("#pay-card").hide();
                            //             $("#pay-cash").show();
                            //         }
                            //     } else {
                            //         $("#pay-card").hide();
                            //         $("#pay-cash").hide();
                            //     }
                            // });
            
                            
                            
                            $('.dominoPay-slider').slick({
                                slide: '.dominoPay-item',
                                infinite: false,
                                draggable: true,
                                slidesToShow: 1,
                                slidesToScroll: 1,
                                centerMode: true,
                                centerPadding: '20px',
                                variableWidth: true,
                                arrows: true,
                                cssEase: 'ease',
                                dots: false,
                                
                            });
                            
                            $('.dominoPay-slider .dominoPay-item').on('click', function(){
                                actIndex = $(this).attr('data-slick-index');
                                var slider = $( '.dominoPay-slider' );
                                slider[0].slick.slickGoTo(actIndex);        
                            });
                            
                            $('.dominoPay-slider').on('afterChange', function(){
                                $(".dominoPay-item").removeClass('__selected');
                                $('.slick-current').addClass('__selected');        
                            });
                            
                            $('.slick-current').addClass('__selected');
                            $('.dominoPay-slider').on('init reInit afterChange', function (event, slick, currentSlide, nextSlide) {
                                $('.dominoPay-item').removeClass('__selected');
                                $('.slick-current').addClass('__selected');
                                
                                
                                if("86700" < 50000) {
                                    $('.dc_month').attr('disabled', 'true');
                                }
                                // 현금영수증 영역 초기화
                                initCashReceipt($("#prmt_idx").val());
                            });
                            
                            //도미노페이 회원이지만 최종결제방법값이 null인 경우 예외처리
                             if("" == "Y" && "9" == ""){
                                $("#settlement_method").val("D");
                                $('#pay_method').val("2");
                            } 
            
                            $('input[name="select-payMethod"]').change(function () {
                                var selectMethod = $(this).attr('id');
            
                                if (selectMethod === 'sel-dominopay') {
                                    //$('.dominopay-wrap').addClass('__active');
                                    $('.btn-dominopay').addClass('selected');
                                    //$('.otherMethod-wrap').removeClass('__active');
                                    $('.otherMethod-wrap').addClass('__active');
                                    $('.btn-changeMethod').removeClass('__active');
                                    $('.btn-otherMethod').removeClass('selected');
                                    $('.btn-changeMethod').attr('style', 'display:block;');
                                } else if (selectMethod === 'sel-otherMethod') {
                                    //$('.dominopay-wrap').removeClass('__active');
                                    //$('.otherMethod-wrap').addClass('__active');
                                    $('.btn-changeMethod').addClass('__active');
                                    $('.btn-otherMethod').addClass('selected');
                                    $('.btn-dominopay').removeClass('selected');
                                    
                                    // 다른 결제 선택시 직전 결제 값 세팅 Start
                                    if("9" != "" ){ //최종결제 수단 저장 방식이면
                                        //$("#pay_info").html($(data).find("#pay_info_final_payment").html());
                                        
                                        //var dataValue = $("#finalPayMent .payTxt").data('value').split('|');
                                        var dataValue ="";
                                        var mid = "";
                                        
                                        $('.btn-otherMethod').addClass('selected');
                                        $('#sel-otherMethod').prop('checked', true);
                                        
                                        if ("9" == "K" && $("#pay_method_5").length != 0 ) {
                                            mid = $("#pay_method_5").data("mid");
                                            $("#pay_method_5").addClass("selected").find("input:radio").prop("checked", true);
                                            dataValue = $("#pay_method_5").data('value').split('|');
                                            
                                        } else if ("9" == 'P' && $("#pay_method_7").length != 0) {
                                            mid = $("#pay_method_7").data("mid");
                                            $("#pay_method_7").addClass("selected").find("input:radio").prop("checked", true);
                                            dataValue = $("#pay_method_7").data('value').split('|');
                                            
                                        } else if ("9" == 'N' && $("#pay_method_8").length != 0  )  {
                                            mid = $("#pay_method_8").data("mid");
                                            $("#pay_method_8").addClass("selected").find("input:radio").prop("checked", true);
                                            dataValue = $("#pay_method_8").data('value').split('|');
                                            
                                        } else if ("9" == 'I' && $("#pay_method_9").length != 0 ) {
                                            mid = $("#pay_method_9").data("mid");
                                            $("#pay_method_9").addClass("selected").find("input:radio").prop("checked", true);
                                            dataValue = $("#pay_method_9").data('value').split('|');
                                            
                                        } else if ("9" == 'F' && $("#pay_method_A").length != 0 ) {
                                            mid = $("#pay_method_A").data("mid");
                                            $("#pay_method_A").addClass("selected").find("input:radio").prop("checked", true);
                                            dataValue = $("#pay_method_A").data('value').split('|');
                                            
                                        } else if ("9" == 'A' && $("#pay_method_6").length != 0 ) {
                                            mid = "ok";
                                            $("#pay_method_6").addClass("selected").find("input:radio").prop("checked", true);
                                            dataValue = $("#pay_method_6").data('value').split('|');
                                            
                                        } else if ("9" == '9'  && $("#pay_method_4").length != 0 ) {
                                            mid = "ok";
                                            $("#pay_method_4").addClass("selected").find("input:radio").prop("checked", true);
                                            dataValue = $("#pay_method_4").data('value').split('|');
                                            
                                        } else if ("9" == 'D'  && $("#pay_method_2").length != 0 ) {
                                            mid = "ok";
                                            $("#pay_method_2").addClass("selected").find("input:radio").prop("checked", true);
                                            dataValue = $("#pay_method_2").data('value').split('|');
                                            
                                            $('.btn-dominopay').removeClass('selected');
                                            $('#sel-dominopay').prop('checked', false);
                                            
                                            $('.btn-otherMethod').addClass('selected');
                                            $('#sel-otherMethod').prop('checked', true);
                                            
                                        } else if ("9" == '2' && $("#pay_method_3").length != 0 ) {
                                            mid = "ok";
                                            $("#pay_method_3").addClass("selected").find("input:radio").prop("checked", true);
                                            dataValue = $("#pay_method_3").data('value').split('|');
                                            
                                        } else if ("9" == '1' && $("#pay_method_1").length != 0 ) {
                                            mid ="ok";
                                            $("#pay_method_1").addClass("selected").find("input:radio").prop("checked", true);
                                            dataValue = $("#pay_method_1").data('value').split('|');
                                            $('#pay_method_sub_1').addClass("__active");
                                        } else if ("9" == 'E' && $("#pay_method_E").length != 0 ) {
                                            mid ="ok";
                                            if (appleSession != null && appleSession != undefined) { //애플페이 사용가능한 기기면  
                                                $("#pay_method_E").addClass("selected").find("input:radio").prop("checked", true);
                                                dataValue = $("#pay_method_E").data('value').split('|');
                                                $(".pay-btn").html('<apple-pay-button buttonstyle="black" type="check-out" locale="ko-KR" onclick=\"onPayClicked(\''+ $("#a_afterDcPrice").val() + '\');\">Apple로 결제</apple-pay-button>');
                                            } else {
                                                $('#pay_method').val("");
                                                $("#settlement_method").val("");
                                            }
                                        } else {
                                            mid = "ok";
                                        }
                                        
                                        $("#settlement_method").val(dataValue[0]);
                                        $("#pay_method").val(dataValue[1]);
                                        $("#pay_method_chk").val(dataValue[2]);
                                        $("#payment_save").val("Y");
                                        
                                        if($("#pay_method").val() == '1'){
                                            $("#pay_method_sub_1").show();
                                        }
                                        //현재 결제수단을 미리 저장해 놈.
                                        settlement_method = $("#settlement_method").val();
                                        pay_method = $("#pay_method").val();
                                        pay_method_chk =$("#pay_method_chk").val();
                                        
                                        //드라이브픽업, 상품권 , 해당 결제수단 결재 불가 매장 일 때
                                        if (typeof mid == "undefined" || mid == null || mid == '' || mid == "undefined" ) {
                                            $("#pay_info").html($(data).find("#basicPayInfo").html());
                                            
                                            //$('.after_pay .title-type6').removeClass();
                                            //$(".final_payment_box").css("display","none");//결제수단 저장 버튼 제거
                                            //$('.after_pay').css('display', 'none'); //현장결제 비노출
                                            $("#payment_save").val('N');
                                        }
                                        if($("#drive_yn").val()=='Y' ){
                                            //드라이빙 픽업 서비스는 선결제만 가능, 최종결제 수단이 선결제라면 결제수단 저장 폼으로 노출
                                            if(settlement_method == 1 || settlement_method == 2){  //최종결제 수단이 후불이라면
                                                $("#pay_info").html($(data).find("#basicPayInfo").html());
                                                $(".final_payment_box").css("display","none");//결제수단 저장 버튼 제거
                                                //$('.after_pay').css('display', 'none'); //현장결제 비노출
                                                
                                            }
                                        }
                                    }
                                    // 다른 결제 선택시 직전 결제 값 세팅 end
                                }
            
                                // 현금영수증 영역 초기화
                                initCashReceipt($("#prmt_idx").val());
                            });
            
                            $('.btn-dominopay').on('click', function () {
                                //$('.dominopay-wrap').addClass('__active');
                                //$('.otherMethod-wrap').removeClass('__active');
                                $('.btn-changeMethod').removeClass('__active');
                                $('.btn-changeMethod').attr('style', 'display:block;');
                            });
                            
                            $('.btn-changeMethod').on('click', function () {
                                event.preventDefault();
                                $('#sel-dominopay').prop('checked', false);
                                $('#sel-otherMethod').prop('checked', true);
                                $('.btn-dominopay').removeClass('selected');
                                $('#sel-otherMethod').closest('.chk-box').addClass('selected');
                                
                                //$('.otherMethod-wrap').addClass('__active');
                                //$('.dominopay-wrap').removeClass('__active');
                                $('.btn-changeMethod').attr('style', 'display:none;');
                            });
                            
                            /* $('.btn-favor').on('click', function () {
                                event.preventDefault();
                                $(this).find('i').toggleClass('__selected');
                            }); */
                            // E: 200818 도미노페이 고도화
                            
                            // 현금영수증 영역 초기화
                            initCashReceipt($("#prmt_idx").val());
                            if("0" < 1) {
                                
                                setTimeout(function(){
                                    if(zeroRequest==null){
                                        UI.layerPopUp({selId: '#pop-zeroWaste'});
                                        zeroRequest='Y';
                                    }
                                }, 100);
                            } else {
                                $('input:radio[name="zeroWaste"]')[1].checked = true;
                                $("#zeroWasteChk2").removeClass("selected");
                                $("#zeroWasteChk").addClass("selected");
                                $('.zeroWaste-detail').addClass('__selected');
                            }
                        });
                        
                        
                        if("" == "Y") {
                            var item = "input[name=itemCHK]";
                            $("input:checkbox[name=itemCHK]").prop("checked", false);
                        } else {
                            var item = "input[name=itemCHK]";
                            $("input:checkbox[name=itemCHK]").prop("checked", true);
                        }
                        
                        if("86700" < 50000) {
                            $('.dc_month').attr('disabled', 'true');
                        }
                        
                        </script>
                        
                        
                        <section class="otherMethod-wrap __active">
                            <div class="dimLayer"></div>
                            <div class="pay-info">
                                <div class="title-type2">미리결제</div>
                                <ul class="list-chk list-chk2">
                                    <li>
                                            <div class="chk-box btn-payMethod selected" id="pay_method_4" data-hidedefault="" data-value="9|4|Y" onclick="clickPayType('radio', this);">
                                                <input type="radio" id="pay1" name="pay" onclick="event.stopPropagation()">
                                                <label class="paynm" for="pay1">카드결제</label>
                                            </div>
                                        </li>
                                    <li>
                                            <div class="chk-box btn-payMethod" id="pay_method_6" data-hidedefault="" data-value="A|6|Y" onclick="clickPayType('radio', this);">
                                                <input type="radio" id="pay7" name="pay" onclick="event.stopPropagation()">
                                                <label class="paynm" for="pay7">핸드폰결제</label>
                                            </div>
                                        </li>
                                    <li>
                                            <div class="chk-box btn-payMethod" id="pay_method_8" data-hidedefault="" data-mid="naver66501" data-value="N|8|Y" onclick="clickPayType('radio', this);">
                                                <input type="radio" id="pay12" name="pay" onclick="event.stopPropagation()">
                                                <label class="paynm" for="pay12">
                                                    <i class="ico-pay_npay">네이버페이</i>
                                                </label>
                                            </div>
                                        </li>
                                    <li>
                                            <div class="chk-box btn-payMethod" id="pay_method_5" data-hidedefault="" data-mid="C059610152" data-value="K|5|Y" onclick="clickPayType('radio', this);">
                                                <input type="radio" id="pay2" name="pay" onclick="event.stopPropagation()">
                                                <label class="paynm" for="pay2">
                                                    <i class="ico-pay_kakaopay">카카오페이</i>
                                                </label>
                                            </div>
                                        </li>
                                    <li>
                                            <div class="chk-box btn-payMethod" id="pay_method_7" data-hidedefault="" data-mid="PCO66501" data-value="P|7|Y" onclick="clickPayType('radio', this);">
                                                <input type="radio" id="pay4" name="pay" onclick="event.stopPropagation()">
                                                <label class="paynm" for="pay4">
                                                    <i class="ico-pay_payco">페이코</i>
                                                </label>
                                            </div>
                                        </li>
                                    <li>
                                            <div class="chk-box btn-payMethod" id="pay_method_9" data-hidedefault="" data-mid="KCDMN0186m" data-value="I|9|Y" onclick="clickPayType('radio', this);">
                                                <input type="radio" id="pay5" name="pay" onclick="event.stopPropagation()">
                                                <label class="paynm" for="pay5">
                                                    <i class="ico-pay_smilepay">스마일페이</i>
                                                </label>
                                            </div>
                                        </li>
                                    <li>
                                            <div class="chk-box btn-payMethod" id="pay_method_B" data-hidedefault="" data-value="9|B|Y" onclick="clickPayType('radio', this);">
                                                <input type="radio" id="pay11" name="pay" value="toss" onclick="event.stopPropagation()">
                                                <label class="paynm" for="pay11">
                                                    <i class="ico-pay_toss">토스</i>
                                                </label>
                                            </div>
                                        </li>
                                    <li id="apple-pay-button" style="display:none;">
                                            <div class="chk-box btn-payMethod" id="pay_method_E" data-hidedefault="" data-value="E|E|Y" onclick="clickPayType('radio', this);">
                                                <input type="radio" id="pay13" name="pay" value="apple" onclick="event.stopPropagation()">
                                                <label class="paynm" for="pay13">
                                                    <i class="ico-pay_apple">애플페이</i>
                                                    <!-- <apple-pay-button buttonstyle="white" type="plain" locale="en-US">애플페이</apple-pay-button> -->
                                                     </label>
                                            </div>
                                        </li>
                                    </ul>
                                <div id="pay_method_sub_3">
                                    <div class="form-item tab_content_wrap" id="pay_method_sub_4" style="display:none;">
                                        <div class="chk-box v3">
                                            <!--2020-01-23 클래스추가-->
                                            <input type="checkbox" id="bccard_yn">
                                            <label class="checkbox" for="bccard_yn"></label>
                                            <label for="bccard_yn">BC TOP 포인트 결제</label>
                                        </div>
                                    </div>
                                </div>
                                <ul class="pay_method_guide __active">
                                    <li class="guideItem paycoin-text" style="display:none;">페이코인 측의 사정으로 결제서비스가 일시 중단되었습니다.</li>
                                    <li class="guideItem card-text" style="display:none;">오늘 단 하루, 신한페이판으로 결제 시 2천원 페이백 (신용카드&gt;신한&gt;신한payFAN 결제 필수)</li>
                                    <li class="guideItem card-text" style="display:none;">실 결제금액 12,000원 이상 시, 상세내용 T day 이벤트페이지 하단 참조</li>
                                    
                                    <li class="guideItem card-text2" style="display:none;">2020년도 도미노피자에서 네이버페이 첫 결제 시 네이버페이 2천 포인트 적립</li>
                                    <li class="guideItem card-text2" style="display:none;">실 결제금액 25,000원 이상 시, 상세내용 이벤트페이지 참조</li>
                                    <li class="guideItem card-text2" style="display:none;">네이버페이로 결제 시 결제금액의 1% 포인트 적립(최대 2만원까지)</li>
                                </ul>
                            </div>
                            <div class="pay-info pay-info2" id="title-pay-info2">
                                        <div class="title-type2">현장결제</div>
                                        <div class="form">
                                            <ul class="list-chk onePay">
                                                <li>
                                                        <div class="chk-box btn-payMethod btn-onePay" id="pay_method_3" data-hidedefault="" data-value="2|3|Y" onclick="clickPayType('radio', this);">
                                                            <input type="radio" id="pay9" name="pay" onclick="event.stopPropagation()">
                                                            <label class="paynm" for="pay9">현장카드결제</label>
                                                        </div>
                                                    </li>
                                                <li>
                                                        <div class="chk-box btn-payMethod btn-onePay" id="pay_method_1" data-hidedefault="3" data-value="1|1|Y" onclick="clickPayType('radio', this);">
                                                            <input type="radio" id="pay10" name="pay" value="cash">
                                                            <label class="paynm" for="pay10">현장현금결제</label>
                                                        </div>
                                                    </li>
                                                </ul>
                                            <div id="pay_method_sub_1" style="display:none;">
                                                <div class="form-item">
                                                    <div class="chk-box v3">
                                                        <!--2020-01-23 클래스추가-->
                                                        <input type="checkbox" name="check_5" id="check_5">
                                                        <label class="checkbox" for="check_5"></label>
                                                        <label for="check_5">5만원권</label>
                                                    </div>
                                                    <div class="chk-box v3">
                                                        <!--2020-01-23 클래스추가-->
                                                        <input type="checkbox" name="check_10" id="check_10">
                                                        <label class="checkbox" for="check_10"></label>
                                                        <label for="check_10">10만원권</label>
                                                    </div>
                                                    <!-- <span class="text2">* 고액권 결제 시 체크박스를 선택해주세요.</span> -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                        <div class="pay-info pay-info3">
                            <ul class="list-text-v2 pay_guide">
                                <li class="strong">
                                    코로나바이러스 확산에 따라 고객님과 매장 근무자의 안전과 건강을 고려하여 주문시 미리결제를 사용하시면 보다 편하게 이용하실 수 있습니다.
                                </li>
                                <li>
                                    토스 결제수단 이용 시 일부 카드사 이용제한(BC, 국민, 농협)
                                </li>
                                <li class="apple-text" style="display:none;">
                                    Apple Pay 결제수단 이용 시, 카드사 제휴할인 이용이 불가합니다. 카드사 포인트 복합결제는 결제수단을 변경해주세요.
                                </li>
                                <!-- <li>
                                    페이코인 결제수단 이용 시, PCI 잔액이 있어야만 결제가 가능하며 페이코인 앱 내 고객확인 완료 시에만 결제 이용 가능
                                </li>
                                <li>
                                    도미노피자 내 페이코 첫 결제 또는 90일 이상 페이코 결제 휴면고객 대상 2천원 추가 할인
                                </li>
                                <li>
                                    실 결제금액 25,000원 이상, 선착순2,500명, 상세내용 이벤트페이지 참조
                                </li> -->
                            </ul>
                        </div>
                    </div>
                                    <!-- // 결제방법 -->
            
                                    <!-- 현금영수증 -->
                                    <div class="step-wrap" id="cash_receipt_info">
                    <!-- S: 210406 현금영수증 발급 기능 추가 -->
                    <script type="text/javascript">
                    $('input[name="receipt_type"]').change(function() {
                        if ($(this).attr('id') === 'receipt_manual') {
                            $('.btn-receipt-manual').addClass('selected');
                            $('.btn-receipt-auto').removeClass('selected');
                            $('#receipt_manual').prop('checked', true);
                            $('#receipt_auto').prop('checked', false);
                            $('.receipt-detail').addClass('__selected');
                        } else {
                            $('.btn-receipt-manual').removeClass('selected');
                            $('.btn-receipt-auto').addClass('selected');
                            $('#receipt_manual').prop('checked', false);
                            $('#receipt_auto').prop('checked', true);
                            $('.receipt-detail').removeClass('__selected');
                        }
                    });
                    
                    $('input[name="billyn"]').change(function() {
                        if ($(this).attr('id') === 'receipt_bill_n') {
                            $('.btn-receipt-bill-n').addClass('selected');
                            $('.btn-receipt-bill-y').removeClass('selected');
                            $('#receipt_bill_n').prop('checked', true);
                            $('#receipt_bill_y').prop('checked', false);
                        } else {
                            $('.btn-receipt-bill-n').removeClass('selected');
                            $('.btn-receipt-bill-y').addClass('selected');
                            $('#receipt_bill_n').prop('checked', false);
                            $('#receipt_bill_y').prop('checked', true);
                        }
                    });
            
                    $('.receipt-select .chk-box label').on('click', function(){
                        if ($(this).parent('.chk-box').hasClass('btn-receipt-manual')) {
                            $('.receipt-detail').addClass('__selected');
                        } else if ($(this).parent('.chk-box').hasClass('btn-receipt-auto')) {
                            $('.receipt-detail').removeClass('__selected');
                        };
                    });
                    
                    $("#receipt_reg_num").on('input', function() {
                        this.value = this.value.replace(/[^0-9]/g, '');
                    });
            
                    $("#receipt_use_opt").change(function() {
                        $("#receipt_reg_num").val("");
                        if (this.value == "0H") {
                            $("#receipt_reg_num").attr("maxlength", 11);
                        } else if (this.value == "0C") {
                            $("#receipt_reg_num").attr("maxlength", 19);
                        } else if (this.value == "1B") {
                            $("#receipt_reg_num").attr("maxlength", 10);
                        } else if (this.value == "1C") {
                            $("#receipt_reg_num").attr("maxlength", 19);
                        }
                    });
            
                    if ($("#receipt_use_opt option:selected").val() == "0H") {
                        $("#receipt_reg_num").attr("maxlength", 11);
                    } else if ($("#receipt_use_opt option:selected").val() == "0C") {
                        $("#receipt_reg_num").attr("maxlength", 19);
                    } else if ($("#receipt_use_opt option:selected").val() == "1B") {
                        $("#receipt_reg_num").attr("maxlength", 10);
                    } else if ($("#receipt_use_opt option:selected").val() == "1C") {
                        $("#receipt_reg_num").attr("maxlength", 19);
                    }
                    </script>
                    
                    <!-- S: 매장으로 발급 요청 시 -->
                    <div class="step-wrap receipt-wrap" id="receipt_offline" style="display: none;">
                        <div class="title-wrap">
                            <h3 class="title-type"><strong>현금영수증</strong></h3>
                            <a href="javascript:UI.layerPopUp({selId:'#receipt-notice'});" class="btn-layerPopup">발급 안내</a>
                        </div>
                        <ul class="receipt-select">
                            <li>
                                <div class="chk-box btn-receipt-bill-n selected">
                                    <input type="radio" id="receipt_bill_n" name="billyn" value="N" checked="">
                                    <label class="checkbox" for="receipt_bill_n"></label>
                                    <label for="receipt_bill_n">미발급</label>
                                </div>
                            </li>
                            <li>
                                <div class="chk-box btn-receipt-bill-y">
                                    <input type="radio" id="receipt_bill_y" name="billyn" value="Y">
                                    <label class="checkbox" for="receipt_bill_y"></label>
                                    <label for="receipt_bill_y">매장으로 발급 요청</label>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <!-- E: 매장으로 발급 요청 시 -->
                    
                    <!-- S: 미리결제 시 -->
                    <div class="step-wrap receipt-wrap" id="receipt_online" style="display:none;">
                        <div class="title-wrap">
                            <h3 class="title-type"><strong>현금영수증</strong></h3>
                            <a href="javascript:UI.layerPopUp({selId:'#receipt-notice'});" class="btn-layerPopup">발급 안내</a>
                        </div>
                        <ul class="receipt-select">
                            <li>
                                <div class="chk-box btn-receipt-manual btn-receipt-detail selected">
                                    <input type="radio" id="receipt_manual" name="receipt_type" value="manual" checked="">
                                    <label class="checkbox" for="receipt_manual"></label>
                                    <label for="receipt_manual">신청</label>
                                </div>
                                <div class="receipt-detail __selected">
                                    <div class="form-item">
                                        <div class="select-type type2">
                                            <select id="receipt_use_opt">
                                                <option value="0H">개인소득공제용-휴대폰번호</option>
                                                <option value="0C">개인소득공제용-현금영수증카드</option>
                                                <option value="1B">사업자증빙용-사업자번호</option>
                                                <option value="1C">사업자증빙용-현금영수증카드</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-item">
                                        <input type="text" id="receipt_reg_num" value="01020625328" placeholder="숫자만 입력해 주세요." maxlength="11">
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="chk-box btn-receipt-auto">
                                    <input type="radio" id="receipt_auto" name="receipt_type" value="auto">
                                    <label class="checkbox" for="receipt_auto"></label>
                                    <label for="receipt_auto">미신청</label>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <!-- E: 미리결제 시 -->
                    <!-- E: 210406 현금영수증 발급 기능 추가 -->
                </div>
                                    <!-- // 현금영수증 -->
                                    
                                    <!-- 결제 금액, 퀵 오더로 설정, 결제 및 주문완료 -->
                                    <div class="step-wrap" id="final_pay_info">
                    <div class="step-wrap">
                        <div class="title-wrap">
                            <h3 class="title-type"><strong>최종결제금액</strong></h3>
                        </div>
                        
                        <div class="total-step">
                            <ul>
                                    <li>
                                                <p class="tit">총 상품 금액</p>
                                                <p class="price"><em><span id="basketTotalPrice">86,700</span></em>원</p>
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