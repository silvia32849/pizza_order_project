<%@page import="com.itwill.pizza.userinfo.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="login_check.jspf" %>  
<%
	
	UserService userService=new UserService();
	User user=userService.findUser(sUserId);
	
	String email = user.getUserEmail();
	int idx = email.indexOf("@");
	String email1 = email.substring(0, idx);
	String email2 = email.substring(idx+1);
	
	String jumin = user.getUserJumin();
	String year = "19"+jumin.substring(0, 2);
	String month = jumin.substring(2,4);
	String day = jumin.substring(4, 6);
	
	String phone = user.getUserPhone();
	String phone1 = phone.substring(4,8);
	String phone2 = phone.substring(9);
	

%>    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css" >
<link rel="stylesheet" type="text/css" href="css/userinfo.css" >

<script type="text/javascript">


	function userRemove() {
		
		if(confirm("회원 탈퇴하시겠습니까?")) {
			document.frm.action = "user_remove_action.jsp";
			document.frm.method='POST';
			document.frm.submit();
		}
	}

</script>

<script type="text/javascript">
	//초기화(리셋)
	function location.reload () {
		document.frm.action = "user_info_form.jsp";
		document.frm.method = 'POST';
		document.frm.submit();
	}
	
	
	
</script>

<script type="text/javascript">
	function update() {
		document.frm.action = "user_info_action.jsp";
		document.frm.method = 'POST';
		document.frm.submit();
	}

</script>


