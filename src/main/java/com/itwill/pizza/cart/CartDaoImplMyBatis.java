package com.itwill.pizza.cart;

import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.itwill.pizza.mapper.CartMapper;




public class CartDaoImplMyBatis implements CartDao {

	private SqlSessionFactory sqlSessionFactory;

	public CartDaoImplMyBatis() throws Exception {
		this.sqlSessionFactory = new SqlSessionFactoryBuilder()
				.build(Resources.getResourceAsStream("mybatis-config.xml"));
	}



	@Override
	public int insert(Cart cart) throws Exception {
		System.out.println("#### UserDaoImplMyBatis : insert() 호출  ");
		SqlSession sqlSession= sqlSessionFactory.openSession(true);
		CartMapper cartMapper=sqlSession.getMapper(CartMapper.class);
		int rowCount=cartMapper.insert(cart);
		sqlSession.close();
		return rowCount;
	}
	
	@Override
	public int count(String user_id, int product_no) throws Exception {
		System.out.println("#### UserDaoImplMyBatis : insert() 호출  ");
		SqlSession sqlSession= sqlSessionFactory.openSession(true);
		CartMapper cartMapper=sqlSession.getMapper(CartMapper.class);
		int rowCount=cartMapper.count(user_id, product_no);
		sqlSession.close();
		return rowCount;
	}
	
	@Override
	public int updateInCart(Cart cart) throws Exception{
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		CartMapper cartMapper = sqlSession.getMapper(CartMapper.class);
		int rowCount = cartMapper.updateInCart(cart);
		sqlSession.close();
		return rowCount;
	}
	
	@Override
	public int updateInProduct(Cart cart) throws Exception{
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		CartMapper cartMapper = sqlSession.getMapper(CartMapper.class);
		int rowCount = cartMapper.updateInProduct(cart);
		sqlSession.close();
		return rowCount;
	}
	
	@Override
	public int deleteByCartNo(int cart_no) throws Exception{
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		CartMapper cartMapper = sqlSession.getMapper(CartMapper.class);
		int rowCount = cartMapper.deleteByCartNo(cart_no);
		return rowCount;
	}
	
	@Override
	public int deleteAll(String user_id) throws Exception{
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		CartMapper cartMapper = sqlSession.getMapper(CartMapper.class);
		int rowCount = cartMapper.deleteAll(user_id);
		return rowCount;
	}
	
	@Override
	public List<Cart> findByUserId (String user_id) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		CartMapper cartMapper = sqlSession.getMapper(CartMapper.class);
		List<Cart> cartList = cartMapper.findByUserId(user_id);
		return cartList;
	}

	
	
}