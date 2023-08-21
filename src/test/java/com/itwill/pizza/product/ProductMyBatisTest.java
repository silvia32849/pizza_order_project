package com.itwill.pizza.product;

import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.junit.jupiter.api.Assertions.fail;

import java.util.List;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class ProductMyBatisTest {
	ProductMyBatis dao;
	List<Product> productList;
	Product pe;

	@BeforeEach
	void setUp() throws Exception {
	}

	@DisplayName("0.Dao객체생성")
	@Test
	void testProductMyBatis() throws Exception{
		dao = new ProductMyBatis();
		assertNotNull(dao);
	}

	@DisplayName("1.admin용)상품 추가하기")
	@Test
	void testInsert() throws Exception {
		//insert into product values(product_p_no_seq.nextval, '갈릭 디핑 소스', 29000, 'images/source.jpg', '#담백한 갈릭 디핑 소스!', 3, 'M'); 
		int result = dao.insert(new Product(0,"test",8000,"producttest","producttest",3,"M"));
		assertTrue(result==1,"삽입실패");
		
	}
	@DisplayName("2.admin용)상품 업데이트")
	@Test
	void testUpdate() throws Exception {
		int result = dao.update(new Product(14,"test",8000,"producttest","producttest",3,"M"));
		assertTrue(result==1,"업데이트 실패");
	}
	@DisplayName("3.admin용)상품 삭제")
	@Test
	void testDelete() {
		fail("Not yet implemented");
	}

	@DisplayName("4.상품 전체 출력")
	@Test
	void testFindByAll() {
		fail("Not yet implemented");
	}
	
	@DisplayName("5.상품 카테고리 별 출력")
	@Test
	void testFindByCategory() {
		fail("Not yet implemented");
	}

	@DisplayName("6.키워드 상품(들) 출력")
	@Test
	void testFindByKeyword() {
		fail("Not yet implemented");
	}

}
