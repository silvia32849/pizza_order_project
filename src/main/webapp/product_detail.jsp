<%@page import="java.text.DecimalFormat"%>
<%@page import="com.itwill.pizza.product.Product"%>

<%@page import="com.itwill.pizza.product.ProductService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

String noStr = request.getParameter("product_no");
if(noStr ==null || noStr.equals("")){
	response.sendRedirect("product_list.jsp");
	return;
}
boolean isLogin=false;
if(session.getAttribute("userId")!=null){
	isLogin=true;
}
ProductService ps = new ProductService();
Product product= ps.productDetail(Integer.parseInt(noStr));
if(product==null) {
	out.println("<script>");
	out.println("alert('잘못된 요청입니다.');");
	out.println("location.href='product_list.jsp';");
	out.println("</script>");
	return;
}%>

<!DOCTYPE HTML>
<html lang="ko">
<head>
<script type="text/javascript" >
function add_cart(){
	if (<%=!isLogin%>) {
		alert('로그인 하세요');
		location.href = 'user_login_form.jsp';
		return false;
	}
	return true;
}
function add_cart_popup_window(){
	if (<%=!isLogin%>) {
		alert('로그인 하세요');
		location.href = 'user_login_form.jsp';
	} else {
		
		var left = Math.ceil(( window.screen.width)/5);
		var top = Math.ceil(( window.screen.height)/3); 
		console.log(left);
		console.log(top);
		var cartWin = window.open("about:blank","cartForm","width=260,height=130,top="+top+",left="+0+",location=no, directories=no, status=no, menubar=no, scrollbars=no,copyhistory=no");
		document.add_cart_form.action = 'cart_add_action_popup_window.jsp';
		document.add_cart_form.target = 'cartForm';
		document.add_cart_form.method = 'POST';
		document.add_cart_form.submit();
	}
}
/*
제품상세보기에서주문
*/
function order_create_form() {
	if (<%=!isLogin%>) {
		alert('로그인 하세요');
		location.href = 'user_login_form.jsp';
	} else {
		document.product_detail_form.method = 'POST';
		document.product_detail_form.action = 'order_create_form.jsp';
		document.product_detail_form.submit();
	}
}
function productList() {
	location.href = 'product_list.jsp';
}

</script>
	<meta charset="euc-kr">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" id="viewport" content="width=1119px, user-scalable=yes">
	<meta http-equiv='cache-control' content='no-cache'>
	<meta http-equiv='expires' content='0'>
	<meta http-equiv='pragma' content='no-cache'>
	<meta http-equiv='Cache-Control' content='no-cache'>
	<!-- 사용자지정 태그 -->
	<meta name="description" content="<%=product.getProduct_desc() %>" />
<meta name="title" content="<%=product.getProduct_name() %>- 책을 피자" />
<title><%=product.getProduct_name() %> - 책을 피자</title>
<meta property="og:type" content="website" />
<meta property="og:title" content="<%=product.getProduct_name() %> - 책을 피자" />
<meta property="og:site_name" content="책을 피자" />
<meta property="og:image" content="<%=product.getProduct_image() %>" />
<meta property="og:image:width" content="270" />
<meta property="og:image:height" content="270" />
<meta property="og:description" content="<%=product.getProduct_desc() %>" />
<meta property="og:url" content="product_detail.jsp" />
<meta name="twitter:card" content="app" />
<meta name="twitter:title" content="<%=product.getProduct_name() %> - 책을 피자" />
<meta name="twitter:image" content="<%=product.getProduct_image() %>" />
<meta name="twitter:description" content="<%=product.getProduct_desc() %>" />
<meta name="twitter:url" content="/goods/detail" />
<meta name="twitter:site" content="@dominostory" />
<meta name="twitter:description" content="<%=product.getProduct_desc() %>" />
<meta name="twitter:app:name:iphone" content="책을 피자" />
<meta name="twitter:app:id:iphone" content="371008429" />
<meta name="twitter:app:url:iphone" content="<%=product.getProduct_image() %>" />
<meta name="twitter:app:name:ipad" content="책을피자" />
<meta name="twitter:app:id:ipad" content="371008429" />
<meta name="twitter:app:url:ipad" content="<%=product.getProduct_image() %>" />
<meta name="twitter:app:name:googleplay" content="책을피자" />
<meta name="twitter:app:id:googleplay" content="kr.co.d2.dominos" />
<meta name="twitter:app:url:googleplay" content="https://play.google.com/store/apps/details?id=kr.co.d2.dominos" />
<meta property="al:web:url" content="https://web.dominos.co.kr" />
<meta property="al:android:app_name" content="도미노피자" />
<meta property="al:android:package" content="kr.co.d2.dominos" />
<meta property="al:android:url" content="https://play.google.com/store/apps/details?id=kr.co.d2.dominos" />
<meta property="al:ios:app_name" content="도미노피자" />
<meta property="al:ios:app_store_id" content="371008429" />
<meta property="al:ios:url" content="https://itunes.apple.com/kr/app/id371008429" /><link rel="shortcut icon" href="https://cdn.dominos.co.kr/renewal2018/w/img/favicon.ico"/>
	<!-- <link rel="stylesheet" type="text/css" href="/resources/css/font.css"> --> <!-- 20191202 주석 -->
	<!-- 20191204 주석 -->
	
	<script type="text/javascript" src="https://cdn.dominos.co.kr/domino/resource/jquery1.11.1.js"></script>
	
	<script type="text/javascript" src="https://cdn.dominos.co.kr/renewal2018/w/js/jquery.flexslider.js" integrity="sha256-E9mvQ6It7Aq1wvVS/rrTV/9BOvKTpunpzUQQVWRMdSA=" crossorigin="anonymous"></script>
	<script type="text/javascript" src="https://cdn.dominos.co.kr/domino/resource/selectbox.js"></script><!-- js 수정함. -->
	<script type="text/javascript" src="https://cdn.dominos.co.kr/domino/resource/d2CommonUtil.js?ver=1.5"></script>
	<script type="text/javascript" src="https://cdn.dominos.co.kr/domino/resource/Cookie.js"></script>
	<script type="text/javascript" src="https://cdn.dominos.co.kr/renewal2018/w/js/basket_w.js?ver=1.5"></script>
	
	
	<!-- 리뉴얼 적용 2019.12.02 -->
	<link rel="stylesheet" type="text/css" href="https://cdn.dominos.co.kr/domino/asset/css/font.css"> 
	<link rel="stylesheet" type="text/css" href="https://cdn.dominos.co.kr/domino/pc/css/common.css"> 
	<link rel="stylesheet" type="text/css" href="/resources/css/ol.css"> <!--메인에는 sub.css 호출하지않음-->
	<link rel="stylesheet" type="text/css" href="https://cdn.dominos.co.kr/domino/pc/css/sub.css">
	<!--//메인에는 sub.css 호출하지않음  -->

	<script src="https://cdn.dominos.co.kr/domino/asset/js/jquery-3.1.1.min.js" integrity="sha256-cNrkaflPIUtYnVNSG5A4MKCLT7WJ1HpMJpqDx5EWiGo=" crossorigin="anonymous"></script>
	<script src="https://cdn.dominos.co.kr/domino/asset/js/slick.js" integrity="sha256-1gDsGcL/mf9bomEXFPinwG4SG0I6FjA2J91pWU29WF8=" crossorigin="anonymous"></script>
	<script src="https://cdn.dominos.co.kr/domino/asset/js/TweenMax.min.js" integrity="sha256-AJvwDTgx+2JZWtsg4XDtKI2KFXST+2AosYiLBYde2PM=" crossorigin="anonymous"></script>
	<script src="https://cdn.dominos.co.kr/domino/asset/js/lazyload.js" integrity="sha256-h0ytEAJzE/NiCncNSjODaYM+1bORPweTy4UANhsZ5uo=" crossorigin="anonymous"></script>
	
	<script src="https://cdn.dominos.co.kr/domino/pc/js/ui.js"></script>
	<script type="text/javascript" src="https://cdn.dominos.co.kr/domino/resource/gcenmaps/gcenmap.js"></script><script type="text/javascript" src="https://cdn.dominos.co.kr/domino/resource/ol.js"></script> <!--서브에는 main.js 호출하지않음-->
	<!--//서브에는 main.js 호출하지않음-->
	<!-- //리뉴얼 적용 2019.12.02 -->
	
	<script type="text/javascript">

	/*gps lsm 전역변수 */
	var lat;
	var lon;
	var xdot;
	var ydot;
	var address;
	var gps_yn;
	
	var CON_DOMAIN_URL = "http://web.dominos.co.kr";
	var CON_SSL_URL = "https://web.dominos.co.kr";
	var CON_STATIC_URL = "https://cdn.dominos.co.kr/renewal2018/w";
	function goLink(menuCode, link) {
		location.href = link;
	}
	$(document).ready(function() {
		$.ajaxSetup({cache:false});

		setBasketCnt();

		// 주문&주문트레커 조회(가입회원/인증회원)
		/*  */
		  
		//상단 영문사이트 바로가기 버튼
		$(".select-type2.language").change(function() {
			location.href = $("#select-type2").val();
		});
		
		if("" == "Y"){
			$(".qnaForm-title").html("1:1문의/칭찬");
		} 
	});

	function qnaFormConfirm(){
		if("" == "Y"){
	        location.href = "/mypage/qustionList";
	    }else{
			location.href = "/bbs/qnaForm";
	    }
	}
	
	function setBasketCnt() {
		var basketCnt = cookieManager.getCookie("BASKETCNT");
		var basket = cookieManager.getCookie("BASKET");
		var finish_basket = cookieManager.getCookie("FINISH_BASKET");

		if(basketCnt == "") basketCnt = "0";
		else if(basket != "" && basket == finish_basket) basketCnt = "0";
		
		if(basketCnt != "0"){ 
			$(".btn-cart > strong ").addClass("cart-count");
			$(".cart-count").text(basketCnt);
		}else{
			$(".btn-cart > strong").removeClass("cart-count");
		}
	}

	var goCart = function() {
		location.href="/basket/detail";
	};

	var doLogin = function() {
		location.href="/global/login";
	};

	var myOrderDetail = function() {
		var order_no = $('#tracker_order_no').val();
		location.href="/mypage/myOrderView?order_no="+order_no+"&pageNo=1";
	};
	
	//페이코 회원 가입
	function goLoginPop() 
	{
		if(location.pathname !== '/global/login')
			location.href = '/global/login';
	}
	
	var goPresentLogin = function(gubun) {
		var rtnUrl = "/voucher/list?gubun="+gubun;
		if("false" == "true"){
			location.href = rtnUrl;
		}else{
			location.href = "/global/login?returnUrl="+rtnUrl;	
		}
	};
	
	function appendLocation(paramArr) {
		var simpleAddress;
		
		gps_yn = 'Y';
		
		if (paramArr == null || paramArr.length == 0){
			return;
		}
		
		$.ajax({
		    type: "GET",
		    url: "/gis/getXyAddressAjax",
		    data: paramArr.join('&'),
		    
		    success:function(data) {
		        $('#myloc').html("");
		        
		        if(data.resultData.result.length > 0) {
		        	var html = '';
					html += '<div class="tip-box center" id="tip-box">';
					html += '<p>주변 매장의 프로모션을 확인해보세요!</p>';
					html += '</div>';
					
					$("#tip-box-top").append(html);
					$("#tip-box").delay(2000).fadeOut(1000);
					
		       		$.each(data.resultData.result, function(i, v) {
		       			if(v.roadaddr === ''){
		       				simpleAddress = v.sggname+' '+v.bemdname+' '+v.jbmain+(v.jbsub=='0'?'':'-'+v.jbsub);
		       				$('#myloc').html(simpleAddress);
		       				lat = v.lat;
		       				lon = v.lon;
		       				xdot = v.kx;
		       				ydot = v.ky;
		       				address = simpleAddress;
		       				
		       			}else{
		       				simpleAddress = v.roadname+' '+v.bdmain+(v.bdsub=='0'?'':'-'+v.bdsub);
		       				$('#myloc').html(simpleAddress);
		       				lat = v.lat;
		       				lon = v.lon;
		       				xdot = v.kx;
		       				ydot = v.ky;
		       				address = simpleAddress;
		       			}
		       		});
		   	    }else {
		       		 $('#myloc').html("주변 매장의 프로모션이 궁금하시면, 위치 서비스를 허용해주세요.");
		    	}
		    },
		    error: function (error){
		        alert("다시 시도해주세요.");
		    }
		    
		});
	}
	
	//현재 위치 받아오기

	var geo = {
		init : function() { 
			
			if ('geolocation' in navigator) {
				/* 지오로케이션 사용 가능 */
				navigator.geolocation.getCurrentPosition(geo.success, geo.error);
				
			} else {
				/* 지오로케이션 사용 불가능 */
				alert('geolocationx');
				alert('사용자의 브라우저는 지오로케이션을 지원하지 않습니다.');

				//geo.changeTab();
			}
		},
		success : function(position) {

			var latitude  = position.coords.latitude;
		    var longitude = position.coords.longitude;
		  	// console.log('<p>위도 : ' + latitude + '° <br>경도 : ' + longitude + '°</p>');

		    findLocation(latitude, longitude);
		},
		error : function(err) {
			
			var userAgent = navigator.userAgent.toString();

			if(/iPad|iPhone|iPod/.test(userAgent) && !window.MSStream){ // iOS
				alert('아이폰 > 설정 >개인정보보호 > 위치서비스 > 도미노피자 항목의 위치접근허용을 체크해주세요.');
				return;
			} else {
				//alert('위치접근허용을 승인해주세요.');
				$('#myloc').html('주변 매장의 프로모션을 확인해보세요!');
				return;
				/* var latitude  = '37.539465';
				var longitude = '127.052185';

				findLocation(latitude,longitude);
				gps_yn = 'Y'; */
			}
		}
	}



	function findLocation(lat,lon) {
		//if (!!!optn) return;

		// 검색 파라미터 설정
		var paramArr = [];	
		paramArr[0] = 'lat=' + lat;
		paramArr[1] = 'lon=' + lon;
		
		appendLocation(paramArr);
	}
	
	function gpsLsm(gps_yn){
		if(gps_yn == 'Y'){
			address = encodeURIComponent(address);
			UI.layerPopUp({selId:'#pop-lsm', url:'/branch/gpsLsm', data:{lon:lon, lat:lat, xdot:xdot, ydot:ydot, address:address}});
			address = decodeURIComponent(address);
			_trk_call();
		}else{
			alert('위치접근허용을 승인해주세요.');	
		}
	}
	
	var _trk_call = function () {
	    // 트래킹
		var _trk_url = document.baseURI + '&_TRK_PI=WP_1P&_TRK_CP=LSM 팝업';
	    try {
	       	_trk_code_base = _trk_code_base.replace(/(du=).*?(&)/,'$1' + escape(_trk_url) + '$2');
	        _trk_flashEnvView("_TRK_PI=WP_1P","_TRK_CP=LSM 팝업");
	        /* console.log('TRK WEB_3_2 DONE!!'); */
	    } catch (e) {
	    	console.log(e.message);
	    }
		
	}
