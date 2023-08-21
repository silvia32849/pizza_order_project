package com.itwill.pizza.orders;



public interface OrderDao {
	/*
	 * 새로운 주문 생성
	 */
	int insert(Order order) throws Exception;
}
