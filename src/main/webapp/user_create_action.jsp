<%@page import="java.net.URLEncoder"%>
<%@page import="com.itwill.pizza.userinfo.exception.ExistedUserException"%>
<%@page import="com.itwill.pizza.userinfo.UserService"%>
<%@page import="com.itwill.pizza.userinfo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(request.getMethod().equalsIgnoreCase("GET")){
		response.sendRedirect("user_create_form.jsp");
		return;
	}

	String userId=request.getParameter("userId");
	String password=request.getParameter("passwd");
	String name=request.getParameter("name");
	String address = request.getParameter("sample4_postcode");
	String email1 = request.getParameter("email1");
	String email2 = request.getParameter("email2");
	String byear = request.getParameter("byear");
	String bmonth = request.getParameter("bmonth");
	String bday = request.getParameter("bday");
	String sel_hand_tel1 = request.getParameter("sel_hand_tel1");
	String sel_hand_tel2 = request.getParameter("hand_tel2");
	String sel_hand_tel3 = request.getParameter("hand_tel3");
	String sex_n = request.getParameter("sex");
	
	String year = byear.substring(2);

	
	String email = email1+ "@" + email2;
	String jumin = year+bmonth+bday+"-*******";
	String phone = sel_hand_tel1+"-"+sel_hand_tel2+"-"+sel_hand_tel3;

	User newUser=null;


	try{
		newUser=new User(userId,password,name, email, address, phone, sex_n , jumin);
		UserService userService=new UserService();
		int rowCount = userService.create(newUser);
		response.sendRedirect("user_login_form.jsp");
	}catch(ExistedUserException e){
		/*************************case1[redirect]**************
		response.sendRedirect("user_write_form.jsp?msg="+URLEncoder.encode(e.getMessage(),"UTF-8"));
		****************************************************/
		/*************case2[forward]**************/
		//이동할려는 page로 데이타를 전달해야할때
		//<jsp:forward parth="user_write_form.jsp"/>
	
		request.setAttribute("msg", e.getMessage());
		request.setAttribute("fuser", newUser);
			RequestDispatcher rd=request.getRequestDispatcher("user_create_form.jsp");
		rd.forward(request, response);
	
		/******************************************/
		/*****************case3[정상응답]***************
		out.println("<script>");
		out.println("alert('"+e.getMessage()+"');");
		out.println("location.href='user_write_form.jsp';");
		out.println("</script>");
		********************************************/
	}catch(Exception e){
		e.printStackTrace();
		response.sendRedirect("user_error.jsp");		
	}


%>