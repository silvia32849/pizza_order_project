<%@page import="com.itwill.pizza.userinfo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

String msg=(String)request.getAttribute("msg");
if(msg==null)msg="";



%> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/usercreate.css">

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
	function userCreate() {
		if (document.frm.name.value == "") {
			alert("이름을 입력하십시요.");
			document.frm.name.focus();
			return false;
		}
		
		
		if (document.frm.userId.value == "") {
			alert("사용자 아이디를 입력하십시요.");
			document.frm.userId.focus();
			return false;
		}
		
		
		
		
		let pw = document.getElementById('passwd').value;
		let confirmpw = document.getElementById('confirmpw').value;
		
		let num = pw.search(/[0-9]/g);
		let eng = pw.search(/[a-z]/ig);
		let spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
			
		if (document.frm.passwd.value == "") {
			alert("비밀번호를 입력하십시요.");
			document.frm.passwd.focus();
			return false;
		}else if(document.frm.passwd.length < 8 || document.frm.passwd.length > 20){
			alert("비밀번호는 8 ~ 20자 미만으로 작성해주세요!");
			document.frm.passwd.focus();
			return false;
		}else if(num < 0 || eng < 0 || spe < 0 ){
			  alert("영문, 숫자, 특수문자를 혼합하여 입력해주세요.");
			  return false;
		}
		
			
			
		if (document.frm.confirmpw.value == "") {
			alert("비밀번호확인을 입력하십시요.");
			document.frm.confirmpw.focus();
			return false;
		}
		
		if(document.frm.passwd.value != document.frm.confirmpw.value){
			alert("비밀번호가 일치하지 않습니다.");
			frm.confirmpw.focus();
			return false;
		}
			
			
		
		if (document.frm.byear.value == "") {
			alert("생년월일을 입력하시오.");
			document.frm.byear.focus();
			return false;
		}
		
		if (document.frm.bmonth.value == "") {
			alert("생년월일을 입력하시오.");
			document.frm.bmonth.focus();
			return false;
		}
		
		if (document.frm.bday.value == "") {
			alert("생년월일을 입력하시오.");
			document.frm.bday.focus();
			return false;
		}
		
		if (document.frm.sel_hand_tel1.value == "") {
			alert("전화번호를 입력하시오.");
			document.frm.sel_hand_tel1.focus();
			return false;
		}
		
		if (document.frm.hand_tel2.value == "") {
			alert("전화번호를 입력하시오.");
			document.frm.hand_tel2.focus();
			return false;
		}
		
		if (document.frm.hand_tel3.value == "") {
			alert("전화번호를 입력하시오.");
			document.frm.hand_tel3.focus();
			return false;
		}
		
		
		if (document.frm.email1.value == "") {
			alert("이메일 주소를 입력하십시요.");
			document.frm.email1.focus();
			return false;
		}
		
		if (document.frm.email2.value == "") {
			alert("이메일 주소를 입력하십시요.");
			document.frm.email2.focus();
			return false;
		}
		
		if (document.frm.sample4_postcode.value == "") {
			alert("주소를 입력하십시요.");
			document.frm.sample4_postcode.focus();
			return false;
		}
		
		
		
		
		document.frm.action = "user_create_action.jsp";
		document.frm.method='POST';
		document.frm.submit();
	}

	
	/*
	아이디중복체크
	*/
	function openIdCheck(){
		var left = Math.ceil(( window.screen.width)/5);
		var top = Math.ceil(( window.screen.height)/5); 
		let idCheckWindow = window.open("user_id_check_form.jsp","checkForm","width=430,height=200,top="+top+",left="+left+",resizable = no,location=no, directories=no, status=no, menubar=no, scrollbars=no,copyhistory=no");
	}
	
	
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                //document.getElementById('sample4_postcode').value = data.zonecode;
                //document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_postcode").value = data.jibunAddress;
                console.log(data);
            }
        }).open();
    }
