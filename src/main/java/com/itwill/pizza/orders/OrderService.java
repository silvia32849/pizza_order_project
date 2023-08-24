package com.itwill.pizza.orders;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public class OrderService {
	
	private OrdersDao orderDao;
	
	public OrderService() throws Exception{
		orderDao=new OrderDaoImplMyBatis();
	}
	
	
	
	//1. insert
	   //주문 추가   
	public int insertOrder(Order order) throws Exception{
		return orderDao.insertOrder(order);
	}
	
	
	//2. delete
	
	   //주문 삭제
	public int deleteOrder(int order_no) throws Exception{
		return orderDao.deleteOrder(order_no);
	}
	
	/*
	   //주문상세 삭제
	public int deleteOrderItem(int order_no) throws Exception{
		return orderDao.deleteOrderItem(order_no);
	}
	
	   //회원 한명의 주문내역 전체삭제
	public int deleteOrderByUserId(String user_id) throws Exception{
		return orderDao.deleteOrderByUserId(user_id);
	}
	
	   //회원 한명의 주문 아이템 전체삭제
	
	public int deleteOrderItemByUserId(String user_id) throws Exception{
		return orderDao.deleteOrderItemByUserId(user_id);
	}
	*/
	   	   	   
	
	
	//3. select
	/*
	   //전체 주문 조회
	public List<Order> findAllOrders() throws Exception{
		return orderDao.findAllOrders();
	}
	*/
	
	 //주문 1개 조회
	public Order findOrderByOrderNo(int order_no) throws Exception{
		return orderDao.findOrderByOrderNo(order_no);
	}	
	
	   //회원 한사람의 주문전체목록 조회
	public List<Order> findOrderByUserId(String user_id) throws Exception{
		return orderDao.findOrderByUserId(user_id);
	}
	
	
	/*
	  //전체 주문아이템 조회
	public List<OrderItem> findAllOrderItems() throws Exception{
		return orderDao.findAllOrderItems();
	}
	*/
	  // 주문 1개의 주문아이템 조회
	public OrderItem findOrderItemByOrderNo(int order_no) throws Exception{
		return orderDao.findOrderItemByOrderNo(order_no);
	}
	
	  // 주문아이템 번호로 주문아이템 조회
	
	/*
	public OrderItem findOrderItemByOiNo(int oi_no) throws Exception{
		return orderDao.findOrderItemByOiNo(oi_no);
	}
	*/
	   
	 
}


















