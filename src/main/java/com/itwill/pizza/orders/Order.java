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

@NoArgsConstructor
@AllArgsConstructor
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
	
	
	
}
	


