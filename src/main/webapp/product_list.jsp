<%@page import="java.util.List"%>

<%@page import="com.itwill.pizza.product.ProductService"%>
<%@page import="com.itwill.pizza.product.ProductEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	ProductEntity pe = new ProductEntity();
	ProductService ps = new ProductService();
	List<ProductEntity> productList;

	
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
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" aria-disabled="true">Disabled</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>


<!-- Image프레임
css 
$thumbnail-padding:                 .25rem;
$thumbnail-bg:                      var(--#{$prefix}body-bg);
$thumbnail-border-width:            var(--#{$prefix}border-width);
$thumbnail-border-color:            var(--#{$prefix}border-color);
$thumbnail-border-radius:           var(--#{$prefix}border-radius);
$thumbnail-box-shadow:              var(--#{$prefix}box-shadow-sm);

 -->
 
 <table class="table">
  <tbody>
  <% 
  	String size= "";
  	for(ProductEntity product :productList ) { %>
    <tr>
    <%if(product.getProduct_size().equals("M")){
    	size = "M(미디움)";
 	}else {
 		size = "L(라지)";
 	}
 	%>
    	<a href="product_detail?<%=product.getProduct_no()%>">
   		<img src="<%=product.getProduct_image() %>" class="img-thumbnail" alt="...">
   		</a>
      	<th scope="row"><%=product.getProduct_price() %></th>
      	<td><%=product.getProduct_name() %></td>
      	<td><%=product.getProduct_desc() %></td>
      	<td><%= size%></td>
      	
      	
    </tr>
    <%} %>
  </tbody>
</table>

</body>
</html>