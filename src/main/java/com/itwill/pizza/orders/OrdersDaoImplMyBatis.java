package com.itwill.pizza.orders;

import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.itwill.pizza.mapper.OrderMapper;




public class OrdersDaoImplMyBatis implements OrdersDao {

	private SqlSessionFactory sqlSessionFactory;

	public OrdersDaoImplMyBatis() throws Exception {
		this.sqlSessionFactory = new SqlSessionFactoryBuilder()
				.build(Resources.getResourceAsStream("mybatis-config.xml"));
	}


	@Override
	public int insertOrder(Order order) throws Exception {
		SqlSession sqlSession= sqlSessionFactory.openSession(true);
		OrderMapper orderMapper=sqlSession.getMapper(OrderMapper.class);
		int rowCount=orderMapper.insert(order);
		sqlSession.close();
		return rowCount;
	}

	
}