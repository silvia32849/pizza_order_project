package com.itwill.pizza.orders;

import java.util.List;

public interface OrdersDao {
	
	
	int insertOrder(Order order) throws Exception;
	int updateOrder(Order order) throws Exception;
	int deleteOrder(int order_no) throws Exception;
	int deleteOrderByUserId(String user_id) throws Exception;
	
	
	int insertOrderItem(OrderItem orderItem) throws Exception;
	int updateOrderItem(OrderItem orderItem) throws Exception;
	int deleteOrderItem(int order_no) throws Exception;
	int deleteOrderItemByUserId(String user_id) throws Exception;
	
	List<Order> findAllOrders() throws Exception;
	Order findOrderByNo(int order_no) throws Exception;
	Order findOrderByUserId(String user_id) throws Exception;
	
	List<OrderItem> findAllOrderItems() throws Exception;
	OrderItem findOrderItemByOrderNo(int order_no) throws Exception;
	OrderItem findOrderItemByOiNo(int oi_no) throws Exception;
	
}
