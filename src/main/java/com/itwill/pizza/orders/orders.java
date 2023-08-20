package com.itwill.pizza.orders;

import java.util.Date;

public class orders {
	private int order_no;
	private String order_name;
	private String order_address;
	private int order_price;
	private Date order_date;
	private int order_count;
	private String order_delivery;
	private String order_takeout;
	private String user_id;
	
	public orders() {
		
	}
	
	public orders(int order_no, String order_name, String order_address, int order_price, Date order_date,
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
	
}
