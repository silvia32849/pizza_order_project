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
	void testInsertOrder() throws Exception {
		List<OrderItem> orderList = new ArrayList<OrderItem>();
		orderList.add(new OrderItem(0, 3, 0, null));
		
		int rowCount = orderDao.insertOrder(new Order(0, "와일드 와일드 웨스크 스테이크+블랙타이거", "서울시 강남구", 20350, null, 1, "user1", orderList));
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