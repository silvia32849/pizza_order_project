package com.itwill.pizza.orders;

import com.itwill.pizza.product.Product;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;



@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class OrderItem {
	private int oi_no;
	private int oi_qty;
	private int order_no;
	private Product product;
	

	
	
	
	
}
