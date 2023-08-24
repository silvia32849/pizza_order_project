package com.itwill.pizza.orders;

import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.itwill.pizza.mapper.OrderMapper;




public class OrderDaoImplMyBatis implements OrdersDao {

	private SqlSessionFactory sqlSessionFactory;

	public OrderDaoImplMyBatis() throws Exception {
		this.sqlSessionFactory = new SqlSessionFactoryBuilder()
				.build(Resources.getResourceAsStream("mybatis-config.xml"));
	}


	@Override
	public int insertOrder(Order order) throws Exception {
		SqlSession sqlSession= sqlSessionFactory.openSession(true);
		OrderMapper orderMapper=sqlSession.getMapper(OrderMapper.class);
		orderMapper.insertOrder(order);
		List<OrderItem> orderItemList= order.getOrderItemList();
		for (OrderItem orderItem : orderItemList) {
			orderItem.setOrder_no(order.getOrder_no());
			orderMapper.insertOrderItem(orderItem);
		}
		sqlSession.commit();
		sqlSession.close();
		return 0;
	}



	@Override
	public int deleteOrder(int order_no) throws Exception {
		SqlSession sqlSession= sqlSessionFactory.openSession(true);
		OrderMapper orderMapper=sqlSession.getMapper(OrderMapper.class);
		int rowCount=orderMapper.deleteOrder(order_no);
		sqlSession.close();
		return rowCount;
	}


	@Override
	public List<Order> findOrderByUserId(String user_id) throws Exception {
		SqlSession sqlSession= sqlSessionFactory.openSession(true);
		OrderMapper orderMapper=sqlSession.getMapper(OrderMapper.class);
		List<Order> orderList = orderMapper.findOrderByUserId(user_id);
		sqlSession.close();
		return orderList;
	}


	@Override
	public OrderItem findOrderItemByOrderNo(int order_no) throws Exception {
		SqlSession sqlSession= sqlSessionFactory.openSession(true);
		OrderMapper orderMapper=sqlSession.getMapper(OrderMapper.class);
		OrderItem orderItem = orderMapper.findOrderItemByOrderNo(order_no);
		sqlSession.close();
		return orderItem;
	}
	
	
	@Override
	public Order findOrderByOrderNo(int order_no) throws Exception {
		SqlSession sqlSession= sqlSessionFactory.openSession(true);
		OrderMapper orderMapper=sqlSession.getMapper(OrderMapper.class);
		Order order = orderMapper.findOrderByOrderNo(order_no);
		sqlSession.close();
		return order;
	}

	
}