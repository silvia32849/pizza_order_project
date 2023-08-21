package com.itwill.pizza.cart;

import com.itwill.pizza.cart.Cart;

public interface CartDao {
	/*
	 * 새로운 장바구니 생성
	 */
	int insert(Cart cart) throws Exception;
}