</script>
<!-- Set AdBrix Web SDK -->
	<script>!function(e,r){if(void 0!==e&&!e.adbrix){var o={queue:[]},t=navigator.userAgent.toLowerCase(),c=r.createElement("script"),a="Netscape"===navigator.appName&&-1!==navigator.userAgent.search("Trident")||-1!==t.indexOf("msie")?"abx-web-sdk.ie.min.js":"abx-web-sdk.min.js";c.type="text/javascript",c.async=!0,c.src="//static.adbrix.io/web-sdk/latest/"+a,c.onload=function(){e.adbrix.runQueuedFunctions?e.adbrix.runQueuedFunctions():console.log("[adbrix] Error: could not load SDK")};var i=r.getElementsByTagName("script")[0];i.parentNode.insertBefore(c,i);["init","onInitialized","login","getUserId","logout","userProperty.get","userProperty.getAll","userProperty.addOrUpdate","userProperty.remove","userProperty.removes","common.signUp","common.invite","common.useCredit","common.purchase","event.send","debug.traceListener","commerceAttr.categories","commerceAttr.product","commerce.viewHome","commerce.categoryView","commerce.productView","commerce.addToCart","commerce.addToWishList","commerce.reviewOrder","commerce.refund","commerce.search","commerce.share","commerce.listView","commerce.cartView","commerce.paymentInfoAdded","game.tutorialComplete","game.characterCreated","game.stageCleared","game.levelAchieved"].forEach(function(e){var r=e.split("."),t=r.pop();r.reduce(function(e,r){return e[r]=e[r]||{}},o)[t]=function(){o.queue.push([e,arguments])}}),e.adbrix=o}}(window,document);
	</script>
	
	<!-- AdBrix Web SDK init -->
	<script>
	window.adbrix.init({
	appkey: 'iKSRi1xdMES5FzDWh7bbwg',
	webSecretkey: 'mdcoW2QIKk6dHm2g3pew4g'
	});
	</script>
	<!-- End AdBrix Web SDK -->

	<!-- Google Tag Manager -->
	<script>
	(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
	new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
	j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
	'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
	})(window,document,'script','dataLayer','GTM-N52VV58');
	</script>
	<!-- End Google Tag Manager -->

</head>
<body>
	<!-- top_event_bnr -->
	<!-- <div class="top_bnr top_event" id="lineBanner">
		<div class="top_event_wrap">
			<a href="javascript:;" class="btn_ico btn_event_close" onclick="lineBannerClose(); return false;">close</a>
		</div>
	</div> -->
	<!-- //top_event_bnr -->
  <div id="wrap">
	<header id="header">
			
			<div class="top-wrap">
				<div class="inner-box" id="tip-box-top">
					<a href="/main" class="btn-logo">
						<i class="ico-logo"></i>
						<h1 class="hidden">도미노피자</h1>
					</a>
					
					<div class="util-nav">
						<a href="/global/login">로그인</a>
								<a href="/global/login?L=L">회원가입</a>
							<!--2020-03-17 추가(s)-->
		                <a href="javascript:void(0);" class="lang">
		                    <div class="select-type2 language">
		                    	<select id="select-type2">
									<option value="/main?locale=ko">KOR</option>
									<option value="/main?locale=en">ENG</option>
								</select>
		                    </div>
		                </a>
		                <!--2020-03-17 추가(e)-->
					</div>
				</div>
			</div>
				
			<!-- main 1dep menu -->
			<div id="gnb" class="gnb-wrap">
				<div class="gnb-inner">
					<ul>
						<li class="active">
							<a href="/goods/list?dsp_ctgr=C0101"><span>메뉴</span></a>
						</li>
						<li>
							<a href="/ecoupon/main"><span>e-쿠폰</span></a>
						</li>
						<li>
							<a href="/voucher/list?gubun=M"><span>상품권 선물</span></a>
						</li>
						<li>
							<a href="/event/list?gubun=E0200"><span>이벤트&middot;제휴</span></a>
						</li>
						<li>
							<a href="/branch"><span>매장검색</span></a>
						</li>
						<li>
							<a href="/company/contents/chainstore1"><span>가맹점 모집</span></a>
						</li>
					</ul>
					<a href="javascript:void(0);" class="snb-more">더보기</a>
				</div>
				
				<div class="snb-wrap">
					<div class="inner-box">
						<div class="mnu-wrap">
							<div class="mnu-box">
								<a href="/event/mania">도미노 서비스</a>
								<ul>
									<li><a href="/event/mania">매니아 혜택</a></li>
									<li><a href="/goods/dominosMoment">도미노 모멘트</a></li>
									<li><a href="/quickOrder/index">퀵오더</a></li>
									<li><a href="/order/groupOrder">단체주문 서비스</a></li>
								</ul>
							</div>
							<div class="mnu-box">
								<a href="/bbs/faqList?view_gubun=W&bbs_cd=online">고객센터</a>
								<ul>
									<li><a href="/bbs/faqList">자주하는 질문</a></li>
									<li><a href="#" onclick="qnaFormConfirm();"><span class="qnaForm-title">문의/칭찬하기</span></a></li>
									<li><a href="/bbs/qnaListGate" ><span class="qnaForm-title">문의 내역/답변</span></a></li></ul>
							</div>
							<div class="mnu-box">
								<a href="/company/contents/overview">회사소개</a>
								<ul>
									<li><a href="/company/contents/overview">한국도미노피자</a></li>
									<li><a href="/company/tvcfList">광고갤러리</a></li>
									<li><a href="/company/contents/society">사회공헌활동</a></li>
									<li><a href="/company/contents/chainstore1">가맹점 모집</a></li>
									<li><a href="/company/jobList?type=R">인재채용</a></li>
								</ul>
							</div>
						</div>
						<div class="notice-box">
							<a href="/bbs/newsList?type=N">공지사항</a>
							<ul>
								<li><a href="/bbs/newsList?type=N">도미노뉴스</a></li>
								<li><a href="/bbs/newsList?type=P">보도자료</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- //main 1dep menu -->
		</header><!-- //header -->
	<script type="text/javascript" src="/resources/js/doughOptions.js?ver=0.1"></script> <!-- 도우&엣지 정보 -->
<script>
var ajaxRequest = null;
var branchCode = ""; 

$(document).ready(function() {

	setDoughOption();
	
	$("#btn_basket").click(function() {
		if (branchCode != 86578) { // 잠실야구장점 제외
			if(ajaxRequest != null) {
				alert("처리중인 작업이 있습니다. 잠시후에 다시 시도해 주세요.");
				return;
			}
			toppingValidate();
		}
		
		sideValidate();
	});

	
	$("img.lazyload").lazyload(); 
	
	$("#wrap").addClass("fixed_clear");
	
	// 상품 슬라이드
	$('.menu-slider-view2').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: false,
		dots: true,
	});
	
	//전체보기
	$('.btn-text-more').on('click',function(e){
		e.preventDefault();
		if($(this).closest('.step-order').hasClass('active')){
			$(this).closest('.step-order').removeClass('active');
			$(this).removeClass('active');
		}else{
			$(this).addClass('active');
			$(this).closest('.step-order').addClass('active');
		}
		var stepHeight = $('.step-order').innerHeight();
	});
	
	
	var stepHeight = $('.step-order').innerHeight();
	if ($(".step-order").length == 1) {
		var lastScrollTop = 0;
		$(window).scroll(function (e) {
			e.preventDefault();
			var $footer = $('#footer'),
				$stepOrder = $('.step-order'),
				winScrT = $(window).scrollTop(),
				totH = winScrT + $(window).height(),
				footerTop = $footer.offset().top;

			var st = $(this).scrollTop();
			if (st > lastScrollTop) {
				// down scroll
				//console.log("down");
			} else {
				// up scroll
				//console.log("up");
				$stepOrder.css({
					'position': 'fixed',
					'bottom' : '0'
				});
			}
			lastScrollTop = st;

			//위치
			if (totH >= footerTop) {
				$(".sub-type.menu").css({'padding-bottom': stepHeight+100});
				
			} else {
				$(".sub-type.menu").css({'padding-bottom': '100px'});
			}

			if (totH >= footerTop + 100) {
				$stepOrder.css({
					'position': 'absolute',
					'bottom':-(stepHeight+100)
				});
			}
		});
	}

	$(".btn-minus.goods").click(function() {
		var cnt = parseInt($("#qty").val()) - 1;
		if(cnt <= 0) cnt = 1;
		
		$(".opt_qty").val(cnt);
		setTotalAmt();
	});
	
	$(".btn-plus.goods").click(function() {
		var cnt = parseInt($("#qty").val()) + 1;
		var addressGubun = cookieManager.getCookie('ADDRESS_GUBUN');
		
				if(addressGubun == '11'){
					if(cnt > 4){
						cnt = 4;
						alert("피자는 4판만 주문 가능합니다.");
					}				
				} else {
					if(cnt > 9){
						cnt = 9;
						alert("피자는 9판만 주문 가능합니다.");
					}
				}
			
		
		$(".opt_qty").val(cnt);
		setTotalAmt();
	});
	
	$(".btn-minus.etc").click(function() {	
		setEtcTotalCnt($(this), ".btn-minus.etc");
	});	
	
	$(".btn-plus.etc").click(function() {
		setEtcTotalCnt($(this), ".btn-plus.etc");
	});
	
	$(".btn-minus.side").click(function() {
		setsideTotalCnt($(this), ".btn-minus.side");
	});	
	
	$(".btn-plus.side").click(function() {
		setsideTotalCnt($(this), ".btn-plus.side");
	});
});

// 트래킹
function trk_call(gu_bun){
	var trk_pi_value = "WP_4P";
	var trk_cp_value = "피자 리스트>제품상세 팝업";
	
	if(gu_bun=='nonlist'){
		trk_pi_value = "WP_4_1P";
		trk_cp_value = "피자 주문화면>제품상세 팝업";
	}
		
	 
		
 	var _trk_url = document.baseURI + "&_TRK_PI="+trk_pi_value+"&_TRK_CP="+trk_cp_value ;
	try {
		_trk_code_base = _trk_code_base.replace(/(du=).*?(&)/,'$1' + escape(_trk_url) + '$2');
		_trk_flashEnvView("_TRK_PI="+trk_pi_value,"_TRK_CP="+trk_cp_value);
		
	} catch (e) {
		console.log(e.message);
	}
}

function addBasketComplete(returnUrl) {
	location.href = "/basket/detail";
};


