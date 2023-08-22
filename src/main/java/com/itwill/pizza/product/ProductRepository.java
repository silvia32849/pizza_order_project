package com.itwill.pizza.product;

import java.util.List;

public interface ProductRepository {

	int insert(Product entity) throws Exception;
	int update(Product entity) throws Exception;
	int delete(int product_no) throws Exception;
	List<Product> findByAll() throws Exception;
	List<Product> findByCategory(int category_no) throws Exception;
	List<Product> findByKeyword(String keyword) throws Exception;
	Product productDetail(int product_no) throws Exception;
}
