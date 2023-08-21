package com.itwill.pizza.orders;

import java.util.Date;
/*
 이름      널?       유형            
------- -------- ------------- 
order_no    NOT NULL NUMBER(10)    
order_name           VARCHAR2(100) 
order_address        VARCHAR2(100)          
order_price          NUMBER(10)    
order_date           DATE
order_count  		 NUMBER(10)
order_delivery		 VARCHAR2(100)
order_takeout		 VARCHAR2(100)
user_id 			 VARCHAR2(100)
 */
public class Order {
	private int order_no;
	private String order_name;
	private String order_address;
	private int order_price;
	private Date order_date;
	private int order_count;
	private String order_delivery;
	private String order_takeout;
	private String user_id;
	
	public Order() {
		
	}
	
	public Order(int order_no, String order_name, String order_address, int order_price, Date order_date,
			int order_count, String order_delivery, String order_takeout, String user_id) {
		super();
		this.order_no = order_no;
		this.order_name = order_name;
		this.order_address = order_address;
		this.order_price = order_price;
		this.order_date = order_date;
		this.order_count = order_count;
		this.order_delivery = order_delivery;
		this.order_takeout = order_takeout;
		this.user_id = user_id;
	}

	public int getOrder_no() {
		return order_no;
	}

	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}

	public String getOrder_name() {
		return order_name;
	}

	public void setOrder_name(String order_name) {
		this.order_name = order_name;
	}

	public String getOrder_address() {
		return order_address;
	}

	public void setOrder_address(String order_address) {
		this.order_address = order_address;
	}

	public int getOrder_price() {
		return order_price;
	}

	public void setOrder_price(int order_price) {
		this.order_price = order_price;
	}

	public Date getOrder_date() {
		return order_date;
	}

	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}

	public int getOrder_count() {
		return order_count;
	}

	public void setOrder_count(int order_count) {
		this.order_count = order_count;
	}

	public String getOrder_delivery() {
		return order_delivery;
	}

	public void setOrder_delivery(String order_delivery) {
		this.order_delivery = order_delivery;
	}

	public String getOrder_takeout() {
		return order_takeout;
	}

	public void setOrder_takeout(String order_takeout) {
		this.order_takeout = order_takeout;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	@Override
	public String toString() {
		return "orders [order_no=" + order_no + ", order_name=" + order_name + ", order_address=" + order_address
				+ ", order_price=" + order_price + ", order_date=" + order_date + ", order_count=" + order_count
				+ ", order_delivery=" + order_delivery + ", order_takeout=" + order_takeout + ", user_id=" + user_id
				+ "]";
	}
	
	
	
}
