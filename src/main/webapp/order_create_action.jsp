<%@page import="com.itwill.pizza.orders.OrderService"%>
<%@page import="com.itwill.pizza.orders.Order"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="login_check.jspf" %>    
<%
/*
주문생성
*/
String buyType = request.getParameter("buyType");
if (buyType == null)
	buyType = "";

Order order=(Order)session.getAttribute("order");
if(order==null){
	response.sendRedirect("order_list_form.jsp");
	return;
}
String[] cart_item_noStr_array=(String[])session.getAttribute("cart_item_noStr_array");
if(cart_item_noStr_array==null) {
	cart_item_noStr_array=new String[]{};
}
OrderService orderService=new OrderService();


%>
