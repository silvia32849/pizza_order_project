<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/style.css" >
    <link rel="stylesheet" type="text/css" href="css/orderdetail.css" >
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
            
            

            <section id="content">
                <div class="sub-type mypage">
                    <div class="inner-box">
                        <div class="page-title-wrap">
                            <h2 class="page-title">나의 정보</h2>
                            <div class="depth-area">
                                <ol>
                                    <li><a href="/main">홈</a></li>
                                    <li><a href="/mypage/myOrderList">나의 정보</a></li>
                                    <li><strong>주문내역</strong></li>
                                </ol>
                            </div>
                        </div>
                        <article class="mypage-wrap mypage-grade">
                            <div class="menu-nav-wrap">
                                    <div class="menu-nav">
                                        <ul>
                                            <li><a href="/mypage/myLevel">매니아 등급</a></li>
                                            <li class="active"><a href="/mypage/myOrderList">주문내역</a></li>
                                            <li><a href="/mypage/myCoupon">쿠폰함</a></li>
                                            <li><a href="/mypage/myMoneyVoucher">금액상품권</a></li>
                                            <li><a href="/mypage/qustionList">1:1문의/칭찬</a></li>
                                            <li><a href="/member/userinfoConfirm">정보수정</a></li>
                                        </ul>
                                    </div>
                                </div>
                            <div class="order-view">
                                <div class="order-top">
                                    <span class="type">포장</span>
                                    <span class="date">
                                        <span class="tit">주문일시</span>
                                        2023-05-26 20:16</span>
                                    <span class="num">
                                        <span class="tit">주문번호</span>
                                        20230526866658990026</span>
                                    </div>
                                <div class="order-center">
                                    <div class="state">
                                        <strong>
                                            
                                                                수령완료
                                                            </strong>
                                    </div>
                                    </div>
                                
                                <!-- S: 201102 도미노스팟 로봇배달 -->
                                <!-- E: 201102 도미노스팟 로봇배달 -->
        
                                <div class="menu-info-wrap">
                                    <div class="menu-info">
                                        <div class="info-box">
                                            <div class="title-type2">주문내역</div>
                                            <p>와일드 와일드 웨스트 스테이크+블랙타이거 슈림프 슈퍼시드 화이버 함유 도우L x 1  /  38,400원</p>
                                                    <p>코카콜라 1.25L x 1  /  2,300원</p>
                                                    <p>[기본제공]갈릭디핑소스 x 2  / 0원</p>
                                            <p>[기본제공]핫소스 x 1  / 0원</p>
                                            </div>
                                    </div>
                                    <div class="pay-info">
                                                <dl>
                                                            <dt>주문금액</dt>
                                                            <dd><em>40,700</em>원</dd>
                                                        </dl>
                                                    <dl class="discount">
                                                <dt>할인 금액</dt>
                                                <dd><em>-20,350</em>원</dd>
                                            </dl>
                                            <ul class="apply">
                                                    <li>kt_daldal_50% 50%</li>
                                                </ul>
                                            <dl class="total">
                                                    <dt>결제금액</dt>
                                                    <dd><em>20,350</em>원</dd>
                                                </dl>
                                            </div>
                                </div>
                                <div class="order-info">
                                    <div class="title-type2">주문정보</div>
                                    <dl>
                                        <dt>결제방법</dt>
                                        <dd>
                                            신용카드(선결제)&nbsp;20,350원
                                            </dd>
                                        <dd style="width:100%; color:#FF752D">
                                            </dd>
                                    </dl>
                                    <dl>
                                        <dt>수령인</dt>
                                        <dd>임범준</dd>
                                    </dl>
                                    <dl>
                                        <dt>수령인 연락처</dt>
                                        <dd>010-2062-5328</dd>
                                    </dl>
                                    <dl>
                                        <dt>포장요청시간</dt>
                                        <dd>바로 주문</dd>
                                    </dl>
                                    <dl>
                                        <dt>매장주소</dt>
                                            <dd>
                                            서울특별시 송파구 <input type="hidden" id="myInput" value="서울특별시 송파구 ">
                                                <button type="button" class="order_view_copy" onclick="copy_to_clipboard();">복사</button>
                                            </dd>
                                    </dl>
                                    <dl>
                                        <dt>매장정보</dt>
                                        <dd>석촌점&nbsp;<a href="tel:02-2202-3082" class="tel">02-2202-3082</a></dd>
                                    </dl>
                                    <dl>
                                        <dt>추가요청</dt>
                                        <dd></dd>
                                    </dl>
                                </div>
                                <div class="btn-wrap">
                                    <div class="t-l">
                                                <a href="javascript:goList();" class="btn-type v5">목록</a>
                                            </div>
                                            <div class="t-r">
                                                        <a href="javascript:profileOrder('R');" class="btn-type v3">재주문</a>
                                                    </div>
                                                </div>
                            </div>
                        </article>
                    </div>
                </div>
            </section>











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