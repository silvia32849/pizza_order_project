<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.itwill.pizza.inquiries.*" %>
<%@ include file="login_check.jspf" %>


<%
	if(request.getMethod().equalsIgnoreCase("GET")){
		response.sendRedirect("inquiries_main.jsp");
		return;
	}
	Inquiries inquiries = new Inquiries();
	request.setCharacterEncoding("UTF-8");
	inquiries.setInquiries_title(request.getParameter("inputTitle"));
	inquiries.setInquiries_content(request.getParameter("inputText"));
	inquiries.setUser_id(sUser.getUserId());
	//inquiries.setInquiries_content("우한영");
	//inquiries.setInquiries_title("우한영");
	System.out.println(request.getParameter("inputTitle"));
	System.out.println(request.getParameter("inputText"));
	
	
	new InquiriesService().create(inquiries);
	
	response.sendRedirect("inquiries_main.jsp");
%>
