<%@page import="com.itwill.pizza.cart.CartService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="login_check.jspf" %> 
<%

if(request.getMethod().equalsIgnoreCase("GET")){
	response.sendRedirect("product_list.jsp");
	return;
}

CartService cartService = new CartService();
cartService.deleteAllItem("user1");
response.sendRedirect("cart_view.jsp");




%>