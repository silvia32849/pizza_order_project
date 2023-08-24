<%@page import="com.itwill.pizza.userinfo.UserService"%>
<%@page import="com.itwill.pizza.cart.CartService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="login_check.jspf" %>
<%
if(request.getMethod().equalsIgnoreCase("GET")){
	response.sendRedirect("product_list.jsp");
	return;
}

CartService cartService=new CartService();
cartService.deleteAllItem(sUserId);
response.sendRedirect("cart_takeout_list_form.jsp");


%>