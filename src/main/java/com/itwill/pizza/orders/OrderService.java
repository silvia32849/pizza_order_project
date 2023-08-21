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
	   //주문추가   
	public int insertOrder(Order order) throws Exception{
		return orderDao.insertOrder(order);
	}
	   //주문상세 추가
	public int insertOrderItem(OrderItem orderItem) throws Exception{
		return orderDao.insertOrderItem(orderItem);   
	   }
	   
	//2. delete
	   //주문삭제
	public int deleteOrder(int order_no) throws Exception{
		return orderDao.deleteOrder(order_no);
	}
	   //주문상세 삭제
	public int deleteOrderItem(int order_no) throws Exception{
		return orderDao.deleteOrderItem(order_no);
	}
	   //회원 한명의 주문내역 전체삭제
	public int deleteOrderByUserId(String user_id) throws Exception{
		return orderDao.deleteOrderByUserId(user_id);
	}
		
	   //회원 한명의 주문 상세내역 삭제
	public int deleteOrderItemByUserId(String user_id) throws Exception{
		return orderDao.deleteOrderItemByUserId(user_id);
	}
	   	   	   
	   //3. update
	   //주문수정
	public int updateOrder(Order order) throws Exception{
		return orderDao.updateOrder(order);
	}
	   
	   //주문상세수정
	public int updateOrderItem(OrderItem orderItem) throws Exception{
		return orderDao.updateOrderItem(orderItem);
	}
	   
	   //4. select
	   //회원 한사람의 주문전체목록 선택
	public Order findOrderByUserId(String user_id) throws Exception{
		return orderDao.findOrderByUserId(user_id);
	}
	   
	   //주문1개 선택
	public Order findOrderByNo(int order_no) throws Exception{
		return orderDao.findOrderByNo(order_no);
	}
	   
	   // 주문 1개의 전체 주문상세내역 선택
	public OrderItem findOrderItemByOrderNo(int order_no) throws Exception{
		return orderDao.findOrderItemByOrderNo(order_no);
	}

	   // 주문상세내역 조회
	public OrderItem findOrderItemByOiNo(int oi_no) throws Exception{
		return orderDao.findOrderItemByOiNo(oi_no);
	}
	   
	   //전체 주문조회
	public List<Order> findAllOrders() throws Exception{
		return orderDao.findAllOrders();
	}
	   
	   //전체 주문아이템 조회
	public List<OrderItem> findAllOrderItems() throws Exception{
		return orderDao.findAllOrderItems();
	}
}


















