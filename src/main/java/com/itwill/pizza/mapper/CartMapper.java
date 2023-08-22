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

	/*
	 * cart insert
	 */
	@Insert("insert into cart (cart_no, cart_qty, user_id, product_no) "
			+ "		values(cart_cart_no_seq.nextval, #{cart_qty}, #{user_id}, #{product.product_no})")
	int insert(Cart cart) throws Exception;
	
	/*
	 * 카트 제품 존재여부 확인
	 */
	@Select("select count(*)  as p_count from cart  where user_id=#{user_id} and product_no=#{product_no}")
	int count(@Param("user_id") String user_id, @Param("product_no") int product_no) throws Exception;
	
	/*
	 * cart list
	 */
	@ResultMap("cartResultMap")
	@Select("select * from cart c join product p on c.product_no=p.product_no where user_id = #{userId}")
	List<Cart> findByUserId(String user_id) throws Exception;
	/*
	 * cart update(카트 리스트에서 수정)
	 */
	@Update("update cart set cart_qty=#{cart_qty} where cart_no=#{cart_no}")
	int updateInCart(Cart cart) throws Exception;
	
	/*
	 * cart add update(상품에서 카트 추가시 update)
	 */
	@Update("update cart set cart_qty=cart_qty+#{cart_qty} where user_id=#{user_id} and product_no=#{product.product_no}")
	int updateInProduct (Cart cart) throws Exception;
	
	/*
	 * cart pk delete
	 */
	@Delete("delete from cart where cart_no= #{cart_no}")
	int deleteByCartNo(int cart_no) throws Exception;
	
	/*
	 * cart delete by userId(전체삭제)
	 */
	@Delete("delete from cart where user_id=#{user_id}")
	int deleteAll(String user_id) throws Exception;
}