package com.itwill.pizza.orders;

import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.itwill.pizza.mapper.OrderMapper;




public class OrderDaoImplMyBatis implements OrderDao {

	private SqlSessionFactory sqlSessionFactory;

	public OrderDaoImplMyBatis() throws Exception {
		this.sqlSessionFactory = new SqlSessionFactoryBuilder()
				.build(Resources.getResourceAsStream("mybatis-config.xml"));
	}


	@Override
	public int insert(Order order) throws Exception {
		System.out.println("#### UserDaoImplMyBatis : insert() 호출  ");
		SqlSession sqlSession= sqlSessionFactory.openSession(true);
		OrderMapper orderMapper=sqlSession.getMapper(OrderMapper.class);
		int rowCount=orderMapper.insert(order);
		sqlSession.close();
		return rowCount;
	}

	
}