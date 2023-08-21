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
		int rowCount=orderMapper.insertOrder(order);
		sqlSession.close();
		return rowCount;
	}

	@Override
	public int insertOrderItem(OrderItem orderItem) throws Exception {
		SqlSession sqlSession= sqlSessionFactory.openSession(true);
		OrderMapper orderMapper=sqlSession.getMapper(OrderMapper.class);
		int rowCount=orderMapper.insertOrderItem(orderItem);
		sqlSession.close();
		return rowCount;
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
	public int deleteOrderItem(int order_no) throws Exception {
		SqlSession sqlSession= sqlSessionFactory.openSession(true);
		OrderMapper orderMapper=sqlSession.getMapper(OrderMapper.class);
		int rowCount=orderMapper.deleteOrderItem(order_no);
		sqlSession.close();
		return rowCount;
	}
	
	@Override
	public int deleteOrderByUserId(String user_id) throws Exception {
		SqlSession sqlSession= sqlSessionFactory.openSession(true);
		OrderMapper orderMapper=sqlSession.getMapper(OrderMapper.class);
		int rowCount=orderMapper.deleteOrderByUserId(user_id);
		sqlSession.close();
		return rowCount;
	}

	@Override
	public int deleteOrderItemByUserId(String user_id) throws Exception {
		SqlSession sqlSession= sqlSessionFactory.openSession(true);
		OrderMapper orderMapper=sqlSession.getMapper(OrderMapper.class);
		int rowCount=orderMapper.deleteOrderItemByUserId(user_id);
		sqlSession.close();
		return rowCount;
	}

	@Override
	public List<Order> findAllOrders() throws Exception {
		SqlSession sqlSession= sqlSessionFactory.openSession(true);
		OrderMapper orderMapper=sqlSession.getMapper(OrderMapper.class);
		List<Order> orderList =orderMapper.findAllOrders();
		sqlSession.close();
		return orderList;
	}

	@Override
	public Order findOrderByNo(int order_no) throws Exception {
		SqlSession sqlSession= sqlSessionFactory.openSession(true);
		OrderMapper orderMapper=sqlSession.getMapper(OrderMapper.class);
		Order order=orderMapper.findOrderByNo(order_no);
		sqlSession.close();
		return order;
	}

	@Override
	public Order findOrderByUserId(String user_id) throws Exception {
		SqlSession sqlSession= sqlSessionFactory.openSession(true);
		OrderMapper orderMapper=sqlSession.getMapper(OrderMapper.class);
		Order order=orderMapper.findOrderByUserId(user_id);
		sqlSession.close();
		return order;
	}

	@Override
	public List<OrderItem> findAllOrderItems() throws Exception {
		SqlSession sqlSession= sqlSessionFactory.openSession(true);
		OrderMapper orderMapper=sqlSession.getMapper(OrderMapper.class);
		List<OrderItem> orderList =orderMapper.findAllOrderItems();
		sqlSession.close();
		return orderList;
	}

	@Override
	public OrderItem findOrderItemByOrderNo(int order_no) throws Exception {
		SqlSession sqlSession= sqlSessionFactory.openSession(true);
		OrderMapper orderMapper=sqlSession.getMapper(OrderMapper.class);
		OrderItem orderItem=orderMapper.findOrderItemByOrderNo(order_no);
		sqlSession.close();
		return orderItem;
	}

	@Override
	public OrderItem findOrderItemByOiNo(int oi_no) throws Exception {
		SqlSession sqlSession= sqlSessionFactory.openSession(true);
		OrderMapper orderMapper=sqlSession.getMapper(OrderMapper.class);
		OrderItem orderItem=orderMapper.findOrderItemByOiNo(oi_no);
		sqlSession.close();
		return orderItem;
	}

	
}