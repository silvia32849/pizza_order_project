package com.itwill.pizza.cart;

import com.itwill.pizza.product.Product;

public class Cart {

	private int cart_no;
	private int cart_qty;
	private String user_id;
	private Product product_no;
	
	public Cart() {
		
	}

	public Cart(int cart_no, int cart_qty, String user_id, Product product) {
		super();
		this.cart_no = cart_no;
		this.cart_qty = cart_qty;
		this.user_id = user_id;
		this.product_no = product;
	}

	public int getCart_no() {
		return cart_no;
	}

	public void setCart_no(int cart_no) {
		this.cart_no = cart_no;
	}

	public int getCart_qty() {
		return cart_qty;
	}

	public void setCart_qty(int cart_qty) {
		this.cart_qty = cart_qty;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public Product getProduct() {
		return product_no;
	}

	public void setProduct(Product product) {
		this.product_no = product;
	}

	@Override
	public String toString() {
		return "Cart [cart_no=" + cart_no + ", cart_qty=" + cart_qty + ", user_id=" + user_id + "]";
	}
	
	
}
