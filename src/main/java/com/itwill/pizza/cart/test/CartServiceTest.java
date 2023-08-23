package com.itwill.pizza.cart.test;


import java.util.List;

import com.itwill.pizza.cart.Cart;
import com.itwill.pizza.cart.CartService;
import com.itwill.pizza.product.Product;
import com.itwill.pizza.product.ProductMyBatis;
import com.itwill.pizza.product.ProductService;
public class CartServiceTest {

	public static void main(String[] args) throws Exception {
//		ProductService ps;
//		List<Product> productList;
//		Product pe ;
		
		
//		
//		System.out.println("1.객체 생성");
//		ps = new ProductService();
//		System.out.println(ps);
//		System.out.println("------------------------------------------");
		
		CartService cs;
		List<Cart> cartList;
		Cart cr;
		
		System.out.println("1.객체생성");
		cs = new CartService();
		System.out.println(cs);
		
		System.out.println("2.카트 추가");
		int result = cs.addCart(new Cart(0, 2, "user2", new Product(22, "test",55000,"producttest","producttest",3,"M")));
		System.out.println(result+"개의 상품 추가 완료");
		System.out.println("------------------------------------------");
		
		//cs.deleteAllItem("user2");
		
	}
}
