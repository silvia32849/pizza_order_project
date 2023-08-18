<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<style>
  ul {
    list-style-type: none;
    display: flex;
    flex-direction: row;
    padding: 0;
     font-size: 20px;
  }

  li {
    margin-right: 20px; 
  }
</style>
</head>
<body>

<ul>
  <li><a></a></li>
  	<div class="page-title-wrap">
		<style>
			.page-title {
			font-size: 40px;  }
		</style>
        <h2 class="page-title">고객센터</h2>
		
   </div>
     
<div class="form-group srch-type">
    <div class="form-item">
        <div class="select-type2">
            <select id="search" style="width: 164px; height: 52px; " name="search">
                <option value="subject">제목</option>
                <option value="content">내용</option>
                <option value="all">제목+내용</option>
            </select>
        </div>
    </div>
    <div class="form-item" style="display: flex;">
        <input type="text" id="conditionTemp" style="flex: 1; width: 250px; height: 52px; " name="conditionTemp" placeholder="">
        <input type="hidden" id="condition" style="width: 250px; height: 52px;" name="condition" class="i_text" value="">
    </div>
    <div class="form-item">
        <button type="button"  height: 52px;" class="btn-search" onclick="fncSearch();">검색</button>
    </div>
</div>



</ul>

 

<ul>

  <li><a href="board_write.jsp">공지사항</a></li>
  <li><a href="board_write.jsp">자주하는질문</a></li>
  <li><a href="board_list.jsp">1대1문의</a></li>
</ul>

</body>
</html>