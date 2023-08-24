package com.itwill.pizza.product.test;

import java.util.List;

import com.itwill.pizza.product.Product;
import com.itwill.pizza.product.ProductMyBatis;


public class ProductMyBatisTestMain {
	
	public static void main(String[] args) throws Exception {

	ProductMyBatis dao;
	List<Product> productList;
//	ProductEntity pe;
	
	System.out.println("1.객체 생성");
	dao = new ProductMyBatis();
	System.out.println(dao);
	System.out.println("------------------------------------------");
	
	System.out.println("2.admin용)상품 추가하기");
	int result = dao.insert(new Product(0,"test",8000,"producttest","producttest",3,"M"));
	System.out.println(result+"개의 상품 추가 완료");
	System.out.println("------------------------------------------");
	
	System.out.println("3.admin용)상품 업데이트");
	result = dao.update(new Product(14,"test",8000,"producttest","producttest",3,"M"));
	System.out.println(result+"개의 상품 업데이트 완료");
	System.out.println("------------------------------------------");
	
	System.out.println("4.admin용)상품 삭제");
	result = dao.delete(14);
	System.out.println(result+"개의 상품 삭제완료");
	System.out.println("------------------------------------------");
	
	
	System.out.println("5.상품 전체 출력");
	productList = dao.findByAll();
	System.out.println(productList);
	System.out.println("------------------------------------------");
	
	System.out.println("6.상품 카테고리 별 출력");
	productList=dao.findByCategory(1);
	System.out.println(productList);
	System.out.println("------------------------------------------");
	productList=dao.findByCategory(2);
	System.out.println("------------------------------------------");
	
	
	System.out.println("7.키워드 상품(들) 출력");
	productList=dao.findByKeyword("콜라");
	System.out.println(productList);
	System.out.println("------------------------------------------");
	
	System.out.println("8.상품 하나출력");
	Product pro= dao.productDetail(11);
	System.out.println(pro);
	}
	

}
