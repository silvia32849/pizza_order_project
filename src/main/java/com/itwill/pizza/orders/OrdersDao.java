package com.itwill.pizza.orders;

import java.util.List;

public interface OrdersDao {
	
	
	//1. insert
	int insertOrder(Order order) throws Exception;
	
	int insertOrderItem(OrderItem orderItem) throws Exception;
	
	
	//2. delete
	int deleteOrder(int order_no) throws Exception;
	
	int deleteOrderItem(int order_no) throws Exception;

	int deleteOrderByUserId(String user_id) throws Exception;
	
	int deleteOrderItemByUserId(String user_id) throws Exception;
	
	
	//3. select
	List<Order> findAllOrders() throws Exception;
	
	Order findOrderByNo(int order_no) throws Exception;
	
	Order findOrderByUserId(String user_id) throws Exception;
	
	List<OrderItem> findAllOrderItems() throws Exception;
	
	OrderItem findOrderItemByOrderNo(int order_no) throws Exception;
	
	OrderItem findOrderItemByOiNo(int oi_no) throws Exception;
	
}
