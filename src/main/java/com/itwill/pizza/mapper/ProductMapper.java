package com.itwill.pizza.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;


import com.itwill.pizza.product.Product;


public interface ProductMapper {

	//상품추가(admin)
	@SelectKey(
		statement = "select product_product_no_seq.nextval from dual ",
		before = true,
		keyProperty = "product_no",
		resultType = Integer.class
	)
	@Insert("insert into product values(#{product_no}, #{product_name}, #{product_price}, #{product_image},#{product_desc}, #{product_category}, #{product_size})")
	int insert(Product entity) throws Exception;
	
	//상품 수정(admin)
	@Update("update product set product_name=#{product_name}, product_price=#{product_price}, product_image=#{product_image}, product_desc=#{product_desc}, product_category=#{product_category}, product_size=#{product_size} where product_no=#{product_no}")
	int update(Product entity) throws Exception;
	
	//상품 삭제(admin)
	@Delete("delete product where product_no=#{product_no}")
	int delete(int product_no) throws Exception;
	
	/*
	 * 전체 select, 카테고리별, 키워드 검색 
	 */
	//상품 전체출력
	@Select("select * from product order by product_category")
	List<Product> findByAll() throws Exception;
	
	//상품 카테고리별 출력
	@Select("select * from product where product_category=#{product_category}")
	List<Product> findByCategory(int product_category) throws Exception;
	
	//키워드 검색 출력
	@Select("SELECT * FROM product WHERE product_name LIKE '%' || #{keyword} || '%' OR product_desc LIKE '%' || #{keyword} || '%'")
	List<Product> findByKeyword(@Param("keyword") String keyword) throws Exception;
	
	@Select("select * from product where product_no=#{product_no}")
	Product productDetail(int product_no) throws Exception;

}