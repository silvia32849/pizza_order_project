<%@page import="com.itwill.pizza.userinfo.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="login_check.jspf" %>     
<%
	if(request.getMethod().equals("GET")){
		response.sendRedirect("index.jsp");
		return;
	}

	
	try{
		UserService userService=new UserService();
		
		User findUser=userService.findUser(sUserId);
		
		request.setCharacterEncoding("UTF-8");
		String pw=request.getParameter("passwd");
		String phone1 = request.getParameter("sel_hand_tel1");
		String phone2 = request.getParameter("hand_tel2");
		String phone3 = request.getParameter("hand_tel3");
		/*
		String byear = request.getParameter("byear");
		String bmonth = request.getParameter("bmonth");
		String bday = request.getParameter("bday");
		
		String jumin = byear.substring(2, 4)+bmonth+bday+"*******";
		*/
		String phone = phone1+"-"+phone2+"-"+phone3;
		
		User user=new User(sUserId,pw,sUser.getUserName(),sUser.getUserEmail(),sUser.getUserAddress(),phone,sUser.getUserGender(),sUser.getUserJumin());
		
		int updateRowCount=userService.update(user);
		
		response.sendRedirect("user_info_form.jsp");
	}catch(Exception e){
		e.printStackTrace();
		response.sendRedirect("user_error.jsp");
	}
	
%>