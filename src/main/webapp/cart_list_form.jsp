<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/style.css" >
    <link rel="stylesheet" type="text/css" href="css/cartlist.css" >
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
                                                                <li class="active"><a href="">배달<span class="itemA">30분 소요</span></a></li>
                                                                <li><a href="javascript:selectOrderType();">포장<span class="itemB">15분 소요</span></a></li>
                                                            </ul>
                                                        </div>
                                        <div class="title-wrap cart-waiting-btn">
                                            <div class="cart-btn-side">
                                                <button type="button" class="ico-destination" onclick="javascript:goBranch();">배달지 변경</button>
                                            </div>
                                        </div>
                                        <div class="deli-info">
                                            <div class="address">
                                                서울특별시 송파구 </div>
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
                                                <a href="javascript:allDelete();">전체 삭제</a>
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
                                                <li class="row" id="sold-out0">
                                                        <div class="sold-out-btn" id="sold-out-btn0" style="display:none">
                                                            <p>Sold Out</p>
                                                               <a href="javascript:changeGoodsCnt('delete',0,'RPZ281GL', '1', 2, 0);" class="btn-type4-brd3">삭제</a>
                                                        </div>
                                                        <div class="prd-info">
                                                            <div class="prd-img">
                                                                <img src="https://cdn.dominos.co.kr/admin/upload/goods/20221117_nsGlJ99q.jpg" alt="대만 콘 치즈 감자" onerror="this.src='https://cdn.dominos.co.kr/admin/upload/goods/goods_default.jpg'">
                                                                            </div>
                                                            <div class="prd-cont">
                                                                <div class="subject">대만 콘 치즈 감자</div>
                                                                <div class="option">
                                                                        <input type="hidden" name="pizza" value="2">
                                                                        슈퍼시드 화이버 함유 도우/L</div>
                                                                <div class="price">
                                                                    20,900원
                                                                </div>
                                                                </div>
                                                        </div>
                                                        
                                                        <div class="prd-option">
                                                            </div>
                                                        <div class="prd-quantity">
                                                            <div class="quantity-box v2">
                                                                <a href="javascript:void(0);" onclick="changeGoodsCnt('minus',0,'RPZ281GL', '1', 2, -1);" class="minus"><button class="btn-minus"></button></a>
                                                                <input type="number" class="qty0" id="qty0" value="2" readonly="">
                                                                <a href="javascript:void(0);" onclick="changeGoodsCnt('plus',0,'RPZ281GL', '1', 2, 1);" class="plus"><button class="btn-plus"></button></a>
                                                                </div>
                                                        </div>
                                                        <div class="prd-total">
                                                            <em>41,800</em>원
                                                        </div>
                                                        <div class="prd-delete">
                                                            <a href="javascript:changeGoodsCnt('delete',0,'RPZ281GL', '1', 2, 0);" class="btn-close">
                                                                <span class="hidden">삭제</span>
                                                            </a>
                                                        </div>
                                                    </li>
                                                <li class="row" id="sold-out1">
                                                        <div class="sold-out-btn" id="sold-out-btn1" style="display:none">
                                                            <p>Sold Out</p>
                                                               <a href="javascript:changeGoodsCnt('delete',1,'RPZ298AL', '1', 2, 0);" class="btn-type4-brd3">삭제</a>
                                                        </div>
                                                        <div class="prd-info">
                                                            <div class="prd-img">
                                                                <img src="https://cdn.dominos.co.kr/admin/upload/goods/20230612_A5Qaqy05.jpg" alt="치즈 크레이프 샌드" onerror="this.src='https://cdn.dominos.co.kr/admin/upload/goods/goods_default.jpg'">
                                                                            </div>
                                                            <div class="prd-cont">
                                                                <div class="subject">치즈 크레이프 샌드</div>
                                                                <div class="option">
                                                                        <input type="hidden" name="pizza" value="2">
                                                                        샌드/L</div>
                                                                <div class="price">
                                                                    34,900원
                                                                </div>
                                                                </div>
                                                        </div>
                                                        
                                                        <div class="prd-option">
                                                            </div>
                                                        <div class="prd-quantity">
                                                            <div class="quantity-box v2">
                                                                <a href="javascript:void(0);" onclick="changeGoodsCnt('minus',1,'RPZ298AL', '1', 2, -1);" class="minus"><button class="btn-minus"></button></a>
                                                                <input type="number" class="qty1" id="qty1" value="2" readonly="">
                                                                <a href="javascript:void(0);" onclick="changeGoodsCnt('plus',1,'RPZ298AL', '1', 2, 1);" class="plus"><button class="btn-plus"></button></a>
                                                                </div>
                                                        </div>
                                                        <div class="prd-total">
                                                            <em>69,800</em>원
                                                        </div>
                                                        <div class="prd-delete">
                                                            <a href="javascript:changeGoodsCnt('delete',1,'RPZ298AL', '1', 2, 0);" class="btn-close">
                                                                <span class="hidden">삭제</span>
                                                            </a>
                                                        </div>
                                                    </li>
                                                <!-- 총 주문 금액 -->
                                                <li class="total-price2 side">
                                                    <p>총 금액 <em>111,600</em>원</p>
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
                                            <a href="javascript:reserveValid('O', '111600');" class="btn-type v3">주문하기</a>
                                        </div>
                                    <!-- //주문하기 버튼 -->
                                <!-- S: 221115 주문 유도 프로세스 추가 -->
                                

                               
                            </article>
                        </div>
                    </div>
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
                    if ("2023082111".substring(0, 8) == $("#reserve_day").val().substring(0, 8)) {
                        reserve_cho = "TD";
                    } else {
                        reserve_cho = "TM";
                    }
                } else if (timeType == "ALL") {
                    if ("2023082111".substring(0, 8) == $("#reserve_day").val().substring(0, 8)) {
                        reserve_cho = "TD";
                    } else {
                        reserve_cho = "TM";
                    }
                }
                
                if (reserve_cho != null) {
                    var branch_code="86665";
                    var order_gubun="O";
                    var address_gubun= cookieManager.getCookie('ADDRESS_GUBUN');
                    var select_time = "2023082111";
                    
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
                    if ("2023082111".substring(0, 8) == "" || "2023082111".substring(0, 8) == "") {
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
                
               
                </div>
            </div>













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