// 도우 옵션 리스트
function setDoughOption() {
	$.ajax({
		type: "GET",
		url: "/goods/optionAjax",
		data: {
			'sn': '10835',
			'code_01': 'RPZ298AL'
		},
		success:function(data) {
			var doughStr = "";
			var doughCode = "";
			var item = data.resultData.options;
			
			for (i = 0; i < item.length; i++) {
				if (branchCode != 86578 || (branchCode == 86578 && (item[i]['gubun'] == '104' || item[i]['gubun'] == '115' || item[i]['gubun'] == '103'))) {
					doughStr += "<input type='hidden' class='options' id='"+item[i]['code_01']+"' data-ctgrnm='"+item[i]['ctgr_nm']+"' data-filenm='"+item[i]['file_nm1']+"'"
					  + " data-options='"+item[i]['options']+"' data-gubun='"+item[i]['gubun']+"' data-price='"+item[i]['price']+"'/>";
			
					if (item[i].sub_name == 'L' && doughCode != gubunInfo[item[i]['gubun']].slice(0, 1)) {
			  			doughCode = gubunInfo[item[i]['gubun']].slice(0, 1);
						doughStr += "<div class='chk-box'>"
								  + 	"<input type='radio' id='dough" + doughCode + "' name='dough' value='" + doughCode + "' onclick='changeDoughOption(this)'/>"
								  +		"<label class='checkbox' for='dough" + doughCode + "'></label>"
								  +		"<label for='dough" + doughCode + "'>" + dough[doughCode]['name'];
							if (dough[doughCode]['price'] != 0)
								doughStr += "<em>+" + dough[doughCode]['price'].cvtNumber() + "원</em>";
						doughStr += 	"</label>"
								  + "</div>";
					}
				}
			}
			$('.option-box.dough').html(doughStr);
			$('.option-box.dough').children('div:first').children('input').trigger('click'); // changeDoughOption() 호출
		},
		error: function (error){
			alert("다시 시도해주세요.");
		}
	});
}

// 도우 옵션 변경
function changeDoughOption(object) {
	$('input[name=dough]').parent().removeClass('selected');
	$(object).parent().addClass('selected');
	$(object).prop('checked', true);
	
	setEdgeOption(); // 도우 변경에 따른 엣지 리스트 변경
}

// 엣지 옵션 리스트
function setEdgeOption() {
	var edgeStr = "";
	var size = $('input[name=size]:checked').val();
	var checkedDough = $('input[name=dough]:checked').val(); 

	for (i = 0; i < dough[checkedDough].edge.length; i++) {
		// M사이즈 트리플 치즈 버스트 엣지 제거
		if (size == 'M' && dough[checkedDough].edge[i] == '2') continue;
		// hnh시그니처 더블치즈엣지만 노출
		if ('RPZ298AL' == 'RPZ268SL' && dough[checkedDough].edge[i] != '1') continue;
		 
		var ord = dough[checkedDough].edge[i];
		var price = size == 'L' ? 'lPrice' : 'mPrice';
		edgeStr += "<div class='chk-box'>"
				 + 		"<input type='radio' id='edge" + ord + "' name='edge' value='" + ord + "' onclick='changeEdgeOption(this)'/>"
				 +		"<label class='checkbox' for='edge" + ord + "'></label>"
				 +		"<label for='edge" + ord + "'>" + edge[ord]['name'];
		if (edge[ord][price] != 0)
			edgeStr += "<em>+" + edge[ord][price].cvtNumber() + "원</em>"
		edgeStr +=		"</label>"
		   	     + "</div>";
	}
	
	$('.option-box.edge').html(edgeStr);
	$('.option-box.edge').children('div:first').children('input').trigger('click'); // changeEdgeOption() 호출

	// 선택 안함만 있을 때 엣지 선택 영역 비노출
	if (branchCode == 86578 // 잠실야구장점/hnh시그니처 더블치즈엣지 비노출 
			|| ('RPZ298AL' != 'RPZ268SL' && $('.option-box.edge').children().length <= 1)) {
		$('.step-wrap.edge').hide();
	} else {
		$('.step-wrap.edge').show();
	}
}

// 엣지 옵션 변경 후 토핑
function changeEdgeOption(object) {
	$('input[name=edge]').parent().removeClass('selected');
	$(object).parent().addClass('selected');
	$(object).prop('checked', true);
	
	// 더블 치즈 엣지, 트리플 치즈 엣지, 페퍼로니 엣지 이미지 변경
	if ($(object).val() == "1" || $(object).val() == "2" || $(object).val() == "3") {
		var fileName = $('input[data-gubun=' + doughEdgeInfo['1'+$(object).val()] + ']').data('filenm');
		
		var str = "<div>"
		+ "<img src=\"https://cdn.dominos.co.kr/admin/upload/goods/" + fileName + "\" />"
		+ "</div>";

		$(".menu-slider-viewdouble").html(str);
		$(".menu-slider-viewdouble").css("display","block");
		$(".menu-slider-view2").css("display","none");
	} else {
		$(".menu-slider-viewdouble").css("display","none");
		$(".menu-slider-view2").css("display","block");
	} 
	
	if (branchCode != 86578) { 
		addTopping();
	} else {
		setTotalAmt();
	}
};

// 토핑 가져오기
function addTopping() {
	var rpzCode = getRpzCode();
	setTotalAmt();

	$.ajax({
		type: "GET",
		url: "/goods/allToppingLayer",
		data: { 'code_01': rpzCode },
		timeout: 10000,
		success:function(data) {
			$("#allToppingLayer").html(data)
			
			$('.js_tab ul.topping li').removeClass('active');
			$('.js_tab ul.topping li:first-child').addClass('active');
			
			//추천 토핑 불러오기
			$.ajax({
				type: "GET",
				url: "/goods/RankToppingLayer",
				data: { 'code_01': rpzCode, goods_code : "RPZ298AL" },
				success:function(data) {
					$("#rankToppingLayer").html(data);
					
					//토핑 추가,삭제 버튼 클릭이벤트 제거 후 다시 등록
					$(".btn-minus.topping").off();
					$(".btn-plus.topping").off();
					
					$(".btn-minus.topping").click(function() {
						setToppingTotalCnt($(this), ".btn-minus.topping");
					});	

					$(".btn-plus.topping").click(function() {
						setToppingTotalCnt($(this), ".btn-plus.topping");
					});
					//토핑 초기화
					setToppingTotalCnt($(".btn-minus.topping").eq(0), ".btn-minus.topping");
				},
				error: function (error){
					alert("다시 시도해주세요.");
				},
				complete: function() {
			    	ajaxRequest = null;
			    }
			});
		},
		error: function (error){
			alert("처리도중 오류가 발생하였습니다. 새로고침 버튼을 눌러주세요.");
		},
		beforeSend: function() {
			ajaxRequest = "Y";
	    }
	});
};

//피자 코드 만들기
function getRpzCode() {
	var dough = $('input[name=dough]:checked').val();
	var edge = $('input[name=edge]:checked').val();
	var rpzCode = $('input[data-gubun=' + doughEdgeInfo[dough+edge] + ']').attr("id").slice(0, 7)
				+ $(':radio[name="size"]:checked').val();
	
	return rpzCode;
};

function setTotalAmt() {
	var size = $('input[name=size]:checked').val();
	var doughVal = $('input[name=dough]:checked').val();
	var edgeVal = $('input[name=edge]:checked').val();

	var doughInfo = dough[doughVal]['name'];
		doughInfo += dough[doughVal]['price'] > 0 ? "(+" + dough[doughVal]['price'].cvtNumber() + "원)" : "";
	var edgePrice = size == 'L' ? 'lPrice' : 'mPrice';
	var edgeInfo = edgeVal != '0' ? edge[edgeVal]['name'] + "(+" + edge[edgeVal][edgePrice].cvtNumber() + "원)" : "";
	
	$(".total-dough").html("<div>도우 : "+ doughInfo +"</div>");
	if (edgeInfo != "") {
		$(".total-edge").show();
		$(".total-edge").html("<div>엣지 : "+ edgeInfo +"</div>");
	} else {
		$(".total-edge").hide();
		$(".total-edge").html("");
	}
	
	sum("pizza");
};

function sum(gubun, obj) {
	var toppingSum = 0;
	var toppingCnt = 0;
	var sideSum = 0;
	var sideCnt = 0;
	var etcSum = 0;
	var etcCnt = 0;
	var etcDrink = 0;
	var sideVan = 0;
	var special_side = 0;
	var goodsSum = 0;
	var goodsCnt = 0;
	var pizzaSum = 0;
	
	$(".toppingSum").each(function() {
		toppingSum += parseInt($(this).val());
	});
	$(".toppingCnt").each(function() {
		toppingCnt += parseInt($(this).text());
	});
	
	$(".sideSum").each(function() {
		sideSum += parseInt($(this).val());
	});
	
	$(".sideCnt").each(function() {
		sideCnt += parseInt($(this).text());
	});
	
	$(".sideVan").each(function() {
		sideVan += parseInt($(this).val());
	});
	
	$(".special_side").each(function() {
		special_side += parseInt($(this).val());
	});
	
	$(".etcSum").each(function() {
		etcSum += parseInt($(this).val());
	});
	$(".etcCnt").each(function() {
		etcCnt += parseInt($(this).text());
	});
	$(".etcDrink").each(function() {
		etcDrink += parseInt($(this).val());
	});
	
	var edgeChild = $(".total-edge").children('div').length;
	var toppingChild =  $(".total-topping").children('div').length;
	var sideChild =  $(".total-side").children('p').length;
	var etcChild =  $(".total-etc").children('p').length;

	if(edgeChild > 0 || toppingChild >= 2 || sideChild > 2 || etcChild > 2) {
		if(toppingChild == 1) {
			$(".total-topping").html("<div></div>")
		}
		$('.btn-text-more').css('display','block');
	}else {
		if(toppingChild == 1) {
			$(".total-topping").html("<div></div>")
		}
		$('.btn-text-more').css('display','none');
	}
	
	var rpzCode = getRpzCode();
	var pizzaAmount = parseInt($("#" + rpzCode).data("price"));
	
	if(parseInt($("#qty").val())*2 < etcDrink && parseInt($("#qty").val()) < sideVan) {
		var result = confirm("피자 수량을 줄이면 사이드, 음료가 초기화 됩니다.");
		if(result){
			$(".etcdelete").find("input[type=number]").val(0);
			etcCnt = 0;
			etcSum = 0;
			$(".total-etc").html("<div>없음</div>");
			
			$(".sidedelete").find("input[type=number]").val(0);
			sideCnt = 0;
			sideSum = 0;
			$(".total-side").html("<div>없음</div>");
			
		}else{
			var cnt = parseInt($("#qty").val()) + 1;
			$(".opt_qty").val(cnt);
		}
	} else if (parseInt($("#qty").val())*2 + sideCnt - sideVan - special_side < etcDrink){
		var result2 = confirm("피자/사이드 수량을 줄이면 음료가 초기화 됩니다.");
		if(result2){
			$(".etcdelete").find("input[type=number]").val(0);
			etcCnt = 0;
			etcSum = 0;
			$(".total-etc").html("<div>없음</div>");
		}else{
			if (gubun == "pizza") {
				var cnt = parseInt($("#qty").val()) + 1;
				$(".opt_qty").val(cnt);
			} else {
				setsideTotalCnt(obj, ".btn-plus.side");
			}
		}
	} else if (parseInt($("#qty").val()) < sideVan){
		var result3 = confirm("피자 수량을 줄이면 사이드가 초기화 됩니다.");
		if(result3){
		$(".sidedelete").find("input[type=number]").val(0);
		sideCnt = 0;
		sideSum = 0;
		$(".total-side").html("<div>없음</div>");
			
		}else{
			var cnt = parseInt($("#qty").val()) + 1;
			$(".opt_qty").val(cnt);
		}
	} else if (parseInt($("#qty").val()) < special_side){
		if(confirm("피자 수량을 줄이면 사이드가 초기화 됩니다.")){
			$(".sidedelete").find("input[type=number]").val(0);
			sideCnt = 0;
			sideSum = 0;
			$(".total-side").html("<div>없음</div>");
		}else{
			var cnt = parseInt($("#qty").val()) + 1;
			$(".opt_qty").val(cnt);
		}
	}

	goodsSum = (parseInt(pizzaAmount) + toppingSum)* parseInt($("#qty").val())+ sideSum + etcSum;
	goodsCnt = parseInt($("#qty").val()) + sideCnt + etcCnt;
	pizzaSum = parseInt(pizzaAmount) + toppingSum;
	
	$(".total-pizza").text($(".title.pizza").text() + "/" + $(':radio[name="size"]:checked').val() + "("+ pizzaSum.cvtNumber() +"원)" + "x" + parseInt($("#qty").val()));
	$(".total-count").text(goodsCnt);
	$(".total-price_sum").text(goodsSum.cvtNumber() + "원");
};


function toppingValidate() {
	var pzDoughCode = getRpzCode().substr(6,1);
	var tpDoughCode = getToppingCode().substr(6,1);
	
	if (tpDoughCode != "" && pzDoughCode != tpDoughCode) {
		alert("처리도중 오류가 발생하였습니다.\n피자 도우 및 토핑을 다시 선택해주세요.");
		location.reload();
		return;
	}
};

