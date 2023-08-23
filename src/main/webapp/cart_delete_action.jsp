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

String loginUser = request.getParameter("user_id");
CartService cartService=new CartService();
cartService.deleteAllItem(loginUser);
response.sendRedirect("cart_view.jsp");


%>