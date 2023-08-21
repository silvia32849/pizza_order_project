package com.itwill.pizza.orders;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/*
이름      널?       유형            
------- -------- ------------- 
oi_no    NOT NULL NUMBER(10)    
oi_qty            NUMBER(10)
order_no          NUMBER(10)          
product_no        NUMBER(10)    
*/


@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class OrderItem {
	private int oi_no;
	private int oi_qty;
	private int order_no;
	private int product_no;
	

	
	
	
	
}
