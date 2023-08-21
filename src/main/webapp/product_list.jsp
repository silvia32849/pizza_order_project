<%@page import="java.text.DecimalFormat"%>
<%@page import="com.itwill.pizza.product.Product"%>
<%@page import="java.util.List"%>

<%@page import="com.itwill.pizza.product.ProductService"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

ProductService ps = new ProductService();
List<Product> productList = ps.findByAll();
System.out.println(productList);
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <!--  nav bar는 여기~ -->
   <nav class="navbar navbar-expand-lg bg-body-tertiary">
      <div class="container-fluid">
         <a class="navbar-brand" href="#">주 메뉴</a>
         <button class="navbar-toggler" type="button"
            data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
         </button>
         <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
               <li class="nav-item"><a class="nav-link active"
                  aria-current="page" href="#">Home</a></li>
               <li class="nav-item"><a class="nav-link" href="#">Link</a></li>
               <li class="nav-item dropdown"><a
                  class="nav-link dropdown-toggle" href="#" role="button"
                  data-bs-toggle="dropdown" aria-expanded="false"> Dropdown </a>
                  <ul class="dropdown-menu">
                     <li><a class="dropdown-item" href="#">Action</a></li>
                     <li><a class="dropdown-item" href="#">Another action</a></li>
                     <li><hr class="dropdown-divider"></li>
                     <li><a class="dropdown-item" href="#">Something else
                           here</a></li>
                  </ul></li>
               <li class="nav-item"><a class="nav-link disabled"
                  aria-disabled="true">Disabled</a></li>
            </ul>
            <form class="d-flex" role="search">
               <input class="form-control me-2" type="search" placeholder="Search"
                  aria-label="Search">
               <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
         </div>
      </div>
   </nav>



   <div class="menu-list">
      <%
      for (Product product : productList) {
      %>
      <ul>
         <!-- 피자&사이드 -->
         <li>


            <div class="prd-img">
               <%-- <a href="detail?product_no=<%=product.getProduct_no()%>"> --%> 
               <img class="lazyload" src="<%=product.getProduct_image()%>"
                  data-src="<%=product.getProduct_image()%>"
                  alt="<%=product.getProduct_name()%>">
              <%--  </a> <a href="detail?product_no=<%=product.getProduct_no()%>" --%>
                 <!--  class="btn-detail"> <i class="ico-zoomImg"></i> <span
                  class="hidden">상세버튼</span> -->
             <!--   </a> -->
            </div>
            <div class="prd-cont">
               <div class="subject"><%=product.getProduct_name()%>
               </div>
            </div>

            <div class="prd-price">
               <div class="price-box">
                  <span class="price"><span class="size_l">L</span> <%
                String price = "";
                price = String.valueOf(product.getProduct_price());
               
                DecimalFormat decimalFormat = new DecimalFormat("#,###");
                String formattedPrice = decimalFormat.format(Integer.parseInt(price)); // 포맷팅된 가격
               
                String price1 = String.valueOf(product.getProduct_price() + 5000);
                DecimalFormat decimalFormat1 = new DecimalFormat("#,###");
                String formattedPrice1 = decimalFormat.format(Integer.parseInt(price1)); // 포맷팅된 가격
                %><%=formattedPrice1%>원</span> <span class="price"><span
                                    class="size_m">M</span><%=formattedPrice%>원
                  </span>
               </div>
            </div>
            <div class="hashtag">
               <span><%=product.getProduct_desc()%></span>
            </div>

         </li>
         <%
         }
         %>
         <!-- //피자&사이드 -->
      </ul>
   </div>
   <!-- //NEW 피자 영역 -->

</body>
</html>