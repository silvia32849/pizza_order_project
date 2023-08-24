package com.itwill.pizza.inquiries;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@ToString
@Getter @Setter
public class Inquiries {

	private int inquiries_no;
	private String inquiries_title;
	private String inquiries_content;
	private Date inquiries_date;
	private String user_id;
	
	
	

	 
}
