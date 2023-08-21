package com.itwill.pizza.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.itwill.pizza.cart.Cart;
import com.itwill.pizza.orders.Order;
import com.itwill.pizza.orders.OrderItem;




public interface OrderMapper {

		
	//1. insert
		   //주문추가   
		   @Insert("insert into orders (order_no, order_name, order_address, order_price, order_date, user_id) "
		         + "      values(orders_order_no_SEQ.nextval, #{order_name}, #{order_address}, #{order_price}, #{order_date}, #{user_id}")
		   int insertOrder(Order order) throws Exception;
		   //주문상세 추가
		   @Insert("insert into order_item(oi_no, oi_qty, order_no, product_no) values(order_item_oi_no_SEQ.nextval, #{oi_qty}, #{order_no}, #{product_no})")
		   int insertOrderItem(OrderItem orderItem) throws Exception;

		//2. delete
		   //주문삭제
		   @Delete("delete from orders where order_no=#{order_no}")
		   int deleteOrder(int order_no) throws Exception;
		   //주문상세 삭제
		   @Delete("delete from order_item where order_no=#{order_no}")
		   int deleteOrderItem(int order_no) throws Exception;
		   //회원 한명의 주문내역 전체삭제
		   @Delete("delete from orders where user_id=#{user_id}")
		   int deleteOrderByUserId(String user_id) throws Exception;
		   //회원 한명의 주문 상세내역 삭제
		   @Delete("delete from order_item where order_no in(select order_no from orders where user_id=#{user_id}")
		   int deleteOrderItemByUserId(String user_id) throws Exception;
		   
		   
		   
		   //3. update
		   //주문수정
		   @Update("update orders set order_no=#{order_no}, order_name=#{order_name}, order_address=#{order_address}, order_price=#{order_price}, order_date= #{order_date}, user_id=#{user_id} where order_no=#{order_no}")
		   int updateOrder(Order order) throws Exception;
		   
		   //주문상세수정
		   @Update("update order_item set oi_no=#{oi_no}, oi_qty=#{oi_qty}, order_no=#{order_no}, product_no=#{product_no} where order_no=#{order_no}")
		   int updateOrderItem(OrderItem orderItem) throws Exception;
		   
		   //4. select
		   //회원 한사람의 주문전체목록 선택
		   @Select("select * from orders where user_id=#{user_id}")
		   Order findOrderByUserId(String user_id) throws Exception;
		   
		   //주문1개 선택
		   @Select("select * from orders where order_no=#{order_no}")
		   Order findOrderByNo(int order_no) throws Exception;
		   
		   // 주문 1개의 전체 주문상세내역 선택
		   @Select("select * from order_item where order_no=#{order_no}")
		   OrderItem findOrderItemByOrderNo(int order_no) throws Exception;

		   // 주문상세내역 조회
		   @Select("select * from order_item where oi_no=#{oi_no}")
		   OrderItem findOrderItemByOiNo(int oi_no) throws Exception;
		   
		   //전체 주문조회
		   @Select("select * from orders")
		   List<Order> findAllOrders() throws Exception;
		   
		   //전체 주문아이템 조회
		   @Select("select * from order_item")
		   List<OrderItem> findAllOrderItems() throws Exception;

		 
		    
		   
		   // 주문1개의 주문상세,제품정보 여러개(주문상세,제품) 선택
		  //@Select("select * from orders o join order_item oi on o.order_no=oi.order_no join product p on oi.product_no=p.product_no \\r\\n\"\n"
		 //     + "         + \"where o.user_id=#{o.user_id}")
		// int orderItemSelectBy(OrderItem orderItem)throws Exception;
			

}			



			