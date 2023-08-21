package com.itwill.pizza.orders;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class OrderDaoImplMyBatisTest {
	OrderDaoImplMyBatis orderDao;
	
	@BeforeEach

	@Test
	void testOrderDaoImplMyBatis() throws Exception {
		orderDao = new OrderDaoImplMyBatis();
	}

	@Test
	void testInsertOrder() {
		
	}

	@Test
	void testUpdateOrder() throws Exception{
		//orderDao.updateOrder(new Order(0, null, "서울시", 0, null, 0, null, null, null, null));
	}

	@Test
	void testDeleteOrder() throws Exception{
		orderDao.deleteOrder(4);
	}

	@Test
	void testDeleteOrderByUserId() {
		fail("Not yet implemented");
	}

	@Test
	void testInsertOrderItem() {
		fail("Not yet implemented");
	}

	@Test
	void testUpdateOrderItem() {
		fail("Not yet implemented");
	}

	@Test
	void testDeleteOrderItem() {
		fail("Not yet implemented");
	}

	@Test
	void testDeleteOrderItemByUserId() {
		fail("Not yet implemented");
	}

	@Test
	void testFindAllOrders() {
		fail("Not yet implemented");
	}

	@Test
	void testFindOrderByNo() {
		fail("Not yet implemented");
	}

	@Test
	void testFindOrderByUserId() {
		fail("Not yet implemented");
	}

	@Test
	void testFindAllOrderItems() {
		fail("Not yet implemented");
	}

	@Test
	void testFindOrderItemByOrderNo() {
		fail("Not yet implemented");
	}

	@Test
	void testFindOrderItemByOiNo() {
		fail("Not yet implemented");
	}

}
