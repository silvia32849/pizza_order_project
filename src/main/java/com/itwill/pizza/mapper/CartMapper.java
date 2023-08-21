package com.itwill.pizza.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.itwill.pizza.cart.Cart;




public interface CartMapper {

	
	@Insert("insert into cart (cart_no, cart_qty, user_id, product_no) "
			+ "		values(cart_cart_no_SEQ.nextval, #{cart_qty}, #{user_id}, #{product_no})")
	int insert(Cart cart) throws Exception;
	
	@Delete("delete cart where cart_no = #{cart_no}")
	int remove(int cart_no) throws Exception;

}