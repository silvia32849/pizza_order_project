<%@page import="com.itwill.pizza.userinfo.UserService"%>
<%@page import="com.itwill.pizza.product.Product"%>
<%@page import="com.itwill.pizza.cart.Cart"%>
<%@page import="com.itwill.pizza.cart.CartService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="login_check.jspf"%>       
<%
        if(request.getMethod().equalsIgnoreCase("GET")){
       		response.sendRedirect("product_list.jsp");
       		return;
       	}
      
       	Product product = new Product();
       	
       	String product_noStr=request.getParameter("product_no");
       	//String noStr=product.getProduct_no();
       	int p_no =Integer.parseInt(product_noStr);
       	System.out.println(p_no);
       	product = new Product(p_no,product.getProduct_name(),product.getProduct_price(),product.getProduct_image(),product.getProduct_desc(),product.getProduct_category(),product.getProduct_size());
       	//String cart_qtyStr=request.getParameter("cart_qty");
       	String cart_qtyStr="1";
       	System.out.println(product);
       	CartService cartService=new CartService();
       	cartService.addCart(new Cart(0, Integer.parseInt(cart_qtyStr), sUserId, product));
      
       	response.sendRedirect("cart_list_form.jsp");
       	
       %>