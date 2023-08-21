package com.itwill.pizza.product;

import java.util.List;

public class ProductService {

	private ProductMyBatis dao;
	
	public ProductService() throws Exception {
		dao= new ProductMyBatis();
	}
	
	//admin용 C,U,D작업
	public int insert(ProductEntity entity) throws Exception {
		
		return dao.insert(entity);
	}
	public int update(ProductEntity entity) throws Exception {
		return dao.update(entity);
	}
	public int delete(int product_no) throws Exception {
		return dao.delete(product_no);
	}
	
	//Read작업
	
	//1. 리스트 전체 출력
	
	public List<ProductEntity> findByAll() throws Exception{
		return dao.findByAll();
	}
 
	//2. 카테고리별 리스트 출력
	public List<ProductEntity> findByCategory(int category_no) throws Exception{
		return dao.findByCategory(category_no);
	}
	
	//3. 키워드(검색)
	public List<ProductEntity> findByKeyword(String keyword) throws Exception{
		return dao.findByKeyword(keyword);
	}
}
