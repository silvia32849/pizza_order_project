package com.itwill.pizza.orders;

public class OrderService {
	
	private OrderDao orderDao;
	public OrderService() throws Exception{
		orderDao=new OrderDaoImplMyBatis();
	}
	
	public int insert(Order order)throws Exception{
		return orderDao.insert(order);
	}
	
}


















