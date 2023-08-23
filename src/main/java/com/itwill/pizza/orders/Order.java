package com.itwill.pizza.orders;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class Order {
	private int order_no;
	private String order_name;
	private String order_address;
	private int order_price;
	private Date order_date;
	private int order_delivery;
	/************ FK ************/
	private String user_id;
	
	private List<OrderItem> orderItemList;
	
	public Order (){
		orderItemList=new ArrayList<OrderItem>();
	}

	public Order(int order_no, String order_name, String order_address, int order_price, Date order_date,
			int order_delivery, String user_id , List<OrderItem> orderItemList) {
		super();
		this.order_no = order_no;
		this.order_name = order_name;
		this.order_address = order_address;
		this.order_price = order_price;
		this.order_date = order_date;
		this.order_delivery = order_delivery;
		this.user_id = user_id;
		this.orderItemList = orderItemList;
	}
	
	
	
}
	

