package com.itwill.pizza.product;

import java.util.List;

public interface ProductRepository {

	int insert(ProductEntity entity) throws Exception;
	int update(int product_no) throws Exception;
	int delete(int product_no) throws Exception;
	List<ProductEntity> findByAll() throws Exception;
	List<ProductEntity> findByCategory(int category_no) throws Exception;
	List<ProductEntity> findByKeyword(String keyword) throws Exception;
}
