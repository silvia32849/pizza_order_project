package com.itwill.pizza.inquiries.test;

import java.util.List;

import com.itwill.pizza.inquiries.Inquiries;
import com.itwill.pizza.inquiries.InquiriesService;

public class InquiriesServiceTest {

	public static void main(String[] args) throws Exception {
		
	InquiriesService inq;
	System.out.println("객체생성");
	inq =new InquiriesService();
	System.out.println(inq);
	
	//create 성공
	int result =inq.create(new Inquiries(0,"생성","생성",null,"생성자1"));
	System.out.println(result+"결과");
	//update 성공
//	int result =inq.update(new Inquiries(4,"수정1","수정1",null,"생성자수정"));
//	System.out.println(result+"개의 데이터 업데이트 성공");

	
//	//remove 성공
//	int result = inq.remove(7);
//	System.out.println(result+"개의 데이터 삭제 성공");

	
	List<Inquiries> result2 = inq.findInquiriesList("우한영");
	System.out.println(result2);
	
	
//	 for (Inquiries inquiries : result2) {
//		 System.out.println(inquiries); 
//		 }
//	 
//	
	}
}
