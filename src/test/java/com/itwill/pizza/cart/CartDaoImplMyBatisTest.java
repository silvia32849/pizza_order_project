package com.itwill.pizza.cart;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.itwill.pizza.product.Product;

class CartDaoImplMyBatisTest {
	CartDaoImplMyBatis dao;
	
	@BeforeEach
	
	
	@Test
	void testCartDaoImplMyBatis() throws Exception {
		dao = new CartDaoImplMyBatis();
		assertNotNull(dao);
	}

	@Test
	void testInsert() throws Exception{
		//int count = dao.insert(new Cart(1,1,"user1", new Product(1,"test",30000,"test","test",3,"M")));
	}

	@Test
	void testCount() throws Exception{
		int count = dao.count("user1", 1);
		//System.out.println(count);
	}

	@Test
	void testUpdateInCart() throws Exception{
		//int count = dao.updateInCart(new Cart(1,1,"user1", new Product(1,"test",30000,"test","test",3,"M")));
	}

	@Test
	void testUpdateInProduct() throws Exception{
		//int count = dao.updateInProduct(new Cart(1,1,"user1", new Product(1,"test",30000,"test","test",3,"M")));
	}

	@Test
	void testDeleteByCartNo() throws Exception{
		//dao.deleteByCartNo(3);
	}

	@Test
	void testDeleteAll() throws Exception{
		//int count = dao.deleteAll("user6");
	}

	@Test
	void testFindByUserId() throws Exception{
		//List<Cart> cartList = dao.findByUserId("user1");
	}

}