package com.itwill.pizza.cart;
/*
이름      널?       유형            
------- -------- ------------- 
cart_no    NOT NULL NUMBER(10)    
cart_qty            NUMBER(10)
user_id          	VARCHAR2(100)          
product_no       	NUMBER(10)    
*/
public class Cart {
	private int cart_no;
	private int cart_qty;
	private String user_id;
	private int product_no;
	
	
	public Cart() {
	
	}

	
	public Cart(int cart_no, int cart_qty, String user_id, int product_no) {
		super();
		this.cart_no = cart_no;
		this.cart_qty = cart_qty;
		this.user_id = user_id;
		this.product_no = product_no;
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

	public int getProduct_no() {
		return product_no;
	}

	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}

	@Override
	public String toString() {
		return "cart [cart_no=" + cart_no + ", cart_qty=" + cart_qty + ", user_id=" + user_id + ", product_no="
				+ product_no + "]";
	}
	
	
	
	
}
