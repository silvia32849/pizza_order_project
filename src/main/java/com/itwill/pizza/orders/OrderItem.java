package com.itwill.pizza.orders;
/*
이름      널?       유형            
------- -------- ------------- 
oi_no    NOT NULL NUMBER(10)    
oi_qty            NUMBER(10)
order_no          NUMBER(10)          
product_no        NUMBER(10)    
*/
public class OrderItem {
	private int oi_no;
	private int oi_qty;
	private int order_no;
	private int product_no;
	
	
	public OrderItem() {

	}

	
	public OrderItem(int oi_no, int oi_qty, int order_no, int product_no) {
		super();
		this.oi_no = oi_no;
		this.oi_qty = oi_qty;
		this.order_no = order_no;
		this.product_no = product_no;
	}


	public int getOi_no() {
		return oi_no;
	}



	public void setOi_no(int oi_no) {
		this.oi_no = oi_no;
	}



	public int getOi_qty() {
		return oi_qty;
	}



	public void setOi_qty(int oi_qty) {
		this.oi_qty = oi_qty;
	}



	public int getOrder_no() {
		return order_no;
	}



	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}



	public int getProduct_no() {
		return product_no;
	}



	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}



	@Override
	public String toString() {
		return "orderitem [oi_no=" + oi_no + ", oi_qty=" + oi_qty + ", order_no=" + order_no + ", product_no="
				+ product_no + "]";
	}
	
	
	
	
	
}
