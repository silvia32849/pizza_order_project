package com.itwill.pizza.orders;

public class OrderSQL {
	
	public static final String ORDER_INSERT = "insert into orders(order_no, order_name, order_address, order_price, order_date, user_id) values(orders_order_no_SEQ.nextval,?,?,?,?,?)";
	
}
