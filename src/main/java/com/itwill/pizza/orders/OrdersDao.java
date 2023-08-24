package com.itwill.pizza.orders;

import java.util.List;

public interface OrdersDao {
	
	
	//1. insert
	int insertOrder(Order order) throws Exception;
	
	
	//2. delete
	
	int deleteOrder(int order_no) throws Exception;
	/*
	int deleteOrderItem(int order_no) throws Exception;

	int deleteOrderByUserId(String user_id) throws Exception;
	
	
	int deleteOrderItemByUserId(String user_id) throws Exception;
	*/
	
	//3. select
	/* 관리자
	List<Order> findAllOrders() throws Exception;
	
	*/
	
	Order findOrderByOrderNo(int order_no) throws Exception;
	
	List<Order> findOrderByUserId(String user_id) throws Exception;
	
	
	//List<OrderItem> findAllOrderItems() throws Exception;
	
	OrderItem findOrderItemByOrderNo(int order_no) throws Exception;


	
	//OrderItem findOrderItemByOiNo(int oi_no) throws Exception;
	
}
