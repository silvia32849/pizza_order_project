package com.itwill.pizza.product.test;


import java.util.List;

import com.itwill.pizza.product.Product;
import com.itwill.pizza.product.ProductMyBatis;
import com.itwill.pizza.product.ProductService;
public class ProductServiceTest {

	public static void main(String[] args) throws Exception {
		ProductService ps;
		List<Product> productList;
		Product pe ;
		
		System.out.println("1.객체 생성");
		ps = new ProductService();
		System.out.println(ps);
		System.out.println("------------------------------------------");
		
		System.out.println("2.admin용)상품 추가하기");
		int result = ps.insert(new Product(0,"test",8000,"producttest","producttest",3,"M"));
		System.out.println(result+"개의 상품 추가 완료");
		System.out.println("------------------------------------------");
		
		System.out.println("3.admin용)상품 업데이트");
		result = ps.update(new Product(14,"test",8000,"producttest","producttest",3,"M"));
		System.out.println(result+"개의 상품 업데이트 완료");
		System.out.println("------------------------------------------");
		
		System.out.println("4.admin용)상품 삭제");
		result = ps.delete(14);
		System.out.println(result+"개의 상품 삭제완료");
		System.out.println("------------------------------------------");
		
		
		System.out.println("5.상품 전체 출력");
		productList = ps.findByAll();
		System.out.println(productList);
		System.out.println("------------------------------------------");
		
		System.out.println("6.상품 카테고리 별 출력");
		productList=ps.findByCategory(1);
		System.out.println(productList);
		System.out.println("------------------------------------------");
		productList=ps.findByCategory(2);
		System.out.println("------------------------------------------");
		
		
		System.out.println("7.키워드 상품(들) 출력");
		productList=ps.findByKeyword("콜라");
		System.out.println(productList);
		
	}
}
