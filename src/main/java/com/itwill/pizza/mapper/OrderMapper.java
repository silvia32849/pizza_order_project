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




public interface OrderMapper {

	
	@Insert("insert into order (order_no, order_name, order_address, order_price, order_date, user_id) "
			+ "		values(orders_order_no_SEQ.nextval, #{order_name}, #{order_address}, #{order_price}, #{order_date}, #{user_id}")
	int insert(Order order) throws Exception;

}