package com.itwill.pizza.cart.test;

import java.util.List;

import com.itwill.pizza.cart.Cart;
import com.itwill.pizza.cart.CartDao;
import com.itwill.pizza.cart.CartDaoImplMyBatis;
import com.itwill.pizza.cart.CartService;
import com.itwill.pizza.product.Product;
import com.itwill.pizza.product.ProductService;

public class CartDaoTestMain {

	public static void main(String[] args) throws Exception{
		CartDaoImplMyBatis dao;
		dao = new CartDaoImplMyBatis();
		
		
		int count = dao.count("user1", 1);
		System.out.println(count);
		/*
		 * 	ProductService ps;
		List<Product> productList;
		Product pe ;
		
		System.out.println("1.객체 생성");
		ps = new ProductService();
		 */
		
		int rowCount = dao.deleteAll("user1");
		
		rowCount = dao.insert(new Cart(1,1,"user1", new Product(1,"test",30000,"test","test",3,"M")));
	}

}