package com.itwill.pizza.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

import com.itwill.pizza.cart.Cart;
import com.itwill.pizza.orders.Order;
import com.itwill.pizza.orders.OrderItem;




public interface OrderMapper {

		
	    //1. insert
		   //주문 추가   
		   @Insert("insert into orders values(#{order_no}, #{order_name}, #{order_address}, #{order_price}, sysdate, #{order_delivery}, #{user_id})")
		   @SelectKey(before = true , keyProperty ="order_no",statement = "select orders_order_no_SEQ.nextval from dual",resultType = Integer.class)
		   int insertOrder(Order order) throws Exception;
		   
		   
		   //주문아이템 추가
		   @Insert("insert into order_item values(order_item_oi_no_SEQ.nextval, #{oi_qty}, #{order_no}, #{product.product_no})")
		   int insertOrderItem(OrderItem orderItem) throws Exception;
			
		//2. delete
		   
		   
		   //주문 삭제
		   @Delete("delete from orders where order_no=#{order_no}")
		   int deleteOrder(int order_no) throws Exception;
		   /*
		   //주문아이템 삭제
		   @Delete("delete from order_item where order_no=#{order_no}")
		   int deleteOrderItem(int order_no) throws Exception;
		   //회원 한사람의 주문내역 전체 삭제
		   @Delete("delete from orders where order_no in(select order_no from orders where user_id=#{user_id})")
		   int deleteOrderByUserId(String user_id) throws Exception;
		   */
		   
		   
		   //회원 한사람의 주문아이템 삭제
		   //@Delete("delete from order_item where order_no in(select order_no from orders where user_id=#{user_id})")
		   //int deleteOrderItemByUserId(String user_id) throws Exception;
		   
		//4. select
		   //전체 주문 조회
		   
		   /* 관리자 
		   @Select("select * from orders")
		   List<Order> findAllOrders() throws Exception;
		   */
		   
		   //주문 1개 조회
		   @Select("select * from orders where order_no=#{order_no}")
		   Order findOrderByOrderNo(int order_no) throws Exception;
		   
		   
		   //회원 한사람의 주문전체목록 조회
		   @Select("select * from orders where user_id=#{user_id}")
		   List<Order> findOrderByUserId(String user_id) throws Exception;
		   
		   /*
		   //전체 주문아이템 조회
		   @Select("select * from order_item")
		   List<OrderItem> findAllOrderItems() throws Exception;
		    */
		   
		   // 주문 1개의 전체 주문아이템 조회
		   @Select("select * from order_item where order_no=#{order_no}")
		   OrderItem findOrderItemByOrderNo(int order_no) throws Exception;
		   
		   
		   // 주문아이템 번호로 주문아이템 조회
		   /*
		   @Select("select * from order_item where oi_no=#{oi_no}")
		   OrderItem findOrderItemByOiNo(int oi_no) throws Exception;
		   */
		   
		   
		   
		   
		   

		  
		   

		 
		    
		   
		   // 주문1개의 주문상세,제품정보 여러개(주문상세,제품) 선택
		  //@Select("select * from orders o join order_item oi on o.order_no=oi.order_no join product p on oi.product_no=p.product_no \\r\\n\"\n"
		 //     + "         + \"where o.user_id=#{o.user_id}")
		// int orderItemSelectBy(OrderItem orderItem)throws Exception;
			

}			



			