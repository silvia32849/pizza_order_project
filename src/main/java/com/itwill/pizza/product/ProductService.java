package com.itwill.pizza.product;

import java.util.List;

public class ProductService {

	private ProductMyBatis dao;
	
	public ProductService() throws Exception {
		dao= new ProductMyBatis();
	}
	
	//admin용 C,U,D작업
	public int insert(Product entity) throws Exception {
		
		return dao.insert(entity);
	}
	public int update(Product entity) throws Exception {
		return dao.update(entity);
	}
	public int delete(int product_no) throws Exception {
		return dao.delete(product_no);
	}
	
	//Read작업
	
	//1. 리스트 전체 출력
	
	public List<Product> findByAll() throws Exception{
		return dao.findByAll();
	}
 
	//2. 카테고리별 리스트 출력
	public List<Product> findByCategory(int category_no) throws Exception{
		return dao.findByCategory(category_no);
	}
	
	//3. 키워드(검색)
	public List<Product> findByKeyword(String keyword) throws Exception{
		return dao.findByKeyword(keyword);
	}
	
	//4. 상품 디테일
	public Product productDetail(int product_no) throws Exception{
		return dao.productDetail(product_no);
	}
}
