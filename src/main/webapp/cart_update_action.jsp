<%@page import="com.itwill.pizza.cart.Cart"%>
<%@page import="com.itwill.pizza.cart.CartService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@include file="login_check.jspf" %> 
<%
	if(request.getMethod().equalsIgnoreCase("GET")){
		response.sendRedirect("product_list.jsp");
		return;
	}
	String user_id = (String)session.getAttribute(sUserId);
	String cart_noStr = request.getParameter("cart_no");
	String cart_qtyStr = request.getParameter("cart_qty");
	CartService cartService = new CartService();
	if(cart_qtyStr.equals("0")){
		cartService.deleteCartItemByCartNo(Integer.parseInt(cart_noStr));
	}else{
		Cart cart = new Cart(Integer.parseInt(cart_noStr),Integer.parseInt(cart_qtyStr),user_id,null);
		cartService.updateCart(cart);
	}

	response.sendRedirect("cart_list_form.jsp");

%>