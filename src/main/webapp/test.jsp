<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>	
			 
			<div id="toptest-content">
				<jsp:include page="toptest.jsp"/>
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
</head>
<body>
	<title>고객센터</title>


	<link rel="stylesheet" type="text/css" href="css/font.css"> 
	<link rel="stylesheet" type="text/css" href="css/common.css"> 
	<link rel="stylesheet" type="text/css" href="css/sub.css">
	

	

				
			<div class="inner-box">
				
				
                <article class="notice-area">

                    <div class="notice-wrap">
                    <form id="searchForm" name="searchForm" action="/bbs/newsList" method="post">
				<input type="hidden" id="type" name="type" value="N">
				<input type="hidden" id="pageNo" name="pageNo" value="1">
	                       
                <div id="navigation">
					<jsp:include page="lefttest.jsp"/>
				</div>
                        <div class="table-type3">
                            <p class="side">총 437건</p>
                            
                
                            <table>
                                <caption>news</caption>
                                <colgroup>
                                    <col style="width:106px">
                                    <col>
                                    <col style="width:333px">
                                    <col style="width:110px">
                                </colgroup>
                                <thead>
                                <tr>
                                    <th>번호</th>
                                    <th>제목</th>
                                    <th>등록일</th>
                                    <th>조회</th>
                                </tr>
                                
                                </thead>
                                <tbody>
                                
                                
                                
								
								
                                <tr>
                                    <td>437</td>
                                    <td><a href="#none" onclick="goView('2864'); return false;"><p> HTML TEST437</p></a></td>
                                    <td>2023-07-18</td>
                                    <td>4069</td>
                                </tr>
                               		<tr>
                                    <td>436</td>
                                    <td><a href="#none" onclick="goView('2863'); return false;"><p>HTML TEST436</p></a></td>
                                    <td>2023-07-14</td>
                                    <td>979</td>
                                </tr>
                               		<tr>
                                    <td>435</td>
                                    <td><a href="#none" onclick="goView('2862'); return false;"><p>HTML TEST435</p></a></td>
                                    <td>2023-07-14</td>
                                    <td>148</td>
                                </tr>
                               		<tr>
                                    <td>434</td>
                                    <td><a href="#none" onclick="goView('2856'); return false;"><p>HTML TEST434</p></a></td>
                                    <td>2023-06-23</td>
                                    <td>157</td>
                                </tr>
                               		<tr>
                                    <td>433</td>
                                    <td><a href="#none" onclick="goView('2855'); return false;"><p>HTML TEST433</p></a></td>
                                    <td>2023-06-23</td>
                                    <td>362</td>
                                </tr>
                               		<tr>
                                    <td>432</td>
                                    <td><a href="#none" onclick="goView('2838'); return false;"><p>HTML TEST432</p></a></td>
                                    <td>2023-05-04</td>
                                    <td>385</td>
                                </tr>
                               		<tr>
                                    <td>431</td>
                                    <td><a href="#none" onclick="goView('2820'); return false;"><p>HTML TEST431</p></a></td>
                                    <td>2023-03-21</td>
                                    <td>183</td>
                                </tr>
                               		<tr>
                                    <td>430</td>
                                    <td><a href="#none" onclick="goView('2818'); return false;"><p>HTML TEST430</p></a></td>
                                    <td>2023-03-13</td>
                                    <td>309</td>
                                </tr>
                               		<tr>
                                    <td>429</td>
                                    <td><a href="#none" onclick="goView('2806'); return false;"><p>HTML TEST429</p></a></td>
                                    <td>2023-02-06</td>
                                    <td>2237</td>
                                </tr>
                               		<tr>
                                    <td>428</td>
                                    <td><a href="#none" onclick="goView('2801'); return false;"><p>HTML TEST428</p></a></td>
                                    <td>2023-01-19</td>
                                    <td>546</td>
                                </tr>
                               		</tbody>
                            </table>
</body>
                        </div>
                        <div class="pagination">
                        	
                            <a href="javascript:;" class="pager-first">처음</a>&nbsp;
                            <a href="javascript:;" class="pager-arr-prev">이전</a><ol>
                                <li><strong>1</strong></li>  <li><a href="javascript:;" onclick="javascript:paging(2); return false;">2</a></li>  <li><a href="javascript:;" onclick="javascript:paging(3); return false;">3</a></li>  <li><a href="javascript:;" onclick="javascript:paging(4); return false;">4</a></li>  <li><a href="javascript:;" onclick="javascript:paging(5); return false;">5</a></li>  <li><a href="javascript:;" onclick="javascript:paging(6); return false;">6</a></li>  <li><a href="javascript:;" onclick="javascript:paging(7); return false;">7</a></li>  <li><a href="javascript:;" onclick="javascript:paging(8); return false;">8</a></li>  <li><a href="javascript:;" onclick="javascript:paging(9); return false;">9</a></li>  <li><a href="javascript:;" onclick="javascript:paging(10); return false;">10</a></li></ol>
                            <a href="javascript:;" class="pager-arr-next" onclick="javascript:paging(11, 1); return false;">다음</a>&nbsp;
							<a href="javascript:;" class="pager-last" onclick="javascript:paging(44); return false;">마지막</a></div>
                        </form>
                    </div>
                </article>
            </div>
</html>