package com.itwill.pizza.orders;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class OrderDaoImplMyBatisTest {
	OrderDaoImplMyBatis orderDao;
	
	@BeforeEach
	
	@Test
	void testOrderDaoImplMyBatis() throws Exception{
		orderDao = new OrderDaoImplMyBatis();
	}

	@Test
	void testInsertOrder() throws Exception{
		//orderDao.insertOrder(new Order(0, "한지민", "강원도 원주시", 3000000, null, 0, "user10"));
	}

	@Test
	void testInsertOrderItem() throws Exception{
		//orderDao.insertOrderItem(new OrderItem(6, 7, 6, 1));
	}

	@Test
	void testDeleteOrder() throws Exception{
		//orderDao.deleteOrder(1);
	}

	@Test
	void testDeleteOrderItem() throws Exception{
		//성공은 하는데 해당 DB 테이블 데이터가 안사라짐
		//orderDao.deleteOrderItem(2);
	}

	@Test
	void testDeleteOrderByUserId() throws Exception{
		//orderDao.deleteOrderByUserId("user10");
	}

	@Test
	void testDeleteOrderItemByUserId() throws Exception{
		//성공은 하는데 해당 DB 테이블 데이터가 안사라짐
		//orderDao.deleteOrderItemByUserId("user2");
	}

	@Test
	void testFindAllOrders() throws Exception{
		//orderDao.findAllOrders();
	}

	@Test
	void testFindOrderByNo() throws Exception{
		//orderDao.findOrderByNo(1);
	}

	@Test
	void testFindOrderByUserId() throws Exception{
		//orderDao.findOrderByUserId("user2");
	}

	@Test
	void testFindAllOrderItems() throws Exception{
		//orderDao.findAllOrderItems();
	}

	@Test
	void testFindOrderItemByOrderNo() throws Exception{
		//orderDao.findOrderItemByOrderNo(2);
	}

	@Test
	void testFindOrderItemByOiNo() throws Exception{
		//orderDao.findOrderItemByOiNo(2);
	}
	//테스트 완료
}