</script>




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
                            <a href="user_login.html" class="header_top_link"> 로그인</a>
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






        <!-- container 시작 -->
        <div id="container">
            <section id="content">
                <div class="sub-type member">
                    <div class="inner-box">
                        <div class="page-title-wrap v2">
                            <h2 class="page-title">회원가입</h2>
                            <div class="depth-area">
                                <ol>
                                    <li><a href="/main">홈</a></li>
                                    <li><strong>회원가입</strong></li>
                                </ol>
                            </div>
                        </div>
                        <article class="join-area">
                            <div class="join-step2">
                               
                                <div class="myinfo-wrap">
                                    <div class="form">
                                        <form name="frm" id="frm" action="/member/regStep2Proc" method="post">
                                            <input type="hidden" name="parent_email" id="parent_email">
                                            <input type="hidden" name="dupInfo" id="dupInfo"
                                                value="MC0GCCqGSIb3DQIJAyEAZcQ6T50yeHxNMuelJWv3IXm1TEbR1iKn+WhTaeihqVs=">
                                            <input type="hidden" name="connInfo" id="connInfo"
                                                value="NTkFUdRbit9YDp2Dt+qacekW1ty+xxOgD60K5rggSPnAXG2Pcdqof1fpVwQRUCO5/f/eDAOnR6JjZ9XhLLRbqw==">
                                            <input type="hidden" name="auth_type" id="auth_type" value="kg">
                                            <input type="hidden" name="age" id="age" value="27">
                                            <input type="hidden" name="vno" id="vno" value="">
                                            <input type="hidden" name="birth" id="birth" value="">
                                            <input type="hidden" name="job" id="job" value="">
                                            <input type="hidden" name="idDupChk" id="idDupChk" value="N">
                                            <input type="hidden" name="frnDupChk" id="frnDupChk" value="N">
                                            <input type="hidden" name="hand_tel_agency" id="hand_tel_agency">
                                            <input type="hidden" name="hand_tel1" id="hand_tel1">
                                            <input type="hidden" name="email" id="email">
                                            <input type="hidden" name="dm_fl" id="dm_fl" value="N">
                                            <input type="hidden" name="o_dm_fl" id="o_dm_fl" value="N">
                                            <input type="hidden" name="ds_fl" id="ds_fl" value="N">
                                            <input type="hidden" name="hdnAuthKey" id="hdnAuthKey" value="">
                                            <input type="hidden" name="hdnAuthChk" id="hdnAuthChk" value="Y">
                                            <input type="hidden" name="joinptype" id="joinptype" value="D">
                                            <input type="hidden" name="email_auth_yn" id="email_auth_yn" value="">

                                            <dl>
                                                <dt class="top">이름</dt>
                                                <dd>
                                                    <div class="form-item name">
                                                        <input type="text" placeholder="" id="name" name="name">
                                                    </div>
                                                </dd>
                                            </dl>
                                            <dl>
                                                <dt class="top">아이디</dt>
                                                <dd>
                                                    <div class="form-item name">
                                                        <input onclick="openIdCheck();" type="text" name="userId" id="userId"  maxlength="16" style="height: 41px" readonly="readonly">
                                                        <a href="javascript:openIdCheck();" 
                                                            class="btn-type v7">중복확인</a>
                                                            <font color="red"><%=msg%></font>
                                                    </div>
                                                    <div class="text-type4" id="id_alert" style="display:none;"></div>
                                                </dd>

                                            </dl>
                                            <dl>
                                                <dt class="top">비밀번호</dt>
                                                <dd class="mb">
                                                    <div class="form-item number">
                                                        <input type="password" name="passwd" id="passwd" maxlength="16"
                                                            placeholder="8~16자 영문대소문자,숫자, 특수문자 사용가능" >
                                                    </div>
                                                    <div class="text-type4" id="passwd_alert" style="display:none;">
                                                    </div>
                                                </dd>
                                                <dt class="top">비밀번호 확인</dt>
                                                <dd>
                                                    <div class="form-item number">
                                                        <input type="password" name="confirmpw" id="confirmpw"
                                                            maxlength="16" >
                                                    </div>
                                                    <div class="text-type4" id="confirmpw_alert" style="display:none;">
                                                    </div>
                                                </dd>
                                            </dl>
                                            <dl>
                                                <dt class="top">생년월일</dt>
                                                <dd>
                                                    <div class="form-group v2">
                                                        <div class="form-item birth">
                                                            <div class="select-type2">
                                                                <select name="byear" id="byear" class="selected"
                                                                    >
                                                                    <option value="">년</option>
                                                                    <option value="2023">2023</option>
                                                                    <option value="2022">2022</option>
                                                                    <option value="2021">2021</option>
                                                                    <option value="2020">2020</option>
                                                                    <option value="2019">2019</option>
                                                                    <option value="2018">2018</option>
                                                                    <option value="2017">2017</option>
                                                                    <option value="2016">2016</option>
                                                                    <option value="2015">2015</option>
                                                                    <option value="2014">2014</option>
                                                                    <option value="2013">2013</option>
                                                                    <option value="2012">2012</option>
                                                                    <option value="2011">2011</option>
                                                                    <option value="2010">2010</option>
                                                                    <option value="2009">2009</option>
                                                                    <option value="2008">2008</option>
                                                                    <option value="2007">2007</option>
                                                                    <option value="2006">2006</option>
                                                                    <option value="2005">2005</option>
                                                                    <option value="2004">2004</option>
                                                                    <option value="2003">2003</option>
                                                                    <option value="2002">2002</option>
                                                                    <option value="2001">2001</option>
                                                                    <option value="2000">2000</option>
                                                                    <option value="1999">1999</option>
                                                                    <option value="1998">1998</option>
                                                                    <option value="1997">1997</option>
                                                                    <option value="1996" selected="selected">1996
                                                                    </option>
                                                                    <option value="1995">1995</option>
                                                                    <option value="1994">1994</option>
                                                                    <option value="1993">1993</option>
                                                                    <option value="1992">1992</option>
                                                                    <option value="1991">1991</option>
                                                                    <option value="1990">1990</option>
                                                                    <option value="1989">1989</option>
                                                                    <option value="1988">1988</option>
                                                                    <option value="1987">1987</option>
                                                                    <option value="1986">1986</option>
                                                                    <option value="1985">1985</option>
                                                                    <option value="1984">1984</option>
                                                                    <option value="1983">1983</option>
                                                                    <option value="1982">1982</option>
                                                                    <option value="1981">1981</option>
                                                                    <option value="1980">1980</option>
                                                                    <option value="1979">1979</option>
                                                                    <option value="1978">1978</option>
                                                                    <option value="1977">1977</option>
                                                                    <option value="1976">1976</option>
                                                                    <option value="1975">1975</option>
                                                                    <option value="1974">1974</option>
                                                                    <option value="1973">1973</option>
                                                                    <option value="1972">1972</option>
                                                                    <option value="1971">1971</option>
                                                                    <option value="1970">1970</option>
                                                                    <option value="1969">1969</option>
                                                                    <option value="1968">1968</option>
                                                                    <option value="1967">1967</option>
                                                                    <option value="1966">1966</option>
                                                                    <option value="1965">1965</option>
                                                                    <option value="1964">1964</option>
                                                                    <option value="1963">1963</option>
                                                                    <option value="1962">1962</option>
                                                                    <option value="1961">1961</option>
                                                                    <option value="1960">1960</option>
                                                                    <option value="1959">1959</option>
                                                                    <option value="1958">1958</option>
                                                                    <option value="1957">1957</option>
                                                                    <option value="1956">1956</option>
                                                                    <option value="1955">1955</option>
                                                                    <option value="1954">1954</option>
                                                                    <option value="1953">1953</option>
                                                                    <option value="1952">1952</option>
                                                                    <option value="1951">1951</option>
                                                                    <option value="1950">1950</option>
                                                                    <option value="1949">1949</option>
                                                                    <option value="1948">1948</option>
                                                                    <option value="1947">1947</option>
                                                                    <option value="1946">1946</option>
                                                                    <option value="1945">1945</option>
                                                                    <option value="1944">1944</option>
                                                                    <option value="1943">1943</option>
                                                                    <option value="1942">1942</option>
                                                                    <option value="1941">1941</option>
                                                                    <option value="1940">1940</option>
                                                                    <option value="1939">1939</option>
                                                                    <option value="1938">1938</option>
                                                                    <option value="1937">1937</option>
                                                                    <option value="1936">1936</option>
                                                                    <option value="1935">1935</option>
                                                                    <option value="1934">1934</option>
                                                                    <option value="1933">1933</option>
                                                                    <option value="1932">1932</option>
                                                                    <option value="1931">1931</option>
                                                                    <option value="1930">1930</option>
                                                                    <option value="1929">1929</option>
                                                                    <option value="1928">1928</option>
                                                                    <option value="1927">1927</option>
                                                                    <option value="1926">1926</option>
                                                                    <option value="1925">1925</option>
                                                                    <option value="1924">1924</option>
                                                                    <option value="1923">1923</option>
                                                                    <option value="1922">1922</option>
                                                                    <option value="1921">1921</option>
                                                                    <option value="1920">1920</option>
                                                                    <option value="1919">1919</option>
                                                                    <option value="1918">1918</option>
                                                                    <option value="1917">1917</option>
                                                                    <option value="1916">1916</option>
                                                                    <option value="1915">1915</option>
                                                                    <option value="1914">1914</option>
                                                                    <option value="1913">1913</option>
                                                                    <option value="1912">1912</option>
                                                                    <option value="1911">1911</option>
                                                                    <option value="1910">1910</option>
                                                                    <option value="1909">1909</option>
                                                                    <option value="1908">1908</option>
                                                                    <option value="1907">1907</option>
                                                                    <option value="1906">1906</option>
                                                                    <option value="1905">1905</option>
                                                                    <option value="1904">1904</option>
                                                                    <option value="1903">1903</option>
                                                                    <option value="1902">1902</option>
                                                                    <option value="1901">1901</option>
                                                                    <option value="1900">1900</option>
                                                                </select>
                                                            </div>
                                                            <div class="select-type2">
                                                                <select name="bmonth" id="bmonth" class="selected"
                                                                    >
                                                                    <option>월</option>
                                                                    <option value="01">1</option>
                                                                    <option value="02">2</option>
                                                                    <option value="03">3</option>
                                                                    <option value="04" selected="">4</option>
                                                                    <option value="05">5</option>
                                                                    <option value="06">6</option>
                                                                    <option value="07">7</option>
                                                                    <option value="08">8</option>
                                                                    <option value="09">9</option>
                                                                    <option value="10">10</option>
                                                                    <option value="11">11</option>
                                                                    <option value="12">12</option>
                                                                </select>
                                                            </div>
                                                            <div class="select-type2">
                                                                <select name="bday" id="bday" class="selected"
                                                                    >
                                                                    <option>일</option>
                                                                    <option value="01">1</option>
                                                                    <option value="02">2</option>
                                                                    <option value="03">3</option>
                                                                    <option value="04" selected="">4</option>
                                                                    <option value="05">5</option>
                                                                    <option value="06">6</option>
                                                                    <option value="07">7</option>
                                                                    <option value="08">8</option>
                                                                    <option value="09">9</option>
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
                                                            </div> <br>
                                                            <div class="text-type4" id="birth_alert"
                                                                style="display:none;"></div>
                                                        </div>
                                                    </div>

                                                </dd>
                                            </dl>

                                            <dl>
                                                <dt class="top">휴대전화</dt>
                                                <dd>
                                                    <div class="form-group v2">
                                                        <div class="form-item">
                                                            <div class="select-type2">
                                                                <input type="hidden" name="sel_hand_tel_agency"
                                                                    id="sel_hand_tel_agency" value="KTF">
                                                                <select name="sel_hand_tel1" id="sel_hand_tel1"
                                                                    class="selected" title="휴대전화번호">
                                                                    <option value="010" selected="">010</option>
                                                                    <option value="011">011</option>
                                                                    <option value="016">016</option>
                                                                    <option value="017">017</option>
                                                                    <option value="018">018</option>
                                                                    <option value="019">019</option>
                                                                </select>
                                                            </div>
                                                            <input type="text" name="hand_tel2" id="hand_tel2"
                                                                maxlength="4" class="i_text"
                                                                title="휴대전화번호">
                                                            <input type="text" name="hand_tel3" id="hand_tel3"
                                                                maxlength="4" class="i_text"
                                                                title="휴대전화번호">
                                                             
                                                            <br>

                                                           
                                                        </div> <!-- //form-item -->
                                                        <div class="text-type4" id="tel_alert" style="display:none;">
                                                        </div>
                                                    </div>
                                                </dd>
                                            </dl>

                                            
                                            <dl>
                                                <dt class="top">이메일</dt>
                                                <dd>
                                                    <div class="form-group v2">
                                                        <div class="form-item e-mail">
                                                            <input type="text" name="email1" id="email1" >
                                                            <span>@</span>
                                                            <input type="text" name="email2" id="email2">
                                                            
                                                            <!-- 
                                                            <div class="select-type2">
                                                                <select name="email3" id="email3"
                                                                    onchange="checkEmailState($('#email3'),$('#email2'))">
                                                                    <option value="naver.com">네이버</option>
                                                                    <option value="hanmail.net">한메일</option>
                                                                    <option value="gmail.com">지메일</option>
                                                                    <option value="hotmail.com">핫메일</option>
                                                                    <option value="nate.com">네이트</option>
                                                                    <option value="WRITE" selected="">직접입력</option>
                                                                </select>
                                                            </div>
                                                            -->
                                                        </div>
                                                        <div class="text-type4" id="email_alert" style="display:none;">
                                                        </div>
                                                    </div>
                                                </dd>
                                            </dl>
                                            
                                            <dl>
                                                <dt class="top">주소</dt>
                                                <dd>
                                                    <div class="form-item address">
                                                         <input type="text" name="sample4_postcode" id="sample4_postcode" placeholder="">
                                                            <a href="javascript:sample4_execDaumPostcode();" 
                                                            class="btn-type v7">주소</a>
                                                    </div>
                                                </dd>
                                            </dl>
                                            
                                            
                                            <dl>
                                                <dt class="top">성별(선택)</dt>
                                                <dd>
                                                    <div class="form-group v2">
                                                        <div class="form-item gender">
                                                            <div class="chk-wrap">
                                                                <div class="chk-box selected">
                                                                    <input type="radio" name="sex" id="sex_n" value="N"
                                                                        checked="checked">
                                                                    <label class="checkbox" for="sex_n"></label>
                                                                    <label for="sex_n">정보제공 안함</label>
                                                                </div>
                                                                <div class="chk-box">
                                                                    <input type="radio" name="sex" id="sex_m" value="M">
                                                                    <label class="checkbox" for="sex_m"></label>
                                                                    <label for="sex_m">남성</label>
                                                                </rdiv>
                                                                <div class="chk-box">
                                                                    <input type="radio" name="sex" id="sex_f" value="F">
                                                                    <label class="checkbox" for="sex_f"></label>
                                                                    <label for="sex_f">여성</label>
                                                                </div>
                                                            </div>
                                                            <div class="text-type4" id="gender_alert"
                                                                style="display:none;"></div>
                                                        </div>
                                                    </div>

                                                </dd>
                                            </dl>
                                            <div class="btn-wrap">
                                                <a href="javascript:userCreate();" class="btn-type v6">가입하기</a>
                                            
                                            </div> 
</body>
</html>