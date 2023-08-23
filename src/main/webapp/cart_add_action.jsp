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
       	/*
       	1.파라메타받기(cart_qty,product_no)
       	2.장바구니에 제품을담고 cart_view.jsp로redirection
       	*/
       	String cart_qtyStr=request.getParameter("cart_qty");
       	String product_noStr=request.getParameter("product_no");
       	CartService cartService=new CartService();
       	//cartService.addCart(new Cart(0, Integer.parseInt(cart_qtyStr), sUserId, product));
        Cart cart = new Cart();
       	cartService.addCart(cart);
      
       	response.sendRedirect("cart_view.jsp");
       	/*
       	response.sendRedirect("cart_view_select.jsp");
       	response.sendRedirect("cart_view_select_update_qty.jsp");
       	response.sendRedirect("cart_view_select_update_qyt_all_check_delete_image.jsp");
       	*/
       %>