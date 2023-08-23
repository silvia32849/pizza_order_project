<%@page import="com.itwill.pizza.product.Product"%>
<%@page import="com.itwill.pizza.product.ProductService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String p_noStr = request.getParameter("p_no");
if (p_noStr == null || p_noStr.equals("")) {
	response.sendRedirect("product_list.jsp");
	return;
}
boolean isLogin = false;
if (session.getAttribute("sUserId") != null) {
	isLogin = true;
}

ProductService productService = new ProductService();
Product product = productService.productDetail(Integer.parseInt(p_noStr));
if (product == null) {
	out.println("<script>");
	out.println("alert('매진된상품입니다.');");
	out.println("location.href='product_list.jsp';");
	out.println("</script>");
	return;
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css" > 
    <link rel="stylesheet" type="text/css" href="productdetail.css" > 
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



        




        <!-- 컨테이너 시작 -->
        <div id="container">
            <section id="content">
                <div class="sub-type menu" style="padding-bottom: 100px;">
                    <div class=""> <!-- inner-box -->
                        
                        <!-- 추후 공통화 예정 -->
                        <div class="page-title-wrap inner-box">
                            <h2 class="page-title">메뉴</h2>
                            <div class="depth-area">
                                <ol>
                                    <li><a href="#">홈</a></li>
                                    <li><a href="#">메뉴</a></li>
                                    <li><strong>치즈 크레이프 샌드</strong></li>
                                </ol>
                            </div>
                        </div>
                        
                        <article class="menu-list-area menu-detail-area">
                            <!-- menu-list -->
                            <div class="inner-box">
                            <div class="menu-nav-wrap">
            <div class="menu-nav">
                <ul>
                    <li class="active"><a href="/goods/list?dsp_ctgr=C0101">피자</a></li>
                    <li><a href="javascript:goLink('', '/goods/onePizzalist');">1인 메뉴</a></li>
                        <li><a href="javascript:goLink('', '/goods/hnh');">하프앤하프</a></li>
                        <li><a href="javascript:goLink('', '/goods/list?dsp_ctgr=C0201');">사이드디시</a></li>
                        <li><a href="javascript:goLink('', '/event/hotdealList?gubun=E0100');">인기세트메뉴</a></li>
                        <li><a href="javascript:goLink('', '/goods/mykitchen');">마이키친</a></li>
                    <li><a href="/goods/list?dsp_ctgr=C0202">음료&amp;기타</a></li>
                </ul>
            </div>
            
            </div>
        <script>
        
        /* 2020.09.01 랭킹 주석 
         
            getRankingList();
        
        
            function getRankingList (){
            // search
            $('.sch-slider').slick({
                autoplay: true,
                autoplaySpeed: 3000,
                slidesToShow: 1,
                slidesToScroll: 1,
                arrows: false,
                vertical: true,
                asNavFor: '.sch-slider-nav'
            });
            $('.sch-slider-nav').slick({
                slidesToShow:10,
                slidesToScroll: 1,
                variableWidth: true,
                asNavFor: '.sch-slider',
            });
            
            $(".btn-open").on('click',function(e){
                e.preventDefault();
                
                var link = $(this);
                var cont = $(this).closest('.sch-box');
                if(cont.hasClass('active')){
                    cont.removeClass('active');
                    link.removeClass('active');
                    cont.find('.sch-slider-nav').slideUp();
                }else{
                    cont.addClass('active');
                    link.addClass('active');
                    cont.find('.sch-slider-nav').slideDown();
                }
            });
            
            $('.sch-slider-nav').mouseleave(function(){
                var link = $(this).closest('.sch-box').find(".btn-open");
                var cont = $(this).closest('.sch-box');
                if(cont.hasClass('active')){
                    cont.removeClass('active');
                    link.removeClass('active');
                    cont.find('.sch-slider-nav').slideUp();
                }
            });	
        } */
        
        
        </script>
        </div>
                            <!-- //menu-list -->
                            
                            <div class="menu-info inner-box">
                                <div class="img-wrap">
                                    <div class="view-box">
                                        <!-- 대표 이미지 슬라이드 -->
                                        <div class="menu-slider-view2 slick-initialized slick-slider" style="display: block;">
                                            <div aria-live="polite" class="slick-list draggable"><div class="slick-track" style="opacity: 1; width: 580px; transform: translate3d(0px, 0px, 0px);" role="listbox"><div class="slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" style="width: 580px;" tabindex="-1" role="option" aria-describedby="slick-slide00"><img src="https://cdn.dominos.co.kr/admin/upload/goods/20230612_A5Qaqy05.jpg" alt="치즈 크레이프 샌드1"></div></div></div>
                                            </div>
                                        
                                        <div class="menu-slider-viewdouble" style="display:none;"></div>
                                        
                                        <!-- //대표 이미지 슬라이드 -->
                                        
                                        <a href="javascript:getDetailSlide('RPZ298AL','C0102');trk_call('nonlist');" class="btn-detail">
                                            <i class="ico-zoomImg"></i>제품상세
                                            <span class="hidden">상세버튼</span>
                                        </a>
                                    </div>

                                    
                                    <div class="guide-box2">
                                    모든 사진은 이미지컷으로 실제 제품과 다를 수 있습니다.
                                    </div>
                                    <div class="guide-box2">
                                    원산지 정보는 사진 우측 하단 돋보기 메뉴를 통해 확인 가능합니다.
                                    </div>
                                    
                                    </div>
                                <div class="detail-wrap">
                                    <div class="menu-box">
                                        <div class="title-box">
                                            <h3 class="title pizza">치즈 크레이프 샌드</h3>
                                            
                                            <div class="hashtag">
                                                <span>#7가지 치즈, 스테이크, 슈림프가 겹겹이 쌓인 맛의 품격!</span>
                                                    <span>#도미노에서만 만날 수 있는 샌드 도우로 피자의 품격도 높이다!</span>
                                                    </div>
                                        </div>
                                        
                                        
                                        </div>
                                    
                                    <!-- 주문 옵션 선택 -->
                                    <div class="select-box">
                                        <div class="step-wrap">
                                                <div class="title-wrap">
                                                    <div class="title-type2">사이즈 선택</div>
                                                </div>
                                                <div class="size-box">
                                                    <!-- checkbox 활성화 일 경우 -->
                                                    <div class="chk-box2 selected">
                                                        <input type="radio" id="size1" name="size" value="L" checked="" onclick="setEdgeOption()">
                                                        <label class="checkbox" for="size1"></label>
                                                        <label for="size1">L 34,900원<p></p></label>
                                                    </div>
                                                    <!-- //checkbox 활성화 일 경우 -->
                                                    <div class="chk-box2">
                                                            <input type="radio" id="size2" name="size" value="M" onclick="setEdgeOption()">
                                                            <label class="checkbox" for="size2"></label>
                                                            <label for="size2">M 29,000원<p></p></label>
                                                        </div>
                                                    </div>
                                            </div>
                                            
                                            <div class="step-wrap">
                                                <div class="title-wrap">
                                                    <div class="title-type2">도우 선택</div>
                                                </div>
                                                <div class="option-box dough"><input type="hidden" class="options" id="RPZ298AL" data-ctgrnm="샌드" data-filenm="20230612_A5Qaqy05.jpg" data-options="L:" data-gubun="116" data-price="34900"><div class="chk-box selected"><input type="radio" id="dough4" name="dough" value="4" onclick="changeDoughOption(this)"><label class="checkbox" for="dough4"></label><label for="dough4">샌드 도우(나폴리+씬 크러스트)</label></div><input type="hidden" class="options" id="RPZ298AM" data-ctgrnm="샌드" data-filenm="20230613_v3M8yfB4.jpg" data-options="M:" data-gubun="116" data-price="29000"></div>	
                                            </div>
                                            
                                            <div class="step-wrap edge" style="display: none;">
                                                <div class="title-wrap">
                                                    <div class="title-type2">엣지 선택</div>
                                                    <div class="notice-text side"><a href="javascript:UI.layerPopUp({selId:'#pop-edge'})">엣지의 특징</a></div>
                                                </div>
                                                <div class="option-box edge"><div class="chk-box selected"><input type="radio" id="edge0" name="edge" value="0" onclick="changeEdgeOption(this)"><label class="checkbox" for="edge0"></label><label for="edge0">선택 안함</label></div></div>
                                            </div>
                                            
                                            
                                            <div class="step-wrap">
                                                <div class="title-wrap">
                                                    <div class="title-type2">수량 선택</div>
                                                </div>
                                                <div class="quantity-box">
                                                    <button class="btn-minus goods"></button>
                                                    <input type="number" class="opt_qty" value="1" id="qty" max="9" readonly="">
                                                    <button class="btn-plus goods"></button>
                                                </div>
                                            </div>
                                            
                                           
                                            
                                                <div class="step-wrap">
                                                    <div class="title-wrap">
                                                        <div class="title-type2">사이드디시</div>
                                                    </div>
                                                    
                                                    <div class="tab-type js_tab">
                                                        <ul>
                                                            <li class="active"><a href="#sidedish1">일반</a></li>
                                                            </ul>
                                                    </div>
                                                    
                                                    <script type="text/javascript">
        $(document).ready(function() {
            if ("16" > 0) {
                // 특가 탭 사이드 리스트 노출
                $("#sidedish1.tab-content").addClass("active");
                $("#sidedish2.tab-content").removeClass("active");
            } else {
                // 일반 탭 사이드 리스트 노출
                $("#sidedish1.tab-content").removeClass("active");
                $("#sidedish2.tab-content").addClass("active");
            }
            
            // 특가 예외처리(특가 진행 시 special_side 클래스 필수로 넣어줘야함. 예외처리 필요 시 해당 특가에 대한 클래스명도 추가)
            $("input[value=SST329F1]").parents().siblings(".subject")[0].innerHTML = '<span style="font-weight: bold; color:red">[로스트아크]</span> 굿즈+쿠폰+코카콜라 1.25L 스페셜 딜!';
            $("input[value=SST251F1]").parents().siblings(".subject").prepend("<span class='CBrand'>[슈퍼팝 티켓 응모 찬스]</span>")
            $("input[value=SST252F1]").parents().siblings(".subject").prepend("<span class='CBrand'>[슈퍼팝 티켓 응모 찬스]</span>")
            $("input[value=SST318F1]").parents().siblings(".subject").prepend("<span class='CBrand'>[슈퍼팝 티켓 응모 찬스]</span>")
            $("input[value=SST319F1]").parents().siblings(".subject").prepend("<span class='CBrand'>[슈퍼팝 티켓 응모 찬스]</span>")
            
            $("input[value=SST329F1]").siblings(".setNum").addClass("special_side");
            $("input[value=SST251F1]").siblings(".setNum").addClass("special_side side_combo");
            $("input[value=SST252F1]").siblings(".setNum").addClass("special_side side_combo");
            $("input[value=SST318F1]").siblings(".setNum").addClass("special_side side_combo");
            $("input[value=SST319F1]").siblings(".setNum").addClass("special_side side_combo");
        });
        
        function setsideTotalCnt(obj, action) {
        
            var sideTotalAmount = 0;
            var sideTotalCnt = 0;
            var sideStr = "";
            var sideVanCnt = 0;
            var cnt = 0;
            var pzcode = getRpzCode();
            
            if(action == ".btn-minus.side") {
                cnt = parseInt( obj.siblings(".setNum").val()) -1;
                if(cnt <= 0) cnt = 0;
                obj.siblings(".setNum").val(cnt);
            } else {
                if (obj.siblings(".setCode").val().substring(0, 8) == "SST251F1"	
                        || obj.siblings(".setCode").val().substring(0, 8) == "SST252F1"
                            || obj.siblings(".setCode").val().substring(0, 8) == "SST318F1"
                                || obj.siblings(".setCode").val().substring(0, 8) == "SST319F1"
                                    || obj.siblings(".setCode").val().substring(0, 8) == "SST329F1"){
                    if ("true" == "false") { // 비로그인
                        if(confirm("해당 상품은 로그인 후 구매 가능합니다.\n로그인 페이지로 이동하시겠습니까?")) {
                            location.href = "/global/login?returnUrl=/goods/detail"+encodeURIComponent(window.location.search);
                        }
                        return;
                    }else{
                        //사이드 콤보 개수
                        var sideComboCnt = 0;
                        $(".setNum.special_side.side_combo").each(function() {
                            sideComboCnt += parseInt($(this).val());
                        });
                        
                        //특가 제품 개수(마리오 포함)
                        var specialSideCnt =0;
                        $(".setNum.special_side").each(function() {
                            specialSideCnt += parseInt($(this).val());
                        });
                    
                        
                        if(obj.siblings(".setCode").val().substring(0, 8) == "SST329F1" && sideComboCnt == 0) {
                            if($("input[name=size]:checked").val() == 'M'){
                                alert("본 상품은 프리미엄 피자 (L) 구매 시 이용 가능합니다. (자세한 내용 이벤트 페이지 참고)");
                                return;
                            }
                            
                            if(specialSideCnt >= parseInt($(".opt_qty").val()) || specialSideCnt > 3) {
                                alert("본 상품은 프리미엄 피자 8종 (L) 한 판당 1회 (최대 4개) 이용 가능합니다.");
                                return;
                            }
                        }
                        
                        if(specialSideCnt >= parseInt($(".opt_qty").val()) || specialSideCnt > 3) {
                            alert("특가 상품은 해당 피자 한 판당 1회 (최대 4회) 이용 가능합니다.");
                            return;
                        }
                        
                        if(sideComboCnt >= parseInt($(".opt_qty").val()) || sideComboCnt > 3) {
                            alert("본 상품은 피자(M, L) 한 판당 1회 (최대 4회) 이용 가능합니다.");
                            return;
                        }					
                        cnt = parseInt( obj.siblings(".setNum").val()) +1;
                        obj.siblings(".setNum").val(cnt);
                    } 
                    
                } else {
                    cnt = parseInt( obj.siblings(".setNum").val()) +1;
                    obj.siblings(".setNum").val(cnt);
                }
            } 
            
            $(action).each(function() {
                // 리스트 토탈 카운트
                if($(this).siblings(".setNum").val() != "0") {
                    sideTotalCnt += parseInt($(this).siblings(".setNum").val());
                }
                // 사이드 반값 카운트
                if($(this).siblings(".setNum").val() != "0" && $(this).siblings(".setCode").val().substring(0, 8) == "SST264F1") {
                    sideVanCnt += parseInt($(this).siblings(".setNum").val());
                }
            });
        
            if(obj.siblings(".setCode").val().substring(0, 8) == "SST264F1") {
                if(sideVanCnt > parseInt($(".opt_qty").val()) || sideVanCnt > 4){
                    alert("특가 사이드디시는 피자 1판당 1회, 최대 4회까지 적용 가능합니다.");
                    cnt = parseInt( obj.siblings(".setNum").val()) -1;
                    
                    if(cnt <= 0) cnt = 0;
                    obj.siblings(".setNum").val(cnt);
                    sideTotalCnt -= 1;
                    sideVanCnt -= 1;
                }
            }
            
            $(action).each(function() {
                if($(this).siblings(".setNum").val() != "0") {
                    sideTotalAmount = 0;
                    sideTotalAmount += parseInt($(this).siblings(".setNum").val()) * parseInt($(this).siblings(".setPrice").val());
                    
                    if($(this).siblings(".setCode").val().substring(0, 8) == "SST264F1") {
                        sideStr += "<p>"+$(this).siblings(".setName").val()
                                + "(+"+$(this).siblings(".setPrice").val().cvtNumber()+"원)" + "x" 
                                + "<span class='sideCnt'>" + $(this).siblings(".setNum").val() + "</span>"
                                + "<input type='hidden' class='sideVan' value='" + $(this).siblings(".setNum").val() + "'></input>"
                                + "<input type='hidden' class='sideSum' value='" + sideTotalAmount + "'></input>"
                                + "</p>";
                    
                    } else {
                        sideStr += "<p>"+$(this).siblings(".setName").val() 
                                + "(+"+$(this).siblings(".setPrice").val().cvtNumber()+"원)" + "x" 
                                + "<span class='sideCnt'>" + $(this).siblings(".setNum").val() + "</span>"
                                + "<input type='hidden' class='sideSum' value='" + sideTotalAmount + "'></input>"
                                + "</p>";
                    }
                }
            });
            
            $(".total-side").html(sideStr);
        
            sum("side", obj);
        }
        
        </script>
        
        <!-- 사이드디시 특가 -->
        
        <!-- //사이드디시 특가 -->
        
        
        <!-- 사이드디시 일반 -->
        <div id="sidedish2" class="tab-content sidedelete">
            <div class="menu-list-v2">
                <ul>
                    <li>
                                <div class="prd-img">
                                    <img class="lazyload" src="https://cdn.dominos.co.kr/admin/upload/goods/20230801_rtUyBBZu.jpg" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20230801_rtUyBBZu.jpg" alt="맥앤치즈 볼">
                                </div>
                                
                                <div class="prd-cont">
                                    <div class="subject">[NEW] 맥앤치즈 볼</div>
                                    <div class="price-box">
                                        <strong>6,900</strong>
                                    </div>
                                    
                                    <div class="quantity-box">
                                        <button class="btn-minus side"></button>
                                        <input class="prmtIdx" type="hidden" value="0">
                                        <input class="setNum" type="number" value="0" readonly="">
                                        <input class="setName" type="hidden" value="맥앤치즈 볼">
                                        <input class="setCode" type="hidden" value="RSD212M1">
                                        <input class="setPrice" type="hidden" value="6900">
                                        <button class="btn-plus side"></button>
                                    </div>
                                </div>
                            </li>
                        <li>
                                <div class="prd-img">
                                    <img class="lazyload" src="https://cdn.dominos.co.kr/admin/upload/goods/20230801_LCDq07WL.jpg" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20230801_LCDq07WL.jpg" alt="페타크림 치즈 볼로네즈 파스타">
                                </div>
                                
                                <div class="prd-cont">
                                    <div class="subject">[NEW] 페타크림 치즈 볼로네즈 파스타</div>
                                    <div class="price-box">
                                        <strong>9,800</strong>
                                    </div>
                                    
                                    <div class="quantity-box">
                                        <button class="btn-minus side"></button>
                                        <input class="prmtIdx" type="hidden" value="0">
                                        <input class="setNum" type="number" value="0" readonly="">
                                        <input class="setName" type="hidden" value="페타크림 치즈 볼로네즈 파스타">
                                        <input class="setCode" type="hidden" value="RSD211M1">
                                        <input class="setPrice" type="hidden" value="9800">
                                        <button class="btn-plus side"></button>
                                    </div>
                                </div>
                            </li>
                        <li>
                                <div class="prd-img">
                                    <img class="lazyload" src="https://cdn.dominos.co.kr/admin/upload/goods/20230612_4a89CbKR.jpg" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20230612_4a89CbKR.jpg" alt="불고기 대파 크림치즈 파스타">
                                </div>
                                
                                <div class="prd-cont">
                                    <div class="subject">[NEW] 불고기 대파 크림치즈 파스타</div>
                                    <div class="price-box">
                                        <strong>8,800</strong>
                                    </div>
                                    
                                    <div class="quantity-box">
                                        <button class="btn-minus side"></button>
                                        <input class="prmtIdx" type="hidden" value="0">
                                        <input class="setNum" type="number" value="0" readonly="">
                                        <input class="setName" type="hidden" value="불고기 대파 크림치즈 파스타">
                                        <input class="setCode" type="hidden" value="RSD210M1">
                                        <input class="setPrice" type="hidden" value="8800">
                                        <button class="btn-plus side"></button>
                                    </div>
                                </div>
                            </li>
                        <li>
                                <div class="prd-img">
                                    <img class="lazyload" src="https://cdn.dominos.co.kr/admin/upload/goods/20230406_d2aTRZdV.jpg" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20230406_d2aTRZdV.jpg" alt="[도미노x슈퍼 마리오] 체다 치즈 치킨">
                                </div>
                                
                                <div class="prd-cont">
                                    <div class="subject">[NEW] [도미노x슈퍼 마리오] 체다 치즈 치킨</div>
                                    <div class="price-box">
                                        <strong>9,800</strong>
                                    </div>
                                    
                                    <div class="quantity-box">
                                        <button class="btn-minus side"></button>
                                        <input class="prmtIdx" type="hidden" value="0">
                                        <input class="setNum" type="number" value="0" readonly="">
                                        <input class="setName" type="hidden" value="[도미노x슈퍼 마리오] 체다 치즈 치킨">
                                        <input class="setCode" type="hidden" value="RSD209M1">
                                        <input class="setPrice" type="hidden" value="9800">
                                        <button class="btn-plus side"></button>
                                    </div>
                                </div>
                            </li>
                        <li>
                                <div class="prd-img">
                                    <img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20220304_114RUEW2.jpg" alt="웨스턴 핫 윙(8조각)">
                                </div>
                                
                                <div class="prd-cont">
                                    <div class="subject">[NEW] 웨스턴 핫 윙(8조각)</div>
                                    <div class="price-box">
                                        <strong>9,800</strong>
                                    </div>
                                    
                                    <div class="quantity-box">
                                        <button class="btn-minus side"></button>
                                        <input class="prmtIdx" type="hidden" value="0">
                                        <input class="setNum" type="number" value="0" readonly="">
                                        <input class="setName" type="hidden" value="웨스턴 핫 윙(8조각)">
                                        <input class="setCode" type="hidden" value="RSD192M1">
                                        <input class="setPrice" type="hidden" value="9800">
                                        <button class="btn-plus side"></button>
                                    </div>
                                </div>
                            </li>
                        <li>
                                <div class="prd-img">
                                    <img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20210601_5QFIlCC9.jpg" alt="베이컨 까르보나라 페투치니">
                                </div>
                                
                                <div class="prd-cont">
                                    <div class="subject">베이컨 까르보나라 페투치니</div>
                                    <div class="price-box">
                                        <strong>9,800</strong>
                                    </div>
                                    
                                    <div class="quantity-box">
                                        <button class="btn-minus side"></button>
                                        <input class="prmtIdx" type="hidden" value="0">
                                        <input class="setNum" type="number" value="0" readonly="">
                                        <input class="setName" type="hidden" value="베이컨 까르보나라 페투치니">
                                        <input class="setCode" type="hidden" value="RSD184M1">
                                        <input class="setPrice" type="hidden" value="9800">
                                        <button class="btn-plus side"></button>
                                    </div>
                                </div>
                            </li>
                        <li>
                                <div class="prd-img">
                                    <img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_oK536isq.jpg" alt="NEW 치즈 볼로네즈 스파게티">
                                </div>
                                
                                <div class="prd-cont">
                                    <div class="subject">NEW 치즈 볼로네즈 스파게티</div>
                                    <div class="price-box">
                                        <strong>9,800</strong>
                                    </div>
                                    
                                    <div class="quantity-box">
                                        <button class="btn-minus side"></button>
                                        <input class="prmtIdx" type="hidden" value="0">
                                        <input class="setNum" type="number" value="0" readonly="">
                                        <input class="setName" type="hidden" value="NEW 치즈 볼로네즈 스파게티">
                                        <input class="setCode" type="hidden" value="RSD031M1">
                                        <input class="setPrice" type="hidden" value="9800">
                                        <button class="btn-plus side"></button>
                                    </div>
                                </div>
                            </li>
                        <li>
                                <div class="prd-img">
                                    <img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20210601_wfgv03O0.jpg" alt="하프&amp;하프 파스타 (NEW 치즈 &amp; 베이컨 까르보나라)">
                                </div>
                                
                                <div class="prd-cont">
                                    <div class="subject">하프&amp;하프 파스타 (NEW 치즈 &amp; 베이컨 까르보나라)</div>
                                    <div class="price-box">
                                        <strong>10,800</strong>
                                    </div>
                                    
                                    <div class="quantity-box">
                                        <button class="btn-minus side"></button>
                                        <input class="prmtIdx" type="hidden" value="0">
                                        <input class="setNum" type="number" value="0" readonly="">
                                        <input class="setName" type="hidden" value="하프&amp;하프 파스타 (NEW 치즈 &amp; 베이컨 까르보나라)">
                                        <input class="setCode" type="hidden" value="RSD186M1">
                                        <input class="setPrice" type="hidden" value="10800">
                                        <button class="btn-plus side"></button>
                                    </div>
                                </div>
                            </li>
                        <li>
                                <div class="prd-img">
                                    <img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_oi9xdc8U.jpg" alt="도미노 코울슬로">
                                </div>
                                
                                <div class="prd-cont">
                                    <div class="subject">도미노 코울슬로</div>
                                    <div class="price-box">
                                        <strong>2,400</strong>
                                    </div>
                                    
                                    <div class="quantity-box">
                                        <button class="btn-minus side"></button>
                                        <input class="prmtIdx" type="hidden" value="0">
                                        <input class="setNum" type="number" value="0" readonly="">
                                        <input class="setName" type="hidden" value="도미노 코울슬로">
                                        <input class="setCode" type="hidden" value="RSD112P1">
                                        <input class="setPrice" type="hidden" value="2400">
                                        <button class="btn-plus side"></button>
                                    </div>
                                </div>
                            </li>
                        </ul>
            </div>
        </div>
        <!-- //사이드디시 일반 -->
        </div>
                                            <div class="step-wrap">
                                            <div class="title-wrap">
                                                <div class="title-type2">음료&amp;기타</div>
                                            </div>
                                            <script>
        function setEtcTotalCnt (obj, action) {
            var etcTotalAmount = 0;
            var etcTotalCnt = 0;
            var etcStr = "";
            etcTotalAmount = 0;
            etcTotalCnt = 0;
            var etcDrinkCnt = 0;
            var adultDrinkCnt = 0;
            var cnt = 0;
            var sideCnt = 0;
            
            if(action == ".btn-minus.etc") {
                cnt = parseInt( obj.siblings(".setNum").val()) -1;
                if(cnt <= 0) cnt = 0;
                obj.siblings(".setNum").val(cnt);
            } else {
                cnt = parseInt( obj.siblings(".setNum").val()) +1;
                obj.siblings(".setNum").val(cnt);
            }
            
            // 사이드 카운트
            $(".sideCnt").each(function() {
                sideCnt += parseInt($(this).text());
            });
            $(".sideVan").each(function() {
                sideCnt -= parseInt($(this).val());
            });
            $(".special_side").each(function() {
                sideCnt -= parseInt($(this).val());
            });
            
            $(action).each(function() {
                
                // 리스트 토탈 카운트
                if($(this).siblings(".setNum").val() != "0") {
                    etcTotalCnt += parseInt($(this).siblings(".setNum").val());
                }
                
                // 음료 토탈 카운트
                if($(this).siblings(".setNum").val() != "0" 
                    && ($(this).siblings(".setCode").val() == "RDK012L2" || $(this).siblings(".setCode").val() == "RDK013L2" || $(this).siblings(".setCode").val() == "RDK704L1"
                    || $(this).siblings(".setCode").val() == "RDK001L6" || $(this).siblings(".setCode").val() == "RDK001L7" || $(this).siblings(".setCode").val() == "RDK005L1"
                    || $(this).siblings(".setCode").val() == "RDK005L2" || $(this).siblings(".setCode").val() == "RDK003L1" || $(this).siblings(".setCode").val() == "RDK003L3"
                    || $(this).siblings(".setCode").val() == "RDK005L3" || $(this).siblings(".setCode").val() == "RDK028L1")) {
                    etcDrinkCnt += parseInt($(this).siblings(".setNum").val());
                } else if( $(this).siblings(".setNum").val() != "0"  && $(this).siblings(".setCode").val().substring(0, 3) == "RAL"){
                    adultDrinkCnt += parseInt($(this).siblings(".setNum").val());
                }
            });
            
            
                    if(obj.siblings(".setCode").val() == "RDK012L2" || obj.siblings(".setCode").val() == "RDK013L2" || obj.siblings(".setCode").val() == "RDK704L1"
                        || obj.siblings(".setCode").val() == "RDK001L6" || obj.siblings(".setCode").val() == "RDK001L7" || obj.siblings(".setCode").val() == "RDK005L1"
                        || obj.siblings(".setCode").val() == "RDK005L2" || obj.siblings(".setCode").val() == "RDK003L1" || obj.siblings(".setCode").val() == "RDK003L3"
                        || obj.siblings(".setCode").val() == "RDK005L3" || obj.siblings(".setCode").val() == "RDK028L1"
                    ) {
                    
                    var addressGubun = cookieManager.getCookie('ADDRESS_GUBUN');
                    if(addressGubun == '11' && etcDrinkCnt > 6){
                        alert("음료는 6개 까지 가능 합니다.");
                        cnt = parseInt( obj.siblings(".setNum").val()) -1;
                        
                        if(cnt <= 0) cnt = 0;
                        obj.siblings(".setNum").val(cnt);
                        etcTotalCnt -= 1;
                        etcDrinkCnt -= 1;
                        
                        $(action).each(function() {
                            if($(this).siblings(".setNum").val() != "0") {
                                etcTotalAmount = 0;
                                etcTotalAmount += parseInt($(this).siblings(".setNum").val()) * parseInt($(this).siblings(".setPrice").val());
                                
                                if($(this).siblings(".setNum").val() != "0" 
                                    && ($(this).siblings(".setCode").val() == "RDK012L2" || $(this).siblings(".setCode").val() == "RDK013L2" || $(this).siblings(".setCode").val() == "RDK704L1"
                                    || $(this).siblings(".setCode").val() == "RDK001L6" || $(this).siblings(".setCode").val() == "RDK001L7" || $(this).siblings(".setCode").val() == "RDK005L1"
                                    || $(this).siblings(".setCode").val() == "RDK005L2" || $(this).siblings(".setCode").val() == "RDK003L1" || $(this).siblings(".setCode").val() == "RDK003L3")) {
                                    
                                    etcStr += "<p>"+$(this).siblings(".setName").val() + "(+"+$(this).siblings(".setPrice").val().cvtNumber()+"원)" + "x" 
                                    + "<span class='etcCnt'>"+$(this).siblings(".setNum").val()+"</span>"+"<input type='hidden' class='etcDrink' value='"+$(this).siblings(".setNum").val()+"'></input>"
                                    +"<input type='hidden' class='etcSum' value='"+etcTotalAmount+"'></input>"+"</p>";
                                }else {
                                    etcStr += "<p>"+$(this).siblings(".setName").val() + "(+"+$(this).siblings(".setPrice").val().cvtNumber()+"원)" + "x" 
                                    + "<span class='etcCnt'>"+$(this).siblings(".setNum").val()+"</span>"
                                    +"<input type='hidden' class='etcSum' value='"+etcTotalAmount+"'></input>"+"</p>";
                                }
                            }
                        });
                    } else if(etcDrinkCnt > (parseInt($(".opt_qty").val())*2 + sideCnt)){
                        alert("음료는 피자 1판당 최대2개까지, 사이드디시 1개당 최대 1개까지 주문이 가능합니다.");
                        cnt = parseInt( obj.siblings(".setNum").val()) -1;
                        
                        if(cnt <= 0) cnt = 0;
                        obj.siblings(".setNum").val(cnt);
                        etcTotalCnt -= 1;
                        etcDrinkCnt -= 1;
                        
                        $(action).each(function() {
                            if($(this).siblings(".setNum").val() != "0") {
                                etcTotalAmount = 0;
                                etcTotalAmount += parseInt($(this).siblings(".setNum").val()) * parseInt($(this).siblings(".setPrice").val());
                                
                                if($(this).siblings(".setNum").val() != "0" 
                                    && ($(this).siblings(".setCode").val() == "RDK012L2" || $(this).siblings(".setCode").val() == "RDK013L2" || $(this).siblings(".setCode").val() == "RDK704L1"
                                    || $(this).siblings(".setCode").val() == "RDK001L6" || $(this).siblings(".setCode").val() == "RDK001L7" || $(this).siblings(".setCode").val() == "RDK005L1"
                                    || $(this).siblings(".setCode").val() == "RDK005L2" || $(this).siblings(".setCode").val() == "RDK003L1" || $(this).siblings(".setCode").val() == "RDK003L3")) {
                                    
                                    etcStr += "<p>"+$(this).siblings(".setName").val() + "(+"+$(this).siblings(".setPrice").val().cvtNumber()+"원)" + "x" 
                                    + "<span class='etcCnt'>"+$(this).siblings(".setNum").val()+"</span>"+"<input type='hidden' class='etcDrink' value='"+$(this).siblings(".setNum").val()+"'></input>"
                                    +"<input type='hidden' class='etcSum' value='"+etcTotalAmount+"'></input>"+"</p>";
                                }else {
                                    etcStr += "<p>"+$(this).siblings(".setName").val() + "(+"+$(this).siblings(".setPrice").val().cvtNumber()+"원)" + "x" 
                                    + "<span class='etcCnt'>"+$(this).siblings(".setNum").val()+"</span>"
                                    +"<input type='hidden' class='etcSum' value='"+etcTotalAmount+"'></input>"+"</p>";
                                }
                            }
                        });
                    } else {
                        $(action).each(function() {
                            if($(this).siblings(".setNum").val() != "0") {
                                etcTotalAmount = 0;
                                etcTotalAmount += parseInt($(this).siblings(".setNum").val()) * parseInt($(this).siblings(".setPrice").val());
                
                                if($(this).siblings(".setNum").val() != "0" 
                                    && ($(this).siblings(".setCode").val() == "RDK012L2" || $(this).siblings(".setCode").val() == "RDK013L2" || $(this).siblings(".setCode").val() == "RDK704L1"
                                    || $(this).siblings(".setCode").val() == "RDK001L6" || $(this).siblings(".setCode").val() == "RDK001L7" || $(this).siblings(".setCode").val() == "RDK005L1"
                                    || $(this).siblings(".setCode").val() == "RDK005L2" || $(this).siblings(".setCode").val() == "RDK003L1" || $(this).siblings(".setCode").val() == "RDK003L3")) {
                                    
                                    etcStr += "<p>"+$(this).siblings(".setName").val() + "(+"+$(this).siblings(".setPrice").val().cvtNumber()+"원)" + "x" 
                                    + "<span class='etcCnt'>"+$(this).siblings(".setNum").val()+"</span>"+"<input type='hidden' class='etcDrink' value='"+$(this).siblings(".setNum").val()+"'></input>"
                                    +"<input type='hidden' class='etcSum' value='"+etcTotalAmount+"'></input>"+"</p>";
                                }else {
                                    etcStr += "<p>"+$(this).siblings(".setName").val() + "(+"+$(this).siblings(".setPrice").val().cvtNumber()+"원)" + "x" 
                                    + "<span class='etcCnt'>"+$(this).siblings(".setNum").val()+"</span>"
                                    +"<input type='hidden' class='etcSum' value='"+etcTotalAmount+"'></input>"+"</p>";
                                }
                            }
                        });
                    }
                } else if(obj.siblings(".setCode").val().substring(0, 3) == "RAL"){//주류
                    //주류가 추가시 성인인지 구분
                    if(adultDrinkCnt > 0){
                        if("Y" == "Y"){
                            if("Y" == "Y"){
                                $(action).each(function() {
                                    if($(this).siblings(".setNum").val() != "0") {
                                        etcTotalAmount = 0;
                                        etcTotalAmount += parseInt($(this).siblings(".setNum").val()) * parseInt($(this).siblings(".setPrice").val());
                            
                                        etcStr += "<p>"+$(this).siblings(".setName").val() + "(+"+$(this).siblings(".setPrice").val().cvtNumber()+"원)" + "x" 
                                        + "<span class='etcCnt'>"+$(this).siblings(".setNum").val()+"</span>"
                                        +"<input type='hidden' class='etcSum' value='"+etcTotalAmount+"'></input>"+"</p>";
                                    }
                                });
                            }else{
                                alert("만 19세 미만은 주류 상품을 주문하실 수 없습니다.");
                                cnt = parseInt( obj.siblings(".setNum").val()) -1;
                                
                                if(cnt <= 0) cnt = 0;
                                obj.siblings(".setNum").val(cnt);
                                adultDrinkCnt -= 1;
                                adultDrinkCnt -= 1;
                                
                                $(action).each(function() {
                                    if($(this).siblings(".setNum").val() != "0") {
                                        etcTotalAmount = 0;
                                        etcTotalAmount += parseInt($(this).siblings(".setNum").val()) * parseInt($(this).siblings(".setPrice").val());
                                        etcStr += "<p>"+$(this).siblings(".setName").val() + "(+"+$(this).siblings(".setPrice").val().cvtNumber()+"원)" + "x" 
                                        + "<span class='etcCnt'>"+$(this).siblings(".setNum").val()+"</span>"
                                        +"<input type='hidden' class='etcSum' value='"+etcTotalAmount+"'></input>"+"</p>";
                                    }
                                });
                                
                            }
                        }else{
                            alert("주류 상품은 회원 가입 후 주문 가능합니다.");
                            cnt = parseInt( obj.siblings(".setNum").val()) -1;
                            
                            if(cnt <= 0) cnt = 0;
                            obj.siblings(".setNum").val(cnt);
                            adultDrinkCnt -= 1;
                            adultDrinkCnt -= 1;
                            
                            $(action).each(function() {
                                if($(this).siblings(".setNum").val() != "0") {
                                    etcTotalAmount = 0;
                                    etcTotalAmount += parseInt($(this).siblings(".setNum").val()) * parseInt($(this).siblings(".setPrice").val());
                                    etcStr += "<p>"+$(this).siblings(".setName").val() + "(+"+$(this).siblings(".setPrice").val().cvtNumber()+"원)" + "x" 
                                    + "<span class='etcCnt'>"+$(this).siblings(".setNum").val()+"</span>"
                                    +"<input type='hidden' class='etcSum' value='"+etcTotalAmount+"'></input>"+"</p>";
                                }
                            });
                        }
                    }
                }else {
                    // 음료 말고 소스
                    $(action).each(function() {
                        if($(this).siblings(".setNum").val() != "0") {
                            etcTotalAmount = 0;
                            etcTotalAmount += parseInt($(this).siblings(".setNum").val()) * parseInt($(this).siblings(".setPrice").val());
                
                            if($(this).siblings(".setNum").val() != "0" 
                                && ($(this).siblings(".setCode").val() == "RDK012L2" || $(this).siblings(".setCode").val() == "RDK013L2" || $(this).siblings(".setCode").val() == "RDK704L1"
                                || $(this).siblings(".setCode").val() == "RDK001L6" || $(this).siblings(".setCode").val() == "RDK001L7" || $(this).siblings(".setCode").val() == "RDK005L1"
                                || $(this).siblings(".setCode").val() == "RDK005L2" || $(this).siblings(".setCode").val() == "RDK003L1" || $(this).siblings(".setCode").val() == "RDK003L3")) {
                                
                                etcStr += "<p>"+$(this).siblings(".setName").val() + "(+"+$(this).siblings(".setPrice").val().cvtNumber()+"원)" + "x" 
                                + "<span class='etcCnt'>"+$(this).siblings(".setNum").val()+"</span>"+"<input type='hidden' class='etcDrink' value='"+$(this).siblings(".setNum").val()+"'></input>"
                                +"<input type='hidden' class='etcSum' value='"+etcTotalAmount+"'></input>"+"</p>";
                            }else {
                                etcStr += "<p>"+$(this).siblings(".setName").val() + "(+"+$(this).siblings(".setPrice").val().cvtNumber()+"원)" + "x" 
                                + "<span class='etcCnt'>"+$(this).siblings(".setNum").val()+"</span>"
                                +"<input type='hidden' class='etcSum' value='"+etcTotalAmount+"'></input>"+"</p>";
                            }
                        }
                    });
                }
                
                $(".total-etc").html(etcStr);
                
                sum();
                
        };
        </script>
        
        <div class="tab-content active etcdelete">
            <div class="menu-list-v2">
                <ul>
                    <li class="">
                                <div class="prd-img">
                                    <img class="lazyload" src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_xko4stGP.jpg" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_xko4stGP.jpg" alt="코카콜라 1.25L">
                                        </div>
                                
                                <div class="prd-cont">
                                    <div class="subject">코카콜라 1.25L</div>
                                    <div class="price-box">
                                        <strong>2,300</strong>
                                    </div>
                                    
                                    <div class="quantity-box">
                                        <button class="btn-minus etc"></button>
                                        <input class="setNum" type="number" value="0" name="drinkDisplayCnt" readonly="">
                                        <input class="setName" type="hidden" value="코카콜라 1.25L">
                                        <input class="setCode" type="hidden" value="RDK001L6">
                                        <input class="setPrice" type="hidden" value="2300">
                                        <button class="btn-plus etc"></button>
                                    </div>
                                </div>
                            </li>
                        <li class="cokeClass">
                                <div class="prd-img">
                                    <img class="lazyload" src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_2lmLufa0.jpg" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_2lmLufa0.jpg" alt="코카콜라 500ml">
                                        </div>
                                
                                <div class="prd-cont">
                                    <div class="subject">코카콜라 500ml</div>
                                    <div class="price-box">
                                        <strong>1,700</strong>
                                    </div>
                                    
                                    <div class="quantity-box">
                                        <button class="btn-minus etc"></button>
                                        <input class="setNum" type="number" value="0" name="drinkDisplayCnt" readonly="">
                                        <input class="setName" type="hidden" value="코카콜라 500ml">
                                        <input class="setCode" type="hidden" value="RDK001L7">
                                        <input class="setPrice" type="hidden" value="1700">
                                        <button class="btn-plus etc"></button>
                                    </div>
                                </div>
                            </li>
                        <li class="">
                                <div class="prd-img">
                                    <img class="lazyload" src="https://cdn.dominos.co.kr/admin/upload/goods/20220114_S1MbvZL1.jpg" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20220114_S1MbvZL1.jpg" alt="코카콜라 제로 1.25L">
                                        </div>
                                
                                <div class="prd-cont">
                                    <div class="subject">코카콜라 제로 1.25L</div>
                                    <div class="price-box">
                                        <strong>2,300</strong>
                                    </div>
                                    
                                    <div class="quantity-box">
                                        <button class="btn-minus etc"></button>
                                        <input class="setNum" type="number" value="0" name="drinkDisplayCnt" readonly="">
                                        <input class="setName" type="hidden" value="코카콜라 제로 1.25L">
                                        <input class="setCode" type="hidden" value="RDK005L3">
                                        <input class="setPrice" type="hidden" value="2300">
                                        <button class="btn-plus etc"></button>
                                    </div>
                                </div>
                            </li>
                        <li class="">
                                <div class="prd-img">
                                    <img class="lazyload" src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_Hllio1OV.jpg" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_Hllio1OV.jpg" alt="코카콜라 제로 500ml">
                                        </div>
                                
                                <div class="prd-cont">
                                    <div class="subject">코카콜라 제로 500ml</div>
                                    <div class="price-box">
                                        <strong>1,700</strong>
                                    </div>
                                    
                                    <div class="quantity-box">
                                        <button class="btn-minus etc"></button>
                                        <input class="setNum" type="number" value="0" name="drinkDisplayCnt" readonly="">
                                        <input class="setName" type="hidden" value="코카콜라 제로 500ml">
                                        <input class="setCode" type="hidden" value="RDK005L2">
                                        <input class="setPrice" type="hidden" value="1700">
                                        <button class="btn-plus etc"></button>
                                    </div>
                                </div>
                            </li>
                        <li class="">
                                <div class="prd-img">
                                    <img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_kr91ng5H.jpg" alt="스프라이트 1.5L">
                                        </div>
                                
                                <div class="prd-cont">
                                    <div class="subject">스프라이트 1.5L</div>
                                    <div class="price-box">
                                        <strong>2,400</strong>
                                    </div>
                                    
                                    <div class="quantity-box">
                                        <button class="btn-minus etc"></button>
                                        <input class="setNum" type="number" value="0" name="drinkDisplayCnt" readonly="">
                                        <input class="setName" type="hidden" value="스프라이트 1.5L">
                                        <input class="setCode" type="hidden" value="RDK003L1">
                                        <input class="setPrice" type="hidden" value="2400">
                                        <button class="btn-plus etc"></button>
                                    </div>
                                </div>
                            </li>
                        <li class="">
                                <div class="prd-img">
                                    <img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_aH0XAR71.jpg" alt="스프라이트 500ml">
                                        </div>
                                
                                <div class="prd-cont">
                                    <div class="subject">스프라이트 500ml</div>
                                    <div class="price-box">
                                        <strong>1,700</strong>
                                    </div>
                                    
                                    <div class="quantity-box">
                                        <button class="btn-minus etc"></button>
                                        <input class="setNum" type="number" value="0" name="drinkDisplayCnt" readonly="">
                                        <input class="setName" type="hidden" value="스프라이트 500ml">
                                        <input class="setCode" type="hidden" value="RDK003L3">
                                        <input class="setPrice" type="hidden" value="1700">
                                        <button class="btn-plus etc"></button>
                                    </div>
                                </div>
                            </li>
                        <li class="">
                                <div class="prd-img">
                                    <img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_ZiDHxA8U.jpg" alt="우리 피클 L">
                                        </div>
                                
                                <div class="prd-cont">
                                    <div class="subject">우리 피클 L</div>
                                    <div class="price-box">
                                        <strong>800</strong>
                                    </div>
                                    
                                    <div class="quantity-box">
                                        <button class="btn-minus etc"></button>
                                        <input class="setNum" type="number" value="0" name="drinkDisplayCnt" readonly="">
                                        <input class="setName" type="hidden" value="우리 피클 L">
                                        <input class="setCode" type="hidden" value="RSD152P1">
                                        <input class="setPrice" type="hidden" value="800">
                                        <button class="btn-plus etc"></button>
                                    </div>
                                </div>
                            </li>
                        <li class="">
                                <div class="prd-img">
                                    <img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_g5R87V5j.jpg" alt="우리 피클 M">
                                        </div>
                                
                                <div class="prd-cont">
                                    <div class="subject">우리 피클 M</div>
                                    <div class="price-box">
                                        <strong>500</strong>
                                    </div>
                                    
                                    <div class="quantity-box">
                                        <button class="btn-minus etc"></button>
                                        <input class="setNum" type="number" value="0" name="drinkDisplayCnt" readonly="">
                                        <input class="setName" type="hidden" value="우리 피클 M">
                                        <input class="setCode" type="hidden" value="RSD101P1">
                                        <input class="setPrice" type="hidden" value="500">
                                        <button class="btn-plus etc"></button>
                                    </div>
                                </div>
                            </li>
                        <li class="">
                                <div class="prd-img">
                                    <img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_H1ApYYz5.jpg" alt="갈릭 디핑 소스 15g">
                                        </div>
                                
                                <div class="prd-cont">
                                    <div class="subject">갈릭 디핑 소스 15g</div>
                                    <div class="price-box">
                                        <strong>200</strong>
                                    </div>
                                    
                                    <div class="quantity-box">
                                        <button class="btn-minus etc"></button>
                                        <input class="setNum" type="number" value="0" name="drinkDisplayCnt" readonly="">
                                        <input class="setName" type="hidden" value="갈릭 디핑 소스 15g">
                                        <input class="setCode" type="hidden" value="RSD088P1">
                                        <input class="setPrice" type="hidden" value="200">
                                        <button class="btn-plus etc"></button>
                                    </div>
                                </div>
                            </li>
                        <li class="">
                                <div class="prd-img">
                                    <img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_1uKUqRes.jpg" alt="핫소스">
                                        </div>
                                
                                <div class="prd-cont">
                                    <div class="subject">핫소스</div>
                                    <div class="price-box">
                                        <strong>100</strong>
                                    </div>
                                    
                                    <div class="quantity-box">
                                        <button class="btn-minus etc"></button>
                                        <input class="setNum" type="number" value="0" name="drinkDisplayCnt" readonly="">
                                        <input class="setName" type="hidden" value="핫소스">
                                        <input class="setCode" type="hidden" value="RSD017P1">
                                        <input class="setPrice" type="hidden" value="100">
                                        <button class="btn-plus etc"></button>
                                    </div>
                                </div>
                            </li>
                        </ul>
            </div>
        </div></div>
                                        
                                        </div>
                                    <!-- //주문 옵션 선택 -->
                                </div>
                            </div>
                            <div class="step-wrap step-order" style="position: fixed; bottom: 0px;">
                                <div class="order-wrap inner-box">
                                    <a href="#" class="btn-text-more" style="display: none;">전체보기</a>
                                        <dl class="pizza">
                                            <dt>피자</dt>
                                            <dd>
                                                <p class="total-pizza">치즈 크레이프 샌드/L(34,900원)x1</p>
                                                <ul class="list-text v2">
                                                    <li class="total-dough"><div>도우 : 샌드 도우(나폴리+씬 크러스트)</div></li>
                                                    <li class="total-edge" style="display: none;"></li>
                                                    <li class="total-topping"><div></div></li>
                                                </ul>
                                            </dd>
                                        </dl>
                                    <dl>
                                        <dt>사이드디시</dt>
                                        <dd>
                                            <div class="total-side">없음</div>
                                        </dd>
                                    </dl>
                                    <dl>
                                        <dt>음료 &amp; 기타</dt>
                                        <dd>
                                            <div class="total-etc">없음</div>
                                        </dd>
                                    </dl>
                                    <div class="total-price">
                                        <div id="login_order_btn">
                                            <span>총 금액</span>
                                            <strong class="total-price_sum">34,900원</strong>
                                            <div class="btn-wrap">
                                                <a id="btn_basket" href="javascript:;" class="btn-type">
                                                    주문하기
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </article>
                    </div>
                </div>

<!--
                <div class="pop-layer" id="pop-sidedish">
            <div class="dim"></div>

            
            <div class="pop-wrap">
                <div class="pop-title-wrap">
                    <h2 class="pop-title v2">특가 사이드디시 유의사항</h2>
                </div>
                <div class="pop-content">
                    <div class="title-wrap">
                        <div class="title-type2">사이드디시 25% 할인 프로모션 유의사항</div>
                    </div>
                    <div class="pop-text">
                        <ul class="list-text-v2">
                            <li>온라인(홈페이지, 모바일 웹, 어플) 주문 한해서 적용 가능</li>
                            <li>모든 피자 주문 시 사이드디시 25% 할인 프로모션 이용 가능 (마이키친, 세트 제외)</li>
                            <li>피자 1판 주문 시 1회에 한해 이용 가능 (1주문 당 최대 4회/ 단, 1+1 할인 이용 시 주문 당 1회 가능)</li>
                            <li>함께 주문하는 피자에 대해 제휴 및 쿠폰 등 여타 할인과 중복 할인 가능 (단, SKT T day, SKT 0 day, KT 달.달.혜택, KT VVIP, 하나SK패밀리/TOUCH 1, 현대M포인트, 삼성카드 보너스 포인트, 신한카드 하이포인트, 세트와는 중복 할인 불가)</li>
                            <li>미진행 매장 등 자세한 내용은 이벤트 페이지 참조</li>
                        </ul>
                    </div>
                    <div class="title-wrap v2">
                        <div class="title-type2">사이드 콤보 특가 유의사항</div>
                    </div>
                    <div class="pop-text">
                        <ul class="list-text-v2">
                            <li>오프라인(매장 및 전화) 및 온라인(홈페이지, 모바일 웹, 어플) 주문 모두 적용 가능</li>
                            <li>피자 1판 주문 시 1회에 한해 이용 가능 (1주문 당 최대 4회)</li>
                            <li>함께 주문하는 피자에 대해 제휴 및 쿠폰 등 여타 할인과 중복 할인 가능 (단, SKT T-DAY, SKT 0 day, 1+1, KT 50% 할인, KT VVIP, 하나SK패밀리/TOUCH 1, 현대M포인트, 삼성카드 보너스포인트, 신한카드 하이포인트, 세트와는 중복 불가)</li>
                            <li>자세한 내용은 이벤트 페이지 참조</li>
                        </ul>
                    </div>
                </div>
                <a href="#" class="btn-close"></a>
            </div>
        
        </div><link rel="stylesheet" type="text/css" href="https://cdn.dominos.co.kr/domino/pc/css/as_is.css">
    -->
        
    
        
        <script type="text/javascript">
        var curUrl = location.href.split("?")[0];
        if (curUrl.indexOf("hnh") > -1 || curUrl.indexOf("mykitchen") > -1) {
            $("#pop-dough2 .pop-title").text("도우/엣지의 특징");
        } else {
            $("#edge_info").hide();
        }
        </script>
        

        
        <!-- 팝업-메뉴 상세보기 -->
        <script>
        function getDetailSlide(code_01,dsp_ctgr){
            $.ajax({
                url: '/goods/detailSlide',
                type: 'get',
                data: {
                    "code_01" : code_01,
                    "dsp_ctgr" : dsp_ctgr
                },
                success: function(data) {
                    $("#detail_main_slide").html(data);
                    getDetail(code_01,dsp_ctgr);
                },
                error: function (error){
                    alert("다시 시도해주세요.");
                }
            })
        }
        
        function getDetail(code_01,dsp_ctgr){
        
            $.ajax({
                url: '/goods/detailAjax',
                type: 'get',
                data: {
                    "code_01" : code_01,
                    "dsp_ctgr" : dsp_ctgr
                },
                
                success: function(data) {
                    UI.layerPopUp({selId:'#pop-menu-detail'});
                    $(".menu-name").text(data.resultData.detail.name);
                    $(".detail_topping").text(data.resultData.detail.topping);
                    $(".detail_origin").text(data.resultData.detail.origin);
                    $(".detail_contents").html(data.resultData.detail.w_contents);
                    $(".hide_code").val(data.resultData.detail.code_01);
        // 			
                    if(code_01 == "RPZ215TL"){
                        $(".btn_order a").attr("href","/hotdeal/xmas2020");
                    }else if(code_01 == "SST544D1"){//할로윈팩
                        $(".btn_order a").attr("href","/hotdeal/specialSetTemplet2?goodsCode=SST544D1");//할로윈팩 주문하기 url
                        $(".btn-wrap2 a").eq(2).hide();//할로윈팩 피자스토리 숨김처리
                    }else{
                        $(".btn_order a").attr("href","detail?dsp_ctgr="+dsp_ctgr+"&code_01="+code_01+"&dough_gb=203");
                    }
                    
                    if(code_01  == 'RPZ255RM'){
                        $(".btn-wrap2 a").eq(2).hide();//패티멜트크림토마토피자라이스볼 피자스토리 숨김처리
                    }
                    
                    //$(".zoom-wrap").html("<img src=https://cdn.dominos.co.kr/admin/upload/goods/"+data.resultData.detail.file_nm1+" alt="+data.resultData.detail.name+" class='img-zoom' />");
                                
                    $(".img-zoom-big").attr("src", "https://cdn.dominos.co.kr/admin/upload/goods/"+data.resultData.detail.file_nm1);
                    $(".img-zoom-big1").attr("src", "https://cdn.dominos.co.kr/admin/upload/goods/"+data.resultData.detail.file_nm1);
                    $(".menu-big .zoomImg").attr("src", "https://cdn.dominos.co.kr/admin/upload/goods/"+data.resultData.detail.file_nm1);
                    
                    if(data.resultData.detail.file_nm2 != "" && data.resultData.detail.file_nm2 != null){
                        $(".subimg2").show();
                        $(".img-zoom-big2").attr("src", "https://cdn.dominos.co.kr/admin/upload/goods/"+data.resultData.detail.file_nm2);
                    }else {
                        $(".subimg2").hide();
                    }
                    
                    if(data.resultData.detail.file_nm3 != "" && data.resultData.detail.file_nm3 != null){
                        $(".subimg3").show();
                        $(".img-zoom-big3").attr("src", "https://cdn.dominos.co.kr/admin/upload/goods/"+data.resultData.detail.file_nm3);
                    }else {
                        $(".subimg3").hide();
                    }
                }
            });
        }
        
        
        
        
        </script>
        <!-- 팝업-메뉴 상세보기 -->
       
    

        <!-- //팝업-메뉴 상세보기 -->
        
        
        <!--팝업-확대 이미지 -->
        <!-- <div class="pop-layer pop-full" id="pop-zoom">
            <div class="pop-wrap">
                <div class="pop-title-wrap">
                    <h2 class="pop-title">확대</h2>
                </div>
                <div class="pop-content">
                    <div class="zoom-wrap">
                        <img src="https://cdn.dominos.co.kr/admin/upload/goods/20190529_PrpQRpBP.jpg" alt="블랙타이거 슈림프1" class="img-zoom" />
                    </div>
                </div>
                <a href="#" class="btn-close"></a>
            </div>
        </div> -->
        
        
        <!--//팝업-확대 이미지 -->
        <script src="https://cdn.dominos.co.kr/domino/pc/js/jquery.zoom.min.js"></script>
        <script>
            $(function () {
                $('.menu-thumb .item a').on('click', function (e) {
                    e.preventDefault();
                    $('.menu-thumb .item').removeClass('active');
                    $(this).closest('.item').addClass('active');
        
                    var src = $(this).find("img").attr("src");
                    $(".menu-big > img").attr("src", src);
                    $(".menu-big .zoomImg").attr("src", src);
                    
                });
            });
        
            $('.zoom-wrap').each(function () {
                $('#zoom').zoom({
                    on: 'click',
                    magnify: 2
                });
            });
        </script>
        <!-- 피자 스토리  -->
        <div class="pop-layer" id="pop-story"></div>
        <!-- 피자 스토리  -->
        
        <!-- 영양성분 및 알레르기 유발성분  -->
        <div class="pop-layer pop-full" id="pop-allergy"></div>
        <!-- 영양성분 및 알레르기 유발성분  -->
        
        
            <!-- //content -->
            <div id="footer"></div>
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