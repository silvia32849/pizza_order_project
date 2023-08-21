package com.itwill.pizza.product;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@ToString
@Getter @Setter
public class Product {

	private int product_no;
	private String product_name;
	private int product_price;
	private String product_image;
	private String product_desc;
	private int product_category;
	private String product_size;
}