<title>도미노피자</title>
</head>
<body>
    
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
                                <a href="board_list.jsp" class="tab updated">
                                    <span class="tab_name">고객센터</span>
                                </a>
                            </li>
                         </ul>
                    </nav>
                </div>
            </div>
            
            


            <!-- container 시작 -->
            <div id="container">
                <section id="content">
                    <div class="sub-type mypage">
                        <div class="inner-box">
                            <div class="page-title-wrap">
                                <h2 class="page-title">나의 정보</h2>
                                <div class="depth-area">
                                    <ol>
                                        <li><a href="user_loginsuccess_form.jsp">홈</a></li>
                                        <li><a href="user_info_form.jsp">나의 정보</a></li>
                                        <li><strong>정보수정</strong></li>
                                    </ol>
                                </div>
                            </div>
                            <article class="mypage-wrap mypage-grade mypage-info">
                                <div class="menu-nav-wrap">
                                    <div class="menu-nav">
                                        <ul>
                                            <li class="li_tab">
                                                <a href="order_list_form.jsp" class="tab">
                                                    <span class="tab_name">주문내역</span>
                                                </a>
                                            </li>
                                            <li class="li_tab">
                                                <a href="user_info_form.jsp" class="tab">
                                                    <span class="tab_name">나의정보</span>
                                                </a>
                                            </li>
                                            <li class="li_tab">
                                                <a href="#" class="tab updated">
                                                    <span class="tab_name">주소록</span>
                        
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="info-wrap">
                                    <div class="user">
                                            개인정보 확인
                                    </div>
                                    <div class="text-type">회원정보를 정확히 기입하시면 다양한 서비스를 원활하게 이용할 수 있습니다.</div>
                                </div>
                                <form name="frm" id="frm"  method="post">
                                <div class="myinfo-wrap">
                                    <input type="hidden" name="old_auth_type" id="old_auth_type" value="H">
                                    <input type="hidden" name="old_hand_tel" id="old_hand_tel" value="01020625328">
                                    <input type="hidden" name="old_email" id="old_email" value="bjbj0705@naver.com">
                                    <input type="hidden" name="old_dm_fl" id="old_dm_fl" value="N">
                                    <input type="hidden" name="old_o_dm_fl" id="old_o_dm_fl" value="N">
                                    <input type="hidden" name="old_ds_fl" id="old_ds_fl" value="N">
                                    <input type="hidden" name="auth_type" id="auth_type" value="H">
                                    <input type="hidden" name="cust_id" id="cust_id" value="2022042014027">
                                    <input type="hidden" name="hand_tel_agency" id="hand_tel_agency">
                                    <input type="hidden" name="hand_tel1" id="hand_tel1">
                                    <input type="hidden" name="name" id="name" value="임범준">
                                    <input type="hidden" name="id" id="id" value="KAKAO_20220420550625">
                                    <input type="hidden" name="job" id="job" value="">
                                    <input type="hidden" name="birth" id="birth" value="">
                                    <input type="hidden" name="email" id="email" value="">
                                    <input type="hidden" name="dm_fl" id="dm_fl" value="N">
                                    <input type="hidden" name="o_dm_fl" id="o_dm_fl" value="N">
                                    <input type="hidden" name="ds_fl" id="ds_fl" value="N">
                                    <!-- <input type="hidden" name="hdnAuthKey" id="hdnAuthKey" value="" /> -->
                                    <input type="hidden" name="hdnAuthChk" id="hdnAuthChk" value="N">
                                    <input type="hidden" name="email_auth_yn" id="email_auth_yn" value="N">
                                    <input type="hidden" name="security_check" id="security_check" value="0">
                                    <input type="hidden" name="id_date" value="">
                                    <input type="hidden" name="id_uuid" value="">
                                    <input type="hidden" name="id_link_YN" value="">
                                    <input type="hidden" name="id_uuid2" value="">
                                    <input type="hidden" name="id_link_YN2" value="">
                                    <input type="hidden" name="id_uuid4" id="id_uuid4" value="">
                                    <input type="hidden" name="id_link_YN4" id="id_link_YN4" value="N">
                                    <input type="hidden" name="id_uuid5" id="id_uuid5" value="2209731532">
                                    <input type="hidden" name="id_link_YN5" id="id_link_YN5" value="Y">
                                    <div class="form">
                                        <div class="line"></div>
                                        <dl>
                                            <dt>이름</dt>
                                            <dd>

                                                <span id="name_area"><%=user.getUserName() %></span>
                                                <!--
                                                <div class="name-change">
                                                    <span>본인인증</span>
                                                    <a href="javascript:changeName('kg');" class="btn-type v7">휴대전화 인증</a>
                                                    <a href="javascript:changeName('ipin');" class="btn-type v7">IPIN 인증</a>
                                                </div>
                                                <div class="notice-type-ul CBrand3 inner-pad-top">
                                                    <ul>
                                                        <li>개명을 한 경우, 본인 인증 시 이름 정보 변경이 가능합니다.</li>
                                                    </ul>
                                                </div>
                                                -->
                                            </dd>
                                            
                                        </dl>
                                        <dl>
                                            <dt class="center">아이디</dt>
                                            <dd><%=user.getUserId() %></dd>
                                        </dl>
                                        <dl class="pw" style="">
                                            <dt>현재 비밀번호</dt>
                                            <dd>
                                                <div class="form-item number">
                                                    <input type="password" name="old_passwd" id="old_passwd" maxlength="20" value="<%=user.getUserPw()%>">
                                                </div>
                                                <div class="text-type4" id="old_passwd_alert" style="display:none;"></div>
                                            </dd>
                                            <dt>새 비밀번호</dt>
                                            <dd>
                                                <div class="form-item number">
                                                    <input type="password" name="passwd" id="passwd" maxlength="20" value="" placeholder="8~20자 영문대소문자,숫자,특수문자 사용가능">
                                                </div>
                                                <div class="text-type4" id="passwd_alert" style="display:none;"></div>
                                            </dd>
                                            <dt>새 비밀번호 확인</dt>
                                            <dd>
                                                <div class="form-item number">
                                                    <input type="password" name="confirmpw" id="confirmpw" maxlength="20" value="" placeholder="8~20자 영문대소문자,숫자,특수문자 사용가능">
                                                </div>
                                                <div class="text-type4" id="confirmpw_alert" style="display:none;"></div>
                                            </dd>
                                        </dl>
                                       
                                        <dl>
                                            <dt class="center">생년월일</dt>
                                            <dd>
                                                <div class="form-group v2">
                                                    <div class="form-item birth">
                                                        
                                                        <div class="select-type2">
                                                            <select name="byear" id="byear" class="selected" disabled="" >
                                                                <option><%=year%></option>
                                                                <option value="1900">1900</option>
                                                                <option value="1901">1901</option>
                                                                <option value="1902">1902</option>
                                                                <option value="1903">1903</option>
                                                                <option value="1904">1904</option>
                                                                <option value="1905">1905</option>
                                                                <option value="1906">1906</option>
                                                                <option value="1907">1907</option>
                                                                <option value="1908">1908</option>
                                                                <option value="1909">1909</option>
                                                                <option value="1910">1910</option>
                                                                <option value="1911">1911</option>
                                                                <option value="1912">1912</option>
                                                                <option value="1913">1913</option>
                                                                <option value="1914">1914</option>
                                                                <option value="1915">1915</option>
                                                                <option value="1916">1916</option>
                                                                <option value="1917">1917</option>
                                                                <option value="1918">1918</option>
                                                                <option value="1919">1919</option>
                                                                <option value="1920">1920</option>
                                                                <option value="1921">1921</option>
                                                                <option value="1922">1922</option>
                                                                <option value="1923">1923</option>
                                                                <option value="1924">1924</option>
                                                                <option value="1925">1925</option>
                                                                <option value="1926">1926</option>
                                                                <option value="1927">1927</option>
                                                                <option value="1928">1928</option>
                                                                <option value="1929">1929</option>
                                                                <option value="1930">1930</option>
                                                                <option value="1931">1931</option>
                                                                <option value="1932">1932</option>
                                                                <option value="1933">1933</option>
                                                                <option value="1934">1934</option>
                                                                <option value="1935">1935</option>
                                                                <option value="1936">1936</option>
                                                                <option value="1937">1937</option>
                                                                <option value="1938">1938</option>
                                                                <option value="1939">1939</option>
                                                                <option value="1940">1940</option>
                                                                <option value="1941">1941</option>
                                                                <option value="1942">1942</option>
                                                                <option value="1943">1943</option>
                                                                <option value="1944">1944</option>
                                                                <option value="1945">1945</option>
                                                                <option value="1946">1946</option>
                                                                <option value="1947">1947</option>
                                                                <option value="1948">1948</option>
                                                                <option value="1949">1949</option>
                                                                <option value="1950">1950</option>
                                                                <option value="1951">1951</option>
                                                                <option value="1952">1952</option>
                                                                <option value="1953">1953</option>
                                                                <option value="1954">1954</option>
                                                                <option value="1955">1955</option>
                                                                <option value="1956">1956</option>
                                                                <option value="1957">1957</option>
                                                                <option value="1958">1958</option>
                                                                <option value="1959">1959</option>
                                                                <option value="1960">1960</option>
                                                                <option value="1961">1961</option>
                                                                <option value="1962">1962</option>
                                                                <option value="1963">1963</option>
                                                                <option value="1964">1964</option>
                                                                <option value="1965">1965</option>
                                                                <option value="1966">1966</option>
                                                                <option value="1967">1967</option>
                                                                <option value="1968">1968</option>
                                                                <option value="1969">1969</option>
                                                                <option value="1970">1970</option>
                                                                <option value="1971">1971</option>
                                                                <option value="1972">1972</option>
                                                                <option value="1973">1973</option>
                                                                <option value="1974">1974</option>
                                                                <option value="1975">1975</option>
                                                                <option value="1976">1976</option>
                                                                <option value="1977">1977</option>
                                                                <option value="1978">1978</option>
                                                                <option value="1979">1979</option>
                                                                <option value="1980">1980</option>
                                                                <option value="1981">1981</option>
                                                                <option value="1982">1982</option>
                                                                <option value="1983">1983</option>
                                                                <option value="1984">1984</option>
                                                                <option value="1985">1985</option>
                                                                <option value="1986">1986</option>
                                                                <option value="1987">1987</option>
                                                                <option value="1988">1988</option>
                                                                <option value="1989">1989</option>
                                                                <option value="1990">1990</option>
                                                                <option value="1991">1991</option>
                                                                <option value="1992">1992</option>
                                                                <option value="1993">1993</option>
                                                                <option value="1994">1994</option>
                                                                <option value="1995">1995</option>
                                                                <option value="1996">1996</option>
                                                                <option value="1997">1997</option>
                                                                <option value="1998">1998</option>
                                                                <option value="1999">1999</option>
                                                                <option value="2000">2000</option>
                                                                <option value="2001">2001</option>
                                                                <option value="2002">2002</option>
                                                                <option value="2003">2003</option>
                                                                <option value="2004">2004</option>
                                                                <option value="2005">2005</option>
                                                                <option value="2006">2006</option>
                                                                <option value="2007">2007</option>
                                                                <option value="2008">2008</option>
                                                                <option value="2009">2009</option>
                                                                <option value="2010">2010</option>
                                                                <option value="2011">2011</option>
                                                                <option value="2012">2012</option>
                                                                <option value="2013">2013</option>
                                                                <option value="2014">2014</option>
                                                                <option value="2015">2015</option>
                                                                <option value="2016">2016</option>
                                                                <option value="2017">2017</option>
                                                                <option value="2018">2018</option>
                                                                <option value="2019">2019</option>
                                                                <option value="2020">2020</option>
                                                                <option value="2021">2021</option>
                                                                <option value="2022">2022</option>
                                                                <option value="2023">2023</option>
                                                                </select>
                                                        </div>
                                                        <div class="select-type2">
                                                            <select name="bmonth" id="bmonth" class="selected" disabled="" >
                                                                <option><%=month %></option>
                                                                <option value="1">1</option>
                                                                <option value="2">2</option>
                                                                <option value="3">3</option>
                                                                <option value="4">4</option>
                                                                <option value="5">5</option>
                                                                <option value="6">6</option>
                                                                <option value="7">7</option>
                                                                <option value="8">8</option>
                                                                <option value="9">9</option>
                                                                <option value="10">10</option>
                                                                <option value="11">11</option>
                                                                <option value="12">12</option>
                                                                </select>
                                                        </div>
                                                        <div class="select-type2">
                                                            <select name="bday" id="bday" class="selected" disabled="" >
                                                                <option><%=day %></option>
                                                                <option value="1">1</option>
                                                                <option value="2">2</option>
                                                                <option value="3">3</option>
                                                                <option value="4">4</option>
                                                                <option value="5">5</option>
                                                                <option value="6">6</option>
                                                                <option value="7">7</option>
                                                                <option value="8">8</option>
                                                                <option value="9">9</option>
                                                                <option value="10">10</option>
                                                                <option value="11">11</option>
                                                                <option value="12">12</option>
                                                                <option value="13">13</option>
                                                                <option value="14">14</option>
                                                                <option value="15">15</option>
                                                                <option value="16">16</option>
                                                                <option value="17">17</option>
                                                                <option value="18">18</option>
                                                                <option value="19">19</option>
                                                                <option value="20">20</option>
                                                                <option value="21">21</option>
                                                                <option value="22">22</option>
                                                                <option value="23">23</option>
                                                                <option value="24">24</option>
                                                                <option value="25">25</option>
                                                                <option value="26">26</option>
                                                                <option value="27">27</option>
                                                                <option value="28">28</option>
                                                                <option value="29">29</option>
                                                                <option value="30">30</option>
                                                                <option value="31">31</option>
                                                                </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                </dd>
                                        </dl>
                                        <dl>
                                            <dt class="center">휴대전화</dt>
                                            <dd>
                                                <div class="form-group v2">
                                                    <div class="form-item">
                                                        <div class="select-type2">
                                                            <select name="sel_hand_tel1" id="sel_hand_tel1" class="selected">
                                                                <option value="010" selected="">010</option>
                                                                <option value="011">011</option>
                                                                <option value="016">016</option>
                                                                <option value="017">017</option>
                                                                <option value="018">018</option>
                                                                <option value="019">019</option>
                                                            </select>
                                                        </div>
                                                        <input type="text" name="hand_tel2" id="hand_tel2" maxlength="4" value="<%=phone1%>">
                                                        <input type="text" name="hand_tel3" id="hand_tel3" maxlength="4" value="<%=phone2%>">
                                                    </div>
                                                    <div class="text-type4" id="tel_alert" style="display:none;"></div>
                                                </div>
            
                                            </dd>
                                        </dl>
                                        
                                        
                                        <dl>
                                            <dt class="top name">이메일</dt>
                                            <dd>
                                                <div class="form-group v2">
                                                    <div class="form-item e-mail">
                                                        <input type="text" name="email1" id="email1" value="<%=email1 %>" disabled="" >
                                                        <span>@</span>
                                                        <input type="text" name="email2" id="email2" value="<%=email2 %>" disabled="">
                                                        <div class="select-type2">
                                                            <select name="email3" id="email3" onchange="checkEmailState($('#email3'),$('#email2'))" disabled="">
                                                                <option>선택</option>
                                                                <option value="naver.com" selected="">네이버</option>
                                                                <option value="hanmail.net">한메일</option>
                                                                <option value="gmail.com">지메일</option>
                                                                <option value="hotmail.com">핫메일</option>
                                                                <option value="nate.com">네이트</option>
                                                                <option value="WRITE">직접입력</option>
                                                            </select>
                                                        </div>
                                                        </div>
                                                    <div class="notice-type-ul CBrand3 inner-pad-top">
                                                            <ul>
                                                                <li>SNS 간편가입 회원은 각 SNS에서 제공(인증) 받은 이메일 정보를 수집·이용하므로 직접 수정이 불가합니다.<br>
                                                                    수정이 필요할 경우 고객센터로 문의해 주세요.</li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                            </dd>
                                        </dl>
                                        
                                        <dl>
                                            <dt class="center">성별(선택)</dt>
                                            <dd>
                                                <div class="form-group v2">
                                                    <div class="form-item gender">
                                                        <div class="chk-wrap">
                                                            <div class="chk-box selected">
                                                                <input type="radio" name="sex" id="sex_n" value="N" checked="checked">
                                                                <label class="checkbox" for="sex_n"></label> 
                                                                <label for="sex_n">정보제공 안함</label>
                                                            </div>
                                                            <div class="chk-box disabled">
                                                                <input type="radio" name="sex" id="sex_m" value="M" disabled="">
                                                                <label class="checkbox" for="sex_m"></label>
                                                                <label for="sex_m">남성</label>
                                                            </div>
                                                            <div class="chk-box disabled">
                                                                <input type="radio" name="sex" id="sex_f" value="F" disabled="">
                                                                <label class="checkbox" for="sex_f"></label>
                                                                <label for="sex_f">여성</label>
                                                            </div>
                                                        </div>
                                                        <div class="text-type4" id="gender_alert" style="display:none;"></div>
                                                    </div>
                                                </div>
                
                                            </dd>
                                        </dl>
                                        </div>
                                    <div class="btn-wrap">
                                        <a href="javascript:location.reload();" class="btn-type v4">초기화</a>
                                        <a href="javascript:update(); " class="btn-type v6">수정하기</a>
                                        <p class="desc">도미노피자를 더 이상 이용하지 않는다면<a href="javascript:userRemove();" class="btn-link"><span>회원탈퇴 바로가기</span></a></p>
                                    </div>
                                    
                                </div>
                                </form>
                            </article>
                        </div>
                    </div>
                </section>
            </div>









            <!--  footer 시작 -->
            <div class="footer lg">
                <div class="inner">
                    <div class="coporation_area">
                        <div class="business_info">
                            <div class="info_list">
                                <dl class="info_item">
                                    <dt class="business_title">
                                        도미노 주식회사 · 대표이사 오광현, 김영훈
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