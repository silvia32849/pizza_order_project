package com.itwill.pizza.orders;

import static org.junit.jupiter.api.Assertions.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;


class OrderDaoImplMyBatisTest {
	OrderDaoImplMyBatis orderDao;
	
	@BeforeEach

	@Test
	void testOrderDaoImplMyBatis() throws Exception {
		orderDao = new OrderDaoImplMyBatis();
		assertNotNull(orderDao);
	}

	
	@Test
	void testDeleteOrder() throws Exception {
		int rowCount = orderDao.deleteOrder(2);
	}
	
	@Test
	void testFindOrderByUserId() throws Exception {
		List<Order> orderList = orderDao.findOrderByUserId("user1");
		assertNotNull(orderList);
		assertNotSame(0, orderList.size());
		System.out.println(orderList);

	}

	@Test
	void testFindOrderItemByOrderNo() throws Exception {
		OrderItem orderItem = orderDao.findOrderItemByOrderNo(5);
		assertNotNull(orderItem);
		System.out.println(orderItem);
	}

}