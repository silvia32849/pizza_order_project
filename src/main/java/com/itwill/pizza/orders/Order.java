package com.itwill.pizza.orders;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Getter @Setter
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
	/************ FK ************/
	private String user_id;
	/************ List ************/
	private List<OrderItem> orderItemList;
}