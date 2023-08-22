package com.itwill.pizza.cart;

import java.util.List;

public interface CartDao {

	int insert(Cart cart) throws Exception;

	int count(String user_id, int product_no) throws Exception;

	int updateInCart(Cart cart) throws Exception;

	int updateInProduct(Cart cart) throws Exception;

	int deleteByCartNo(int cart_no) throws Exception;

	int deleteAll(String user_id) throws Exception;

	List<Cart> findByUserId(String user_id) throws Exception;

}