package com.itwill.pizza.userinfo;

import com.itwill.pizza.cart.Cart;

public interface UserDao {
	/*
	 * 새로운 장바구니 생성
	 */
	int insert(User user) throws Exception;
}
