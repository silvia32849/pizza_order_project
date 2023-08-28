<%@page import="com.itwill.pizza.orders.OrderService"%>
<%@page import="com.itwill.pizza.orders.Order"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="login_check.jspf" %>    
<%
/*
주문생성
*/
	if(request.getMethod().equalsIgnoreCase("GET")){
		response.sendRedirect("product_list.jsp");
		return;
	}


	Order order=(Order)session.getAttribute("order");
	if(order==null){
		response.sendRedirect("order_into_form.jsp");
		return;
	}

	OrderService orderService=new OrderService();
	orderService.insertOrder(order);		


	response.sendRedirect("order_list_form.jsp");
%>