function sideValidate() {

	var rpzCode = getRpzCode();
	var sideList = getSideCode();
	var etcList = getEtcCode();
	var memberID = '';

	$.ajax({
		type: "GET",
		url: "/goods/validate",
		data: { 
				'gubun': "PIZZA",
				'goods_code': rpzCode+":"+$("#qty").val(),
				'side_code': sideList,
				'etc_code' : etcList,
				'member_id' : memberID,
				'branch_code' : branchCode
		},
		success:function(data) {
			if(data.resultData.result == "success") {
				saveBasket();
			} else if (data.resultData.result == "drinkover") {
				alert("음료는 피자 1판당 2개 까지 주문 가능합니다. 장바구니를 확인 해주세요.");
				return;
			} else if (data.resultData.result == "sidevanover") {
				alert("특가 사이드디시는 피자 1판당 1회, 최대 4회까지 적용 가능합니다.");
				return;
			} else if (data.resultData.result == "special_side_over") {
				alert("본 상품은 프리미엄 피자 8종 (L) 한 판당 1회 (최대 4개) 이용 가능합니다.");
				return;
			} else if (data.resultData.result == "side_combo_over") {
				alert("본 상품은 피자(M, L) 한 판당 1회 (최대 4회) 이용 가능합니다.");
				return;
			} else if(data.resultData.result == "prmt_validation_failed"){
				alert("본 상품은 프리미엄 피자 (L) 구매 시 이용 가능합니다. (자세한 내용 이벤트 페이지 참고)");
				return;
			} else if (data.resultData.result == "special_price_side_over") {
				alert("특가 상품은 해당 피자 한 판당 1회 (최대 4회) 이용 가능합니다.");
				return;
			}
		},
		error: function (error){
			alert("다시 시도해주세요.");
		}
	});
};

function saveBasket(returnUrl) {
	var rpzCode = getRpzCode();
	var toppingList = getToppingCode();
	var sideList = getSideCode();
	var etcList = getEtcCode();

	var returnUrl = "/basket/detail";
	var menuCode = "M010101";
	
	$.ajax({
    	type: "POST",
    	url: "/goods/pauseCheck",
    	data: {
    		'goods_code': rpzCode,
    		'topping': toppingList,
    		'side': sideList,
    		'etc_drink': etcList
    	},
    	success:function(data) {
    		if(data.resultData.result == "success") {

    			addBasketListAll("addPZ", rpzCode, $("#qty").val(), toppingList, "", addBasketComplete, returnUrl, menuCode, "RPZ", sideList, etcList);
    			
    		} else {
    			alert(data.resultData.result);
    			return;
    		}
    	},
    	error: function (error){
    		alert("다시 시도해주세요.");
    	},
    	beforeSend: function() {
    		checkSttsFlag = "Y";
        },
        complete: function() {
        	checkSttsFlag = null;
        }
    });
};



//토핑 코드 만들기
function getToppingCode() {
	var toppingCode = "";
	
	$(".btn-minus.topping").each(function() {
		if($(this).siblings(".setNum").val() != "0") {
			if(toppingCode != "") {
				toppingCode += ",";
			}
			toppingCode += $(this).siblings(".setCode").val()+":"+$(this).siblings(".setNum").val();
		}
	});
	return toppingCode;
};

//사이드 코드 만들기
function getSideCode() {
	var sideCode = "";
	
	$(".btn-minus.side").each(function() {
		if($(this).siblings(".setNum").val() != "0") {
			if(sideCode != "") {
				sideCode += ",";
			}
			sideCode += $(this).siblings(".setCode").val() 
						+ ":" + $(this).siblings(".setNum").val()
						+ ":" + $(this).siblings(".prmtIdx").val();
		}
	});

	return sideCode;
};

//음료 코드 만들기
function getEtcCode() {
	var etcCode = "";
	
	$(".btn-minus.etc").each(function() {
		if($(this).siblings(".setNum").val() != "0") {
			if(etcCode != "") {
				etcCode += ",";
			}
			etcCode += $(this).siblings(".setCode").val()+":"+$(this).siblings(".setNum").val();
		}
	});
	
	return etcCode;
};

function isEmptyCode(str){
    if(typeof str == "undefined" || str == null || str == "")
        return true;
    else
        return false;
}

function pizzaReturn(value) {
	if (value <= 0) {
		var result = confirm("특가 혜택을 받으시러면 피자를 함께 주문 하셔야 합니다. 이동 하시겠습니까?");
		if (result) {
			location.href="/goods/list?dsp_ctgr=C0101&return_code_01=RPZ298AL&return_dsp_ctgr=C0101";
		}

		// 25% 라디오 버튼
		$(".chk-box.hotdeal1").removeClass("selected");
		$("#hotdeal1").prop("checked", false);

		// 일반가격 라디오 버튼
		$(".chk-box.hotdeal4").addClass("selected");
		$("#hotdeal4").prop("checked", true);
	}
};

function share(optn) {
	var shareLink = CON_DOMAIN_URL + '/goods/detail?dsp_ctgr=C0102&code_01=RPZ298AL';
	var style = 'resizable=no,status=no,location=no,toolbar=no,menubar=no,fullscreen=no,scrollbars=no,dependent=no';
	var link, popupId;

	if (optn == 'facebook') {

		var params = 'u=' + encodeURIComponent(shareLink);
		params += '&title=' + encodeURIComponent('도미노피자 치즈 크레이프 샌드') ;
		params += '&description=' + encodeURIComponent('행복을 배달하는 No.1 Pizza Company, 도미노피자의 치즈 크레이프 샌드');
		if ('' != '') {
			params += '&picture=' + encodeURIComponent('');
		}

		link = 'https://www.facebook.com/sharer/sharer.php?' + params;
		popupId = 'share_facebook_pop';
		style = style + ',width=600,height=250';

	} else if (optn == 'twitter') {

		link = 'http://twitter.com/share?text=' + encodeURIComponent('도미노피자 치즈 크레이프 샌드 '+shareLink);
		popupId = 'share_twitter_pop';
		style = style + ',width=533px,height=437px';

	} else if (optn == 'kakaostory') {

		var sUrl =  CON_DOMAIN_URL + '/goods/share?dsp_ctgr=C0102&code_01=RPZ298AL';

		link = 'https://story.kakao.com/share?url=' + encodeURIComponent(sUrl);
		popupId = 'share_twitterkakaostory_pop';
		style = style + ',width=600px,height=600px';

	} else {
		return;
	}

	window.open(link, popupId, style);
}

</script>

