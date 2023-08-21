package com.itwill.pizza.cart.test;

import com.itwill.pizza.cart.Cart;
import com.itwill.pizza.cart.CartDaoImplMyBatis;
import com.itwill.pizza.cart.CartService;
import com.itwill.pizza.product.Product;

public class CartDaoTestMain {

	public static void main(String[] args) throws Exception {
		CartService ct;
		
		System.out.println("객체생성");
		ct= new CartService();
		System.out.println("----------------");
		
//		System.out.println("insert");
//		int countRow = ct.insert(new Cart(0,3,"woo",new Product()));
		
		System.out.println("delete");
		int countRow1 =ct.remove(8);
	}

}