<!-- container -->
<div id="container">
	<section id="content">
		<div class="sub-type menu">
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
			<li class="active"><a href="product_category_list.jsp?product_category=1">피자</a></li>
                        <li><a href="product_category_list.jsp?product_category=2">사이드메뉴</a></li>
                        <li><a href="product_category_list.jsp?product_category=3">음료 & 소스</a></li>
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
								<div class="menu-slider-view2">
									<div><img src="<%=product.getProduct_image() %>" alt="<%=product.getProduct_name() %>" /></div>
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
									<h3 class="title pizza"><%=product.getProduct_name() %></h3>
									
									<div class="hashtag">
										<span><%=product.getProduct_desc() %></span>
											
											</div>
								</div>
								
								<div class="btn-wrap2">
									<a href="javascript:UI.layerPopUp({selId:'#pop-allergy', url:'/contents/ingredient'})" class="btn-type-left v2">원산지·영양성분 ·알레르기 유발성분 정보</a>
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
											<%
                                           		// System.out.println(product.getProduct_image());
                                             String price = "";
	                       					 price = String.valueOf(product.getProduct_price());
	                     					
	                    					 DecimalFormat decimalFormat = new DecimalFormat("#,###");
	                    					 String formattedPrice = decimalFormat.format(Integer.parseInt(price)); // 포맷팅된 가격
	                    					
	                    					 String price1 = String.valueOf(product.getProduct_price() + 5000);
	                    					 DecimalFormat decimalFormat1 = new DecimalFormat("#,###");
	                    					 String formattedPrice1 = decimalFormat.format(Integer.parseInt(price1)); // 포맷팅된 가격 %>
												<input type="radio" id="size1" name="size" value="L" checked onclick="setEdgeOption()"/>
												<label class="checkbox" for="size1"></label>
												<label for="size1">L <%= formattedPrice1%>원</p></label>
											</div>
											<!-- //checkbox 활성화 일 경우 -->
											<div class="chk-box2">
													<input type="radio" id="size2" name="size" value="M" onclick="setEdgeOption()"/>
													<label class="checkbox" for="size2"></label>
													<label for="size2">M <%= formattedPrice %>원</p></label>
												</div>
											</div>
									</div>
									
									<div class="step-wrap">
										<div class="title-wrap">
											<div class="title-type2">도우 선택</div>
											<div class="notice-text side"><a href="javascript:UI.layerPopUp({selId:'#pop-dough2'})">도우의 특징</a></div>
										</div>
										<div class="option-box dough">
										</div>	
									</div>
									
									<div class="step-wrap edge">
										<div class="title-wrap">
											<div class="title-type2">엣지 선택</div>
											<div class="notice-text side"><a href="javascript:UI.layerPopUp({selId:'#pop-edge'})">엣지의 특징</a></div>
										</div>
										<div class="option-box edge">
										</div>
									</div>
									
									<div class="step-wrap topping">
											<div class="title-wrap close topping">
												<div class="title-type2">토핑추가</div>
												<div class="notice-text side">
													<a href="javascript:UI.layerPopUp({selId:'#pop-allergy2'})">토핑 알레르기 유발성분 및 원산지</a>
												</div>
												<a href="#" class="btn-toggle-close">
													<span class="hidden">열기</span>
												</a>
											</div>	
											<div class="js_toggle_box close">
												<ul class="list-text-v4">
													<li>토핑추가는 피자 한판 당 5개까지 추가 가능</li>
												</ul>
												<div class="tab-type js_tab">
													<ul class="col-3 topping">
														<li class="active"><a href="#topping1">메인</a></li>
														<li><a href="#topping2">치즈</a></li>
														<li><a href="#topping3">애프터</a></li>
													</ul>
												</div>
												
												<div id="allToppingLayer">
												</div>
											</div>
											
											<div class="promotion-box">
												<a href="javascript:void(0);">치즈 크레이프 샌드에 잘 어울리는 <em>추천 토핑 TOP3</em></a>
											</div>
											
											<div class="recommend-wrap">
												<ul id="rankToppingLayer">
												</ul>
											</div>
										</div>
									<div class="step-wrap">
										<div class="title-wrap">
											<div class="title-type2">수량 선택</div>
										</div>
										<div class="quantity-box">
											<button class="btn-minus goods"></button>
											<input type="number" class="opt_qty" value="1" id="qty" max="9" readonly>
											<button class="btn-plus goods"></button>
										</div>
									</div>
									
									<a class="btn_pm_banner" href="https://web.dominos.co.kr/event/entry/2101">[슈퍼팝 응모 찬스] 콤보 구매하고
											<span class="CBrand"> 이벤트페이지에서 응모</span>하면 티켓 당첨의 기회가!
										</a>
									
										<div class="step-wrap">
											<div class="title-wrap">
												<div class="title-type2">사이드디시</div>
												<div class="notice-text side">
														<a href="javascript:UI.layerPopUp({selId:'#pop-sidedish'})">특가 사이드디시 유의사항</a>
													</div>
												</div>
											
											<div class="tab-type js_tab">
												<ul>
													<li class="active"><a href="#sidedish1">특가</a></li>
														<li><a href="#sidedish2">일반</a></li>
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
			if ("false" == "false") { // 비로그인
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
<div id="sidedish1" class="tab-content sidedelete">
	<div class="menu-list-v2">
		<ul>
			<li>
					<div class="prd-img">
						<img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20230809_sO4sDhHB.jpg" alt="[로스트아크] 굿즈+쿠폰+코카콜라 1.25L 스페셜 딜!"  />
					</div>
					
					<div class="prd-cont">
						<div class="subject">[로스트아크] 굿즈+쿠폰+코카콜라 1.25L 스페셜 딜!</div>
						<div class="price-box">
							<strong>3,000</strong>
						</div>
						
						<div class="quantity-box">
							<button class="btn-minus side"></button>
							<input class="prmtIdx" type="hidden" value="2039">
							<input class="setNum" type="number" value="0" readonly>
							<input class="setName" type="hidden" value="[로스트아크] 굿즈+쿠폰+코카콜라 1.25L 스페셜 딜!">
							<input class="setCode" type="hidden" value="SST329F1">
							<input class="setPrice" type="hidden" value="3000">
							<button class="btn-plus side"></button>
						</div>
					</div>
				</li>
			<li>
					<div class="prd-img">
						<img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20230728_61jeAFv9.jpg" alt="맥앤치즈 볼 콤보"  />
					</div>
					
					<div class="prd-cont">
						<div class="subject">맥앤치즈 볼 콤보</div>
						<div class="price-box">
							<del>9,200</del>
							<strong>7,400</strong>
						</div>
						
						<div class="quantity-box">
							<button class="btn-minus side"></button>
							<input class="prmtIdx" type="hidden" value="2003">
							<input class="setNum" type="number" value="0" readonly>
							<input class="setName" type="hidden" value="맥앤치즈 볼 콤보">
							<input class="setCode" type="hidden" value="SST319F1">
							<input class="setPrice" type="hidden" value="7400">
							<button class="btn-plus side"></button>
						</div>
					</div>
				</li>
			<li>
					<div class="prd-img">
						<img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20230728_9bW3147y.jpg" alt="페타크림 콤보"  />
					</div>
					
					<div class="prd-cont">
						<div class="subject">페타크림 콤보</div>
						<div class="price-box">
							<del>12,100</del>
							<strong>9,800</strong>
						</div>
						
						<div class="quantity-box">
							<button class="btn-minus side"></button>
							<input class="prmtIdx" type="hidden" value="2003">
							<input class="setNum" type="number" value="0" readonly>
							<input class="setName" type="hidden" value="페타크림 콤보">
							<input class="setCode" type="hidden" value="SST318F1">
							<input class="setPrice" type="hidden" value="9800">
							<button class="btn-plus side"></button>
						</div>
					</div>
				</li>
			<li>
					<div class="prd-img">
						<img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20230804_6tFQBzqg.jpg" alt="파스타 콤보"  />
					</div>
					
					<div class="prd-cont">
						<div class="subject">파스타 콤보</div>
						<div class="price-box">
							<del>12,100</del>
							<strong>9,800</strong>
						</div>
						
						<div class="quantity-box">
							<button class="btn-minus side"></button>
							<input class="prmtIdx" type="hidden" value="2003">
							<input class="setNum" type="number" value="0" readonly>
							<input class="setName" type="hidden" value="파스타 콤보">
							<input class="setCode" type="hidden" value="SST251F1">
							<input class="setPrice" type="hidden" value="9800">
							<button class="btn-plus side"></button>
						</div>
					</div>
				</li>
			<li>
					<div class="prd-img">
						<img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20230804_4YMR828r.jpg" alt="핫 윙 콤보"  />
					</div>
					
					<div class="prd-cont">
						<div class="subject">핫 윙 콤보</div>
						<div class="price-box">
							<del>12,100</del>
							<strong>9,800</strong>
						</div>
						
						<div class="quantity-box">
							<button class="btn-minus side"></button>
							<input class="prmtIdx" type="hidden" value="2003">
							<input class="setNum" type="number" value="0" readonly>
							<input class="setName" type="hidden" value="핫 윙 콤보">
							<input class="setCode" type="hidden" value="SST252F1">
							<input class="setPrice" type="hidden" value="9800">
							<button class="btn-plus side"></button>
						</div>
					</div>
				</li>
			<li>
					<div class="prd-img">
						<img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20230801_l2a1oxg3.jpg" alt="[특가] 맥앤치즈 볼"  />
					</div>
					
					<div class="prd-cont">
						<div class="subject">[특가] 맥앤치즈 볼</div>
						<div class="price-box">
							<del>6,900</del>
							<strong>5,170</strong>
						</div>
						
						<div class="quantity-box">
							<button class="btn-minus side"></button>
							<input class="prmtIdx" type="hidden" value="2012">
							<input class="setNum" type="number" value="0" readonly>
							<input class="setName" type="hidden" value="[특가] 맥앤치즈 볼">
							<input class="setCode" type="hidden" value="SST264F1_HP15">
							<input class="setPrice" type="hidden" value="5170">
							<button class="btn-plus side"></button>
						</div>
					</div>
				</li>
			<li>
					<div class="prd-img">
						<img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20230801_ZI9vENFt.jpg" alt="[특가] 페타크림 치즈 볼로네즈 파스타"  />
					</div>
					
					<div class="prd-cont">
						<div class="subject">[특가] 페타크림 치즈 볼로네즈 파스타</div>
						<div class="price-box">
							<del>9,800</del>
							<strong>7,350</strong>
						</div>
						
						<div class="quantity-box">
							<button class="btn-minus side"></button>
							<input class="prmtIdx" type="hidden" value="2012">
							<input class="setNum" type="number" value="0" readonly>
							<input class="setName" type="hidden" value="[특가] 페타크림 치즈 볼로네즈 파스타">
							<input class="setCode" type="hidden" value="SST264F1_HP14">
							<input class="setPrice" type="hidden" value="7350">
							<button class="btn-plus side"></button>
						</div>
					</div>
				</li>
			<li>
					<div class="prd-img">
						<img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20230615_zgYMdXhv.jpg" alt="[특가] 불고기 대파 크림치즈 파스타"  />
					</div>
					
					<div class="prd-cont">
						<div class="subject">[특가] 불고기 대파 크림치즈 파스타</div>
						<div class="price-box">
							<del>8,800</del>
							<strong>6,600</strong>
						</div>
						
						<div class="quantity-box">
							<button class="btn-minus side"></button>
							<input class="prmtIdx" type="hidden" value="2012">
							<input class="setNum" type="number" value="0" readonly>
							<input class="setName" type="hidden" value="[특가] 불고기 대파 크림치즈 파스타">
							<input class="setCode" type="hidden" value="SST264F1_HP13">
							<input class="setPrice" type="hidden" value="6600">
							<button class="btn-plus side"></button>
						</div>
					</div>
				</li>
			<li>
					<div class="prd-img">
						<img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20230615_sFEn6I8S.jpg" alt="[도미노X슈퍼 마리오] 체다 치즈 치킨"  />
					</div>
					
					<div class="prd-cont">
						<div class="subject">[도미노X슈퍼 마리오] 체다 치즈 치킨</div>
						<div class="price-box">
							<del>9,800</del>
							<strong>7,350</strong>
						</div>
						
						<div class="quantity-box">
							<button class="btn-minus side"></button>
							<input class="prmtIdx" type="hidden" value="2012">
							<input class="setNum" type="number" value="0" readonly>
							<input class="setName" type="hidden" value="[도미노X슈퍼 마리오] 체다 치즈 치킨">
							<input class="setCode" type="hidden" value="SST264F1_HP10">
							<input class="setPrice" type="hidden" value="7350">
							<button class="btn-plus side"></button>
						</div>
					</div>
				</li>
			<li>
					<div class="prd-img">
						<img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20230616_BFgzxAga.jpg" alt="[특가] 웨스턴 핫 윙"  />
					</div>
					
					<div class="prd-cont">
						<div class="subject">[특가] 웨스턴 핫 윙</div>
						<div class="price-box">
							<del>9,800</del>
							<strong>7,350</strong>
						</div>
						
						<div class="quantity-box">
							<button class="btn-minus side"></button>
							<input class="prmtIdx" type="hidden" value="2012">
							<input class="setNum" type="number" value="0" readonly>
							<input class="setName" type="hidden" value="[특가] 웨스턴 핫 윙">
							<input class="setCode" type="hidden" value="SST264F1_HP5">
							<input class="setPrice" type="hidden" value="7350">
							<button class="btn-plus side"></button>
						</div>
					</div>
				</li>
			<li>
					<div class="prd-img">
						<img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20230615_YeOZZNd9.jpg" alt="[특가] 블랙타이거 슈림프 피자 라이스볼"  />
					</div>
					
					<div class="prd-cont">
						<div class="subject">[특가] 블랙타이거 슈림프 피자 라이스볼</div>
						<div class="price-box">
							<del>10,800</del>
							<strong>8,100</strong>
						</div>
						
						<div class="quantity-box">
							<button class="btn-minus side"></button>
							<input class="prmtIdx" type="hidden" value="2012">
							<input class="setNum" type="number" value="0" readonly>
							<input class="setName" type="hidden" value="[특가] 블랙타이거 슈림프 피자 라이스볼">
							<input class="setCode" type="hidden" value="SST264F1_HP11">
							<input class="setPrice" type="hidden" value="8100">
							<button class="btn-plus side"></button>
						</div>
					</div>
				</li>
			<li>
					<div class="prd-img">
						<img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20230615_17uO9nMY.jpg" alt="[특가] 블랙앵거스 스테이크 피자 라이스볼"  />
					</div>
					
					<div class="prd-cont">
						<div class="subject">[특가] 블랙앵거스 스테이크 피자 라이스볼</div>
						<div class="price-box">
							<del>10,800</del>
							<strong>8,100</strong>
						</div>
						
						<div class="quantity-box">
							<button class="btn-minus side"></button>
							<input class="prmtIdx" type="hidden" value="2012">
							<input class="setNum" type="number" value="0" readonly>
							<input class="setName" type="hidden" value="[특가] 블랙앵거스 스테이크 피자 라이스볼">
							<input class="setCode" type="hidden" value="SST264F1_HP12">
							<input class="setPrice" type="hidden" value="8100">
							<button class="btn-plus side"></button>
						</div>
					</div>
				</li>
			<li>
					<div class="prd-img">
						<img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20230615_M932Kg6y.jpg" alt="[특가] 베이컨 까르보나라 페투치니"  />
					</div>
					
					<div class="prd-cont">
						<div class="subject">[특가] 베이컨 까르보나라 페투치니</div>
						<div class="price-box">
							<del>9,800</del>
							<strong>7,350</strong>
						</div>
						
						<div class="quantity-box">
							<button class="btn-minus side"></button>
							<input class="prmtIdx" type="hidden" value="2012">
							<input class="setNum" type="number" value="0" readonly>
							<input class="setName" type="hidden" value="[특가] 베이컨 까르보나라 페투치니">
							<input class="setCode" type="hidden" value="SST264F1_HP3">
							<input class="setPrice" type="hidden" value="7350">
							<button class="btn-plus side"></button>
						</div>
					</div>
				</li>
			<li>
					<div class="prd-img">
						<img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20230615_019SDyD7.jpg" alt="[특가] H&H 파스타(치즈&까르보나라)"  />
					</div>
					
					<div class="prd-cont">
						<div class="subject">[특가] H&H 파스타(치즈&까르보나라)</div>
						<div class="price-box">
							<del>10,800</del>
							<strong>8,100</strong>
						</div>
						
						<div class="quantity-box">
							<button class="btn-minus side"></button>
							<input class="prmtIdx" type="hidden" value="2012">
							<input class="setNum" type="number" value="0" readonly>
							<input class="setName" type="hidden" value="[특가] H&H 파스타(치즈&까르보나라)">
							<input class="setCode" type="hidden" value="SST264F1_HP4">
							<input class="setPrice" type="hidden" value="8100">
							<button class="btn-plus side"></button>
						</div>
					</div>
				</li>
			<li>
					<div class="prd-img">
						<img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20230615_eM4rxV6q.jpg" alt="[특가] 프레쉬 코울슬로"  />
					</div>
					
					<div class="prd-cont">
						<div class="subject">[특가] 프레쉬 코울슬로</div>
						<div class="price-box">
							<del>2,400</del>
							<strong>1,800</strong>
						</div>
						
						<div class="quantity-box">
							<button class="btn-minus side"></button>
							<input class="prmtIdx" type="hidden" value="2012">
							<input class="setNum" type="number" value="0" readonly>
							<input class="setName" type="hidden" value="[특가] 프레쉬 코울슬로">
							<input class="setCode" type="hidden" value="SST264F1_HP2">
							<input class="setPrice" type="hidden" value="1800">
							<button class="btn-plus side"></button>
						</div>
					</div>
				</li>
			<li>
					<div class="prd-img">
						<img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20230615_Wetp4NxD.jpg" alt="[특가] 치즈 볼로네즈 스파게티"  />
					</div>
					
					<div class="prd-cont">
						<div class="subject">[특가] 치즈 볼로네즈 스파게티</div>
						<div class="price-box">
							<del>9,800</del>
							<strong>7,350</strong>
						</div>
						
						<div class="quantity-box">
							<button class="btn-minus side"></button>
							<input class="prmtIdx" type="hidden" value="2012">
							<input class="setNum" type="number" value="0" readonly>
							<input class="setName" type="hidden" value="[특가] 치즈 볼로네즈 스파게티">
							<input class="setCode" type="hidden" value="SST264F1_HP1">
							<input class="setPrice" type="hidden" value="7350">
							<button class="btn-plus side"></button>
						</div>
					</div>
				</li>
			</ul>
	</div>
</div>
<!-- //사이드디시 특가 -->

<!-- 사이드디시 일반 -->
<div id="sidedish2" class="tab-content sidedelete">
	<div class="menu-list-v2">
		<ul>
			<li>
						<div class="prd-img">
							<img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20230801_rtUyBBZu.jpg" alt="맥앤치즈 볼"  />
						</div>
						
						<div class="prd-cont">
							<div class="subject">[NEW] 맥앤치즈 볼</div>
							<div class="price-box">
								<strong>6,900</strong>
							</div>
							
							<div class="quantity-box">
								<button class="btn-minus side"></button>
								<input class="prmtIdx" type="hidden" value="0">
								<input class="setNum" type="number" value="0" readonly>
								<input class="setName" type="hidden" value="맥앤치즈 볼">
								<input class="setCode" type="hidden" value="RSD212M1">
								<input class="setPrice" type="hidden" value="6900">
								<button class="btn-plus side"></button>
							</div>
						</div>
					</li>
				<li>
						<div class="prd-img">
							<img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20230801_LCDq07WL.jpg" alt="페타크림 치즈 볼로네즈 파스타"  />
						</div>
						
						<div class="prd-cont">
							<div class="subject">[NEW] 페타크림 치즈 볼로네즈 파스타</div>
							<div class="price-box">
								<strong>9,800</strong>
							</div>
							
							<div class="quantity-box">
								<button class="btn-minus side"></button>
								<input class="prmtIdx" type="hidden" value="0">
								<input class="setNum" type="number" value="0" readonly>
								<input class="setName" type="hidden" value="페타크림 치즈 볼로네즈 파스타">
								<input class="setCode" type="hidden" value="RSD211M1">
								<input class="setPrice" type="hidden" value="9800">
								<button class="btn-plus side"></button>
							</div>
						</div>
					</li>
				<li>
						<div class="prd-img">
							<img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20230612_4a89CbKR.jpg" alt="불고기 대파 크림치즈 파스타"  />
						</div>
						
						<div class="prd-cont">
							<div class="subject">[NEW] 불고기 대파 크림치즈 파스타</div>
							<div class="price-box">
								<strong>8,800</strong>
							</div>
							
							<div class="quantity-box">
								<button class="btn-minus side"></button>
								<input class="prmtIdx" type="hidden" value="0">
								<input class="setNum" type="number" value="0" readonly>
								<input class="setName" type="hidden" value="불고기 대파 크림치즈 파스타">
								<input class="setCode" type="hidden" value="RSD210M1">
								<input class="setPrice" type="hidden" value="8800">
								<button class="btn-plus side"></button>
							</div>
						</div>
					</li>
				<li>
						<div class="prd-img">
							<img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20230406_d2aTRZdV.jpg" alt="[도미노x슈퍼 마리오] 체다 치즈 치킨"  />
						</div>
						
						<div class="prd-cont">
							<div class="subject">[NEW] [도미노x슈퍼 마리오] 체다 치즈 치킨</div>
							<div class="price-box">
								<strong>9,800</strong>
							</div>
							
							<div class="quantity-box">
								<button class="btn-minus side"></button>
								<input class="prmtIdx" type="hidden" value="0">
								<input class="setNum" type="number" value="0" readonly>
								<input class="setName" type="hidden" value="[도미노x슈퍼 마리오] 체다 치즈 치킨">
								<input class="setCode" type="hidden" value="RSD209M1">
								<input class="setPrice" type="hidden" value="9800">
								<button class="btn-plus side"></button>
							</div>
						</div>
					</li>
				<li>
						<div class="prd-img">
							<img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20220304_114RUEW2.jpg" alt="웨스턴 핫 윙(8조각)"  />
						</div>
						
						<div class="prd-cont">
							<div class="subject">[NEW] 웨스턴 핫 윙(8조각)</div>
							<div class="price-box">
								<strong>9,800</strong>
							</div>
							
							<div class="quantity-box">
								<button class="btn-minus side"></button>
								<input class="prmtIdx" type="hidden" value="0">
								<input class="setNum" type="number" value="0" readonly>
								<input class="setName" type="hidden" value="웨스턴 핫 윙(8조각)">
								<input class="setCode" type="hidden" value="RSD192M1">
								<input class="setPrice" type="hidden" value="9800">
								<button class="btn-plus side"></button>
							</div>
						</div>
					</li>
				<li>
						<div class="prd-img">
							<img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20210601_5QFIlCC9.jpg" alt="베이컨 까르보나라 페투치니"  />
						</div>
						
						<div class="prd-cont">
							<div class="subject">베이컨 까르보나라 페투치니</div>
							<div class="price-box">
								<strong>9,800</strong>
							</div>
							
							<div class="quantity-box">
								<button class="btn-minus side"></button>
								<input class="prmtIdx" type="hidden" value="0">
								<input class="setNum" type="number" value="0" readonly>
								<input class="setName" type="hidden" value="베이컨 까르보나라 페투치니">
								<input class="setCode" type="hidden" value="RSD184M1">
								<input class="setPrice" type="hidden" value="9800">
								<button class="btn-plus side"></button>
							</div>
						</div>
					</li>
				<li>
						<div class="prd-img">
							<img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_oK536isq.jpg" alt="NEW 치즈 볼로네즈 스파게티"  />
						</div>
						
						<div class="prd-cont">
							<div class="subject">NEW 치즈 볼로네즈 스파게티</div>
							<div class="price-box">
								<strong>9,800</strong>
							</div>
							
							<div class="quantity-box">
								<button class="btn-minus side"></button>
								<input class="prmtIdx" type="hidden" value="0">
								<input class="setNum" type="number" value="0" readonly>
								<input class="setName" type="hidden" value="NEW 치즈 볼로네즈 스파게티">
								<input class="setCode" type="hidden" value="RSD031M1">
								<input class="setPrice" type="hidden" value="9800">
								<button class="btn-plus side"></button>
							</div>
						</div>
					</li>
				<li>
						<div class="prd-img">
							<img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20210601_wfgv03O0.jpg" alt="하프&하프 파스타 (NEW 치즈 & 베이컨 까르보나라)"  />
						</div>
						
						<div class="prd-cont">
							<div class="subject">하프&하프 파스타 (NEW 치즈 & 베이컨 까르보나라)</div>
							<div class="price-box">
								<strong>10,800</strong>
							</div>
							
							<div class="quantity-box">
								<button class="btn-minus side"></button>
								<input class="prmtIdx" type="hidden" value="0">
								<input class="setNum" type="number" value="0" readonly>
								<input class="setName" type="hidden" value="하프&하프 파스타 (NEW 치즈 & 베이컨 까르보나라)">
								<input class="setCode" type="hidden" value="RSD186M1">
								<input class="setPrice" type="hidden" value="10800">
								<button class="btn-plus side"></button>
							</div>
						</div>
					</li>
				<li>
						<div class="prd-img">
							<img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_oi9xdc8U.jpg" alt="도미노 코울슬로"  />
						</div>
						
						<div class="prd-cont">
							<div class="subject">도미노 코울슬로</div>
							<div class="price-box">
								<strong>2,400</strong>
							</div>
							
							<div class="quantity-box">
								<button class="btn-minus side"></button>
								<input class="prmtIdx" type="hidden" value="0">
								<input class="setNum" type="number" value="0" readonly>
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
										<div class="title-type2">음료&기타</div>
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
				if("Y" == ""){
					if("Y" == ""){
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
			<li class="" >
						<div class="prd-img">
							<img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_xko4stGP.jpg" alt="코카콜라 1.25L"  />
								</div>
						
						<div class="prd-cont">
							<div class="subject">코카콜라 1.25L</div>
							<div class="price-box">
								<strong>2,300</strong>
							</div>
							
							<div class="quantity-box">
								<button class="btn-minus etc"></button>
								<input class="setNum" type="number" value="0" name="drinkDisplayCnt" readonly>
								<input class="setName" type="hidden" value="코카콜라 1.25L">
								<input class="setCode" type="hidden" value="RDK001L6">
								<input class="setPrice" type="hidden" value="2300">
								<button class="btn-plus etc"></button>
							</div>
						</div>
					</li>
				<li class="cokeClass" >
						<div class="prd-img">
							<img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_2lmLufa0.jpg" alt="코카콜라 500ml"  />
								</div>
						
						<div class="prd-cont">
							<div class="subject">코카콜라 500ml</div>
							<div class="price-box">
								<strong>1,700</strong>
							</div>
							
							<div class="quantity-box">
								<button class="btn-minus etc"></button>
								<input class="setNum" type="number" value="0" name="drinkDisplayCnt" readonly>
								<input class="setName" type="hidden" value="코카콜라 500ml">
								<input class="setCode" type="hidden" value="RDK001L7">
								<input class="setPrice" type="hidden" value="1700">
								<button class="btn-plus etc"></button>
							</div>
						</div>
					</li>
				<li class="" >
						<div class="prd-img">
							<img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20220114_S1MbvZL1.jpg" alt="코카콜라 제로 1.25L"  />
								</div>
						
						<div class="prd-cont">
							<div class="subject">코카콜라 제로 1.25L</div>
							<div class="price-box">
								<strong>2,300</strong>
							</div>
							
							<div class="quantity-box">
								<button class="btn-minus etc"></button>
								<input class="setNum" type="number" value="0" name="drinkDisplayCnt" readonly>
								<input class="setName" type="hidden" value="코카콜라 제로 1.25L">
								<input class="setCode" type="hidden" value="RDK005L3">
								<input class="setPrice" type="hidden" value="2300">
								<button class="btn-plus etc"></button>
							</div>
						</div>
					</li>
				<li class="" >
						<div class="prd-img">
							<img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_Hllio1OV.jpg" alt="코카콜라 제로 500ml"  />
								</div>
						
						<div class="prd-cont">
							<div class="subject">코카콜라 제로 500ml</div>
							<div class="price-box">
								<strong>1,700</strong>
							</div>
							
							<div class="quantity-box">
								<button class="btn-minus etc"></button>
								<input class="setNum" type="number" value="0" name="drinkDisplayCnt" readonly>
								<input class="setName" type="hidden" value="코카콜라 제로 500ml">
								<input class="setCode" type="hidden" value="RDK005L2">
								<input class="setPrice" type="hidden" value="1700">
								<button class="btn-plus etc"></button>
							</div>
						</div>
					</li>
				<li class="" >
						<div class="prd-img">
							<img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_kr91ng5H.jpg" alt="스프라이트 1.5L"  />
								</div>
						
						<div class="prd-cont">
							<div class="subject">스프라이트 1.5L</div>
							<div class="price-box">
								<strong>2,400</strong>
							</div>
							
							<div class="quantity-box">
								<button class="btn-minus etc"></button>
								<input class="setNum" type="number" value="0" name="drinkDisplayCnt" readonly>
								<input class="setName" type="hidden" value="스프라이트 1.5L">
								<input class="setCode" type="hidden" value="RDK003L1">
								<input class="setPrice" type="hidden" value="2400">
								<button class="btn-plus etc"></button>
							</div>
						</div>
					</li>
				<li class="" >
						<div class="prd-img">
							<img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_aH0XAR71.jpg" alt="스프라이트 500ml"  />
								</div>
						
						<div class="prd-cont">
							<div class="subject">스프라이트 500ml</div>
							<div class="price-box">
								<strong>1,700</strong>
							</div>
							
							<div class="quantity-box">
								<button class="btn-minus etc"></button>
								<input class="setNum" type="number" value="0" name="drinkDisplayCnt" readonly>
								<input class="setName" type="hidden" value="스프라이트 500ml">
								<input class="setCode" type="hidden" value="RDK003L3">
								<input class="setPrice" type="hidden" value="1700">
								<button class="btn-plus etc"></button>
							</div>
						</div>
					</li>
				<li class="" >
						<div class="prd-img">
							<img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_ZiDHxA8U.jpg" alt="우리 피클 L"  />
								</div>
						
						<div class="prd-cont">
							<div class="subject">우리 피클 L</div>
							<div class="price-box">
								<strong>800</strong>
							</div>
							
							<div class="quantity-box">
								<button class="btn-minus etc"></button>
								<input class="setNum" type="number" value="0" name="drinkDisplayCnt" readonly>
								<input class="setName" type="hidden" value="우리 피클 L">
								<input class="setCode" type="hidden" value="RSD152P1">
								<input class="setPrice" type="hidden" value="800">
								<button class="btn-plus etc"></button>
							</div>
						</div>
					</li>
				<li class="" >
						<div class="prd-img">
							<img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_g5R87V5j.jpg" alt="우리 피클 M"  />
								</div>
						
						<div class="prd-cont">
							<div class="subject">우리 피클 M</div>
							<div class="price-box">
								<strong>500</strong>
							</div>
							
							<div class="quantity-box">
								<button class="btn-minus etc"></button>
								<input class="setNum" type="number" value="0" name="drinkDisplayCnt" readonly>
								<input class="setName" type="hidden" value="우리 피클 M">
								<input class="setCode" type="hidden" value="RSD101P1">
								<input class="setPrice" type="hidden" value="500">
								<button class="btn-plus etc"></button>
							</div>
						</div>
					</li>
				<li class="" >
						<div class="prd-img">
							<img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_H1ApYYz5.jpg" alt="갈릭 디핑 소스 15g"  />
								</div>
						
						<div class="prd-cont">
							<div class="subject">갈릭 디핑 소스 15g</div>
							<div class="price-box">
								<strong>200</strong>
							</div>
							
							<div class="quantity-box">
								<button class="btn-minus etc"></button>
								<input class="setNum" type="number" value="0" name="drinkDisplayCnt" readonly>
								<input class="setName" type="hidden" value="갈릭 디핑 소스 15g">
								<input class="setCode" type="hidden" value="RSD088P1">
								<input class="setPrice" type="hidden" value="200">
								<button class="btn-plus etc"></button>
							</div>
						</div>
					</li>
				<li class="" >
						<div class="prd-img">
							<img class="lazyload" src="https://cdn.dominos.co.kr/domino/pc/images/bg.gif" data-src="https://cdn.dominos.co.kr/admin/upload/goods/20200316_1uKUqRes.jpg" alt="핫소스"  />
								</div>
						
						<div class="prd-cont">
							<div class="subject">핫소스</div>
							<div class="price-box">
								<strong>100</strong>
							</div>
							
							<div class="quantity-box">
								<button class="btn-minus etc"></button>
								<input class="setNum" type="number" value="0" name="drinkDisplayCnt" readonly>
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
					<div class="step-wrap step-order">
						<div class="order-wrap inner-box" >
							<a href="#" class="btn-text-more" style="display:none">전체보기</a>
								<dl class="pizza">
									<dt>피자</dt>
									<dd>
										<p class="total-pizza"></p>
										<ul class="list-text v2">
											<li class="total-dough"></li>
											<li class="total-edge"></li>
											<li class="total-topping"></li>
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
								<dt>음료 & 기타</dt>
								<dd>
									<div class="total-etc">없음</div>
								</dd>
							</dl>
							<div class="total-price">
								<div id="login_order_btn">
									<span>총 금액</span>
									<strong class="total-price_sum">0원</strong>
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

<div class="pop-layer pop-full" id="pop-dough2">
    <div class="dim"></div>
    <div class="pop-wrap">
        <div class="pop-title-wrap">
            <h2 class="pop-title">도우의 특징</h2>
        </div>
        
        <div class="pop-content pop_dough">
            <div class="dough_info">
                <div class="tit_wrap">
                    <strong>도미노피자의 <span>다양한 도우</span>를<br>입맛대로 골라 드세요!</strong>
                    <p>
                        국내산 흑미, 세계가 주목하는 6가지 슈퍼시드, FDA승인<br>
                        노블로즈W로 영양과 풍미에 고 식이섬유까지 담은 도우는 물론,<br>
                        담백하고 쫄깃한 오리지널 도우나, 겉은 바삭하고 쫄깃한 나폴리 도우,<br>
                        얇고 바삭한 씬 도우까지 선택하실 수 있습니다.
                    </p>
                </div>
                <div class="lst_dough">
                    <div class="grain_dough">
                        <img src="https://cdn.dominos.co.kr/domino/pc/images/popup/w_dough1.jpg" alt="도미노 슈퍼시드 화이버함유 도우">
                        <p class="discription">“기존 슈퍼시드 함유 도우 보다 더 맛있으면서, 더 건강한 도우를 만들 수는 없을까?”<br>계속된 고민과 연구로 탄생한 도미노 슈퍼시드 화이버 함유 도우!</p>
                        <p class="discription">국내산 흑미, 세계가 주목하는 6가지 슈퍼시드, FDA승인 *노블로즈W로<br>영양과 풍미에 고 식이섬유까지 담았습니다.</p>
                        <p class="discription">*노블로즈W? 소화효소에 분해되지 않는 FDA 승인 식이섬유 강화 원료</p>
                        <img src="https://cdn.dominos.co.kr/domino/pc/images/popup/w_dough2.jpg" alt="도우의 특징">
                        
                        <div class="superseed_dough">
                            <dl class="superseed_dough_content large">
                                <dt><img src="https://cdn.dominos.co.kr/renewal2018/w/img/superseed_1.jpg" alt="100% 국내산 흑미"></dt>
                                <dd class="cont_title">100% 국내산 흑미</dd>
                                <dd class="cont_sub">항산화, 항암, 항궤양 효과가 있다고 알려진 안토시아닌이 검은콩보다 4배 이상 함유,<br>철, 아연, 셀레늄 등의 무기염류는 일반 쌀 대비 5배 이상 함유<br>노화와 여러 질병을 일으키는 체내의 활성산소를 효과적으로 중화시키며 심장실병, 뇌졸증, 성인병, 암 예방에도 좋은 곡물</dd>
                            </dl>
                            <dl class="superseed_dough_content">
                                <dt><img src="https://cdn.dominos.co.kr/renewal2018/w/img/superseed_2.jpg" alt="아마씨"></dt>
                                <dd class="cont_title">아마씨</dd>
                                <dd class="cont_sub">타임지가 선정한 슈퍼곡물, 노화방지에 좋은 리그난이<br>석류보다 2700배나 많이 함유,<br>또한 오메가 3가 풍부해 각종 혈관질환 예방에 효과</dd>
                            </dl>
                            <dl class="superseed_dough_content">
                                <dt><img src="https://cdn.dominos.co.kr/renewal2018/w/img/superseed_3.jpg" alt="퀴노아"></dt>
                                <dd class="cont_title">퀴노아</dd>
                                <dd class="cont_sub">페루어로 '곡물의 어미니'라고 불릴 정도로<br>풍부한 영양소 함유,<br>쌀보다 7배 많은 식이섬유 함유</dd>
                            </dl>
                            <dl class="superseed_dough_content">
                                <dt><img src="https://cdn.dominos.co.kr/renewal2018/w/img/superseed_4.jpg" alt="병아리콩"></dt>
                                <dd class="cont_title">병아리콩</dd>
                                <dd class="cont_sub">클레오파트라도 즐겨먹었던 것으로 알려진 곡물,<br>우유보다 5배 많은 칼슘을 함유하여 비타민E가 풍부해<br>항노화 기능과 아르기닌 성분으로 신진대사를 활발히 해<br>젊음을 유지하는데 효과적</dd>
                            </dl>
                            <dl class="superseed_dough_content">
                                <dt><img src="https://cdn.dominos.co.kr/renewal2018/w/img/superseed_5.jpg" alt="햄프씨드"></dt>
                                <dd class="cont_title">햄프씨드</dd>
                                <dd class="cont_sub">타임지가 선정한 슈퍼곡물,<br>불포화지방산이 등푸른 생선보다 10배 많아<br>혈관 건강에 도움</dd>
                            </dl>
                            <dl class="superseed_dough_content">
                                <dt><img src="https://cdn.dominos.co.kr/renewal2018/w/img/superseed_6.jpg" alt="귀리"></dt>
                                <dd class="cont_title">귀리</dd>
                                <dd class="cont_sub">세계보건기구(WHO)에서 핀란드 등 장수 국가의 대표<br>음식으로 발표될 정도로 영양이 풍부한 곡물.<br>칼슘, 철분, 인을 비롯한 미네랄과 비타민 다량 함유</dd>
                            </dl>
                            <dl class="superseed_dough_content">
                                <dt><img src="https://cdn.dominos.co.kr/renewal2018/w/img/superseed_7.jpg" alt="렌틸콩"></dt>
                                <dd class="cont_title">렌틸콩</dd>
                                <dd class="cont_sub">풍부한 식이섬유와<br>소고기보다 1.3배 많은 단백질 함유</dd>
                            </dl>
                            
                        </div>
                    </div>
                    <ul>
                        <li>
                            <img src="https://cdn.dominos.co.kr/renewal2018/w/img/img_dough2.jpg" alt="">
                            <dl>
                                <dt>담백하고 쫄깃한 <strong>오리지널 도우</strong></dt>
                                <dd>냉장 저온숙성시킨 도우를 손으로 직접 펴서<br>만든 미국 뉴욕 스타일의 도우, 엣지의 두께는<br>2.2CM 피자 가운데는 1.3CM 내외로 담백하<br>면서도 쫄깃한 도우의 맛이 특징</dd>
                            </dl>
                        </li>
                        <li>
                            <img src="https://cdn.dominos.co.kr/renewal2018/w/img/img_dough3.jpg" alt="">
                            <dl>
                                <dt>겉은 바삭, 속은 쫄깃한 <strong>나폴리 도우</strong></dt>
                                <dd>피자의 원조인 이탈리아 나폴리 스타일의 도우,<br>씬피자와는 다르게 엣지는 살리면서 얇게<br>펴주는 것이 주요 특징. 엣지의 두께는 1.5CM,<br>피자 가운데는 0.3CM 내외이며, 도우 겉은<br>바삭하고 속은 쫄깃한 맛을 가지고 있음.</dd>
                            </dl>
                        </li>
                        <li>
                            <img src="https://cdn.dominos.co.kr/renewal2018/w/img/img_dough4.jpg" alt="">
                            <dl>
                                <dt>얇고 바삭한 <strong>씬 도우</strong></dt>
                                <dd>이탈리아 로마식 도우로 일반적인 이탈리아<br>전 지역(나폴리 지역 제외)에서 대중화되어<br>있는 얇은 도우, 엣지 없이 도우가 얇고<br>평평한 것이 특징이며 바삭함을 즐길 수 있음.</dd>
                            </dl>
                        </li>
                    </ul>
                </div>
            </div>
            
            <div class="topping_info" id="edge_info">
                <div class="tit_wrap">
                    <strong>도우 끝 <span>엣지</span>까지 숨어있는<br><span>갖가지 토핑</span>을 찾아보세요.</strong>
                </div>
                <div class="lst_topping">
                	<img src="https://cdn.dominos.co.kr/domino/pc/images/img-dough-hotdog_w.png">
                </div>
            </div>
            
        </div>
        <a href="#" class="btn-close"></a>
    </div>
</div>

<script type="text/javascript">
var curUrl = location.href.split("?")[0];
if (curUrl.indexOf("hnh") > -1 || curUrl.indexOf("mykitchen") > -1) {
	$("#pop-dough2 .pop-title").text("도우/엣지의 특징");
} else {
	$("#edge_info").hide();
}
</script>

<div class="pop-layer pop-full" id="pop-edge">
    <div class="dim"></div>
    <div class="pop-wrap">
        <div class="pop-title-wrap">
            <h2 class="pop-title">엣지의 특징</h2>
        </div>
        <div class="pop-content pop_dough">
            <div class="dough_info">
                <div class="tit_wrap">
                    <strong>도우 끝 <span>엣지</span>까지 숨어있는<br><span>갖가지 토핑</span>을 찾아보세요.</strong>
                </div>
            </div>
            <div class="topping_info">
                <div class="lst_topping">
                	<img src="https://cdn.dominos.co.kr/domino/pc/images/img-dough-hotdog_w.png">
                </div>
            </div>
        </div>
        <a href="#" class="btn-close"></a>
    </div>
</div><!-- 팝업-메뉴 상세보기 -->
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

<div class="pop-layer pop-menu" id="pop-menu-detail">
	<input type="hidden" value="" class="hide_code" />
	<div class="dim"></div>
	<div class="pop-wrap">
		<div class="pop-title-wrap">
			<div class="pop-title menu-name"></div>
		</div>
		<div class="pop-content">
			<div class="menu">
				<article class="menu-detail-area">
					<div class="menu-info">
						<div class="img-wrap">
							<div class="view-box">
								<!-- 대표 이미지 슬라이드 -->
								<div id ="detail_main_slide">
									<div class="menu-slider-view" id="pinchzoom">
									</div>
								</div>
								
								<a href="javascript:UI.layerPopUp({selId:'#pop-zoom'})" class="btn-zoom">
									<i class="ico-zoom"></i>
									<span class="hidden">확대버튼</span>
								</a>
								<!-- //대표 이미지 슬라이드 -->
							</div>
							<div class="guide-box2">
								모든 사진은 이미지컷으로 실제 제품과 다를 수 있습니다.
							</div>
						</div>
						<div class="detail-wrap">
							<div class="select-box">
								<div class="step-wrap step-detail">
									<div class="title-wrap">
										<div class="title-type">메인 토핑</div>
									</div>
									<div class="js_toggle_box detail_topping">
										
										
									</div>
								</div>
								<div class="step-wrap step-detail">
									<div class="title-wrap">
										<div class="title-type">원산지</div>
									</div>
									<div class="js_toggle_box detail_origin">
										
									</div>
								</div>
							</div>
							<div class="btn-wrap2">
								<a href="javascript:UI.layerPopUp({selId:'#pop-allergy', url:'/contents/ingredient'})" class="btn-type2-brd">원산지·영양성분 ·알레르기 유발성분</a>
								
								<!-- 사이드 메뉴  시 제거 부분   -->
								<a href="javascript:UI.layerPopUp({selId:'#pop-story', url:'/contents/story'});" class="btn-type2-brd">피자스토리</a>
									<!-- //사이드 메뉴  시 제거 부분   -->
							</div>
						</div>
					</div>
					<div class="select-box">
						<div class="step-wrap step-detail">
							<div class="title-wrap close">
								<div class="title-type">제품 상세보기</div>
								<a href="#" class="btn-toggle-close">
									<span class="hidden">열기</span>
								</a>
							</div>
							<div class="js_toggle_box detail_contents close ">
								<div class="detail-box">
									<div class="title-box">
										<h3 class="title">매콤달콤한 도미노 특제 소스와 핫치킨의 화끈한 만남,<br/>매운맛 매니아들을 위한 취향저격 피자</h3>
										<div class="guide-box3">어린이 및 매운맛에 민감한 분들에게 다소 매울 수 있습니다.</div>
									</div>
									<div class="img-box">
										<img src="" alt="블랙타이거 슈림프1" class="img-zoom" data-elem="pinchzoomer" />
									</div>
								</div>
							</div>
						</div>
						
						<div class="step-wrap step-detail">
							<div class="title-wrap close">
								<div class="title-type">메인 토핑</div>
								<a href="#" class="btn-toggle-close">
									<span class="hidden">열기</span>
								</a>
							</div>
							<div class="js_toggle_box close detail_topping">
							</div>
						</div>
						<div class="step-wrap step-detail">
							<div class="title-wrap close">
								<div class="title-type">원산지</div>
								<a href="#" class="btn-toggle-close ">
									<span class="hidden">열기</span>
								</a>
							</div>
							<div class="js_toggle_box close detail_origin">
								
							</div>
						</div>
						
						<!-- 사이드 메뉴  시 제거 부분  -->
						<div class="step-wrap step-cont">
							<div class="title-wrap close">
								<div class="title-type">도미노피자의 특징</div>
								<a href="#" class="btn-toggle-close">
									<span class="hidden">열기</span>
								</a>
							</div>
							<div class="js_toggle_box close">
								<!-- 단락마다 br 태그 2개 -->
								<strong>매일매일 만들어 신선하고 쫄깃 고소한 도우!</strong>
								최고의 도우 맛을 위해 물, 밀가루, 이스트 등을 최적의
								비율 로 매일 반죽하여 냉장저온(1~3°C) 숙성한 도미노
								피자의 도우!<br/>
								수분보유량이 우수하고 도우 입자 사이의 공기층이 적절히
								형성된 3일~7일차 도우를 사용해 전문 피자메이커가
								핸드토스드(Hand Tossed) 방식으 로 만들어 특유의 쫄깃
								하고 포실포실한 식감과 맛, 향으로 오감을 충족시킵니다.<br/><br/>
								<strong>원유부터 다른 깊고 풍부한 맛, 도미노만의 시그니처 치즈!</strong>
								도미노피자만을 위해 연구 개발된 도미노 시그니처 치즈는 
								미국 농무성에서 인정한 A등급 프리미엄 우유로 생산되어 
								최고의 맛과 풍미를 자랑하는 모차렐라 피자 치즈 입니다. 
								지방 함량과 단백질, 염도 함량을 최적의 밸런스로 맞춰 고소한 맛과 치즈 풍미를 강화, 
								부드럽고 쫄깃하게 늘어나는 치즈 스트레칭(늘어지는 정도)까지 고려한 최상의 치즈! 
								게다가 페터 크림 치즈, 체더 치즈, 콰트로 치즈 퐁듀, 
								리코타 치즈 등 고급 프리미엄 피자 치즈를 사용함으로써 
								피자의 품격을 높여 더욱 맛있는 피자를 완성하였습니다.<br/><br/>
								<strong>신선한 캘리포니아산 프리미엄 토마토 소스!</strong>
								캘리포니아는 따뜻한 햇살과 시원한 저녁 날씨 덕에
								토마토가 자라기에 최적의 환경을 제공합니다. 이 곳에
								위치한 대규모 (35만 에이커) 토마토 농장)에서 70일 동안
								잘 익은 토마토는 빠른시간 (4~6시간)내 모든 가공 처리가
								이루어져 신선함이 살아있습니다. 캘리포니아산 토마토는
								과육이 풍부해 피자 소스로 만들었을 때 당도, 산미,
								감칠맛이 극상의 조화를 이루기 때문에 피자 맛에 깊이를
								더합니다.<br/><br/>
								<strong>항상 놀랍고 새로운 프리미엄 토핑!</strong>
								도미노피자는 프리미엄 피자에 어울리는 최고급 식자재인
								와규, 직화스테이크, 게살, 블랙타이거 슈림프 등 항상
								놀라움과 새로움을 주는 혁신적인 프리미엄 토핑을 피자
								업계 최초로 적용하며 소비자의 입맛과 트렌드를 선도하고
								피자 선택의 폭을 넓히는 것은 물론 도미노피자만의 색다른
								고객 감동을 만들어 가고 있습니다.
							</div>
						</div>
						</div>
					<!-- 구매하기 버튼 -->
					<!-- //구매하기 버튼 -->
				</article>
			</div>
		</div>
		<a href="#" class="btn-close"></a>
	</div>
</div>
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

<div class="pop-layer" id="pop-zoom">
    <div class="dim"></div>
    <div class="pop-wrap">
        <div class="pop-title-wrap">
            <h2 class="pop-title">확대</h2>
        </div>
        <div class="pop-content">
            <div class="zoom-wrap">
                <div class="menu-zoom-wrap">
                    <div class="menu-big" id="zoom">
                        <img src="https://cdn.dominos.co.kr/admin/upload/goods/20200120_ZlC0dSzU.jpg" alt="블랙타이거 슈림프1" class="img-zoom-big"/>
                    </div>
                </div>
                <div class="menu-thumb">
                    <div class="item subimg1 active">
                        <a href="#">
                            <img src="https://cdn.dominos.co.kr/admin/upload/goods/20200120_ZlC0dSzU.jpg" alt="블랙타이거 슈림프1" class="img-zoom-big1"/>
                        </a>
                    </div>
                    <div class="item subimg2">
                        <a href="#">
                            <img src="https://cdn.dominos.co.kr/admin/upload/goods/20200120_ZlC0dSzU.jpg" alt="블랙타이거 슈림프2" class="img-zoom-big2"/>
                        </a>
                    </div>
                    <div class="item subimg3">
                        <a href="#">
                            <img src="https://cdn.dominos.co.kr/admin/upload/goods/20200120_ZlC0dSzU.jpg" alt="블랙타이거 슈림프3" class="img-zoom-big3"/>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <a href="#" class="btn-close"></a>
    </div>
</div>
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

<div class="pop-layer" id="pop-allergy2">
	<div class="dim"></div>
	<div class="pop-wrap">
		<div class="pop-title-wrap">
			<h2 class="pop-title">토핑 알레르기 유발성분 및 원산지</h2>
		</div>
		<div class="pop-content">
			<div class="allergy_guide">
				<p class="text-type">한국인에게 알레르기를 유발할 수 있는 12가지 식품에 대해 아래와 같이 제품별 상세 내용을 표기하여 안내해드립니다.</p>
				<dl>
					<dt>* 알레르기 유발 가능 식품 :</dt>
					<dd>토마토, 아황산류(이를 첨가하여 최종제품에 SO2로 10mg/kg 이상 함유한 경우에 한한다), 호두, 닭고기, 쇠고기, 오징어, 조개류(굴, 전복, 홍합 포함)</dd>
				</dl>
			</div>
			<div class="table-type v2">
				<table class="tbl_type">
					<caption>유발성분 표</caption>
					<colgroup>
						<col width="5%">
						<col width="30%">
						<col>
						<col>
					</colgroup>
					<thead>
						<tr>
							<th>NO</th>
							<th>토핑</th>
							<th>알레르기 유발성분 표기</th>
							<th>원산지</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>치즈류 3종<br>(도미노,리코타,체더)</td>
							<td>우유</td>
							<td>-</td>
						</tr>
						<tr>
							<td>2</td>
							<td>꼬리알새우</td>
							<td>새우</td>
							<td>-</td>
						</tr>
						<tr>
							<td>3</td>
							<td>브로콜리</td>
							<td>-</td>
							<td>-</td>
						</tr>
						<tr>
							<td>4</td>
							<td>호스래디시 스퀴드</td>
							<td>달걀, 우유, 대두, 오징어</td>
							<td>오징어 : 중국산</td>
						</tr>
						<tr>
							<td>5</td>
							<td>리얼 불고기</td>
							<td>대두, 밀, 쇠고기, 조개류(굴)</td>
							<td>쇠고기 : 호주산</td>
						</tr>
						<tr>
							<td>6</td>
							<td>고구마무스</td>
							<td>달걀, 우유, 대두, 밀</td>
							<td>-</td>
						</tr>
						<tr>
							<td>7</td>
							<td>고구마큐브</td>
							<td>-</td>
							<td>-</td>
						</tr>
						<tr>
							<td>8</td>
							<td>랍스터살</td>
							<td>-</td>
							<td>-</td>
						</tr>
						<tr>
							<td>9</td>
							<td>블랙앵거스비프</td>
							<td>대두, 밀, 쇠고기</td>
							<td>쇠고기 : 미국산</td>
						</tr>
						<tr>
							<td>10</td>
							<td>블랙타이거슈림프</td>
							<td>새우</td>
							<td>-</td>
						</tr>
						<tr>
							<td>11</td>
							<td>그릴드비프</td>
							<td>대두, 밀, 쇠고기</td>
							<td>쇠고기 : 미국산</td>
						</tr>
						<tr>
							<td>12</td>
							<td>올리브</td>
							<td>-</td>
							<td>-</td>
						</tr>
						<tr>
							<td>13</td>
							<td>파인애플</td>
							<td>-</td>
							<td>-</td>
						</tr>
						<tr>
							<td>14</td>
							<td>버섯</td>
							<td>-</td>
							<td>-</td>
						</tr>
						<tr>
							<td>15</td>
							<td>베이컨</td>
							<td>돼지고기</td>
							<td>돼지고기 : 외국산</td>
						</tr>
						<tr>
							<td>16</td>
							<td>페퍼로니</td>
							<td>돼지고기, 쇠고기</td>
							<td>돼지고기 : 국내산, 쇠고기 : 호주산</td>
						</tr>
						<tr>
							<td>17</td>
							<td>감자</td>
							<td>대두</td>
							<td>-</td>
						</tr>
						<tr>
							<td>18</td>
							<td>햄</td>
							<td>달걀, 우유, 대두, 밀, 돼지고기, 쇠고기</td>
							<td>돼지고기 : 국내산</td>
						</tr>
						<tr>
							<td>19</td>
							<td>마요네즈</td>
							<td>달걀, 대두</td>
							<td>-</td>
						</tr>
						<tr>
							<td>20</td>
							<td>베이컨칩</td>
							<td>돼지고기</td>
							<td>돼지고기 : 미국산</td>
						</tr>
						<tr>
							<td>21</td>
							<td>로스트포테이토</td>
							<td>대두</td>
							<td>-</td>
						</tr>
						<tr>
							<td>22</td>
							<td>양파</td>
							<td>-</td>
							<td>-</td>
						</tr>
						<tr>
							<td>23</td>
							<td>옥수수</td>
							<td>-</td>
							<td>-</td>
						</tr>
						<tr>
							<td>24</td>
							<td>피망</td>
							<td>-</td>
							<td>-</td>
						</tr>
						<tr>
							<td>25</td>
							<td>불고기</td>
							<td>대두, 밀, 아황산류, 쇠고기</td>
							<td>쇠고기 : 미국산, 호주산 섞음</td>
						</tr>
						<tr>
							<td>26</td>
							<td>포크</td>
							<td>달걀, 대두, 밀, 돼지고기, 쇠고기</td>
							<td>돼지고기 : 국내산</td>
						</tr>
						<tr>
							<td>27</td>
							<td>파르메산 치즈</td>
							<td>우유</td>
							<td>-</td>
						</tr>
						<tr>
							<td>28</td>
							<td>콰트로치즈퐁듀</td>
							<td>우유</td>
							<td>-</td>
						</tr>
						<tr>
							<td>29</td>
							<td>로스트 방울 토마토 다이스</td>
							<td>토마토</td>
							<td>-</td>
						</tr>
						<tr>
							<td>30</td>
							<td>스노우 크랩</td>
							<td>게, 달걀, 우유, 대두</td>
							<td>-</td>
						</tr>
						<tr>
							<td>31</td>
							<td>립 스테이크</td>
							<td>대두, 밀, 쇠고기</td>
							<td>쇠고기 : 호주산</td>
						</tr>
						<tr>
							<td>32</td>
							<td>치킨 큐브</td>
							<td>대두, 밀, 토마토, 닭고기, 쇠고기</td>
							<td>닭고기 : 국내산</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<a href="#" class="btn-close"></a>
	</div>
</div></section>
	<!-- //content -->
	<div id="footer"></div>
</div>
<!-- //container -->


<!-- 행태정보 변수 설정 -->
<script type="text/javascript">
	_TRK_PI = "PDV";

	_TRK_CP = "/메뉴/상세/RPZ298AL";	// 카테고리명 전달
	_TRK_PN = 'RPZ298AL_치즈 크레이프 샌드';	// 상품(컨텐츠)명 전달 - pcode
	_TRK_PND = '치즈 크레이프 샌드';	// 상품(컨텐츠)명 전달 - name
	_TRK_MF = "도미노피자";					// 상품(컨텐츠)의 브랜드명 전달
	
</script>
<!-- // 행태정보 변수 설정 -->

<!-- GTM event : view_item -->
	<script>
	dataLayer.push({
		"ecommerce": {
			"item_id" : "RPZ298AL".substr(0,6),
			"item_name" : "치즈 크레이프 샌드",
			"price" : "34900",
			"item_category" : "RPZ298AL".substr(0,3),
			"item_list_name" : "RPZ298AL".substr(0,3),
			"item_list_id" : "RPZ298AL".substr(0,3)
		}
	});
	</script>
<!-- GTM event member_info (gender+age+grade) -->
	<script type="text/javascript">
	var sx = cookieManager.getCookie('SEX');
	var ag = cookieManager.getCookie('MY_LEVEL');
	var m = "";
	switch (sx) {
		case "F" : sx = "A"; break;
		case "M" : sx = "S"; break;
		default : sx = "D"; break;
	} 
	m = sx + ag;
	dataLayer.push({
		"ecommerce": {
			"member": m
		}
	});
	</script>

<!-- 아래의 incLayoutFooter.jsp 주석 풀때 <div id="footer"></div> 제거 -->
