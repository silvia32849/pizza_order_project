package com.itwill.pizza.product;

import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.itwill.pizza.mapper.ProductMapper;






public class ProductMyBatis implements ProductRepository{

	
	public static final String NAMES="com.itwill.pizza.product.ProductRepository";
	SqlSessionFactory sqlSessionFactory;

	public ProductMyBatis() throws Exception {
		this.sqlSessionFactory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsStream("mybatis-cofig.xml"));
	}
	
	// 추가된 상품 번호 리턴해서 상품 업로시 업로드 된 product_no를 리턴받음.
		@Override
	public int insert(ProductEntity entity) throws Exception {
		SqlSession sqlSession =sqlSessionFactory.openSession(true);
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
			
		int count = mapper.insert(entity);
		sqlSession.close();
		return entity.getProduct_no();
	}

	@Override
	public int update(ProductEntity entity) throws Exception {
		SqlSession sqlSession =sqlSessionFactory.openSession(true);
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
			
		int count = mapper.update(entity);
		sqlSession.close();
		return count;
	}

	@Override
	public int delete(int product_no) throws Exception {
		SqlSession sqlSession =sqlSessionFactory.openSession(true);
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
			
		int count = mapper.delete(product_no);
		sqlSession.close();
		return count;
	}

	@Override
	public List<ProductEntity> findByAll() throws Exception {
		SqlSession sqlSession =sqlSessionFactory.openSession(true);
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		List<ProductEntity> entityList =mapper.findByAll();
		sqlSession.close();
		return entityList;
	}

	@Override
	public List<ProductEntity> findByCategory(int category_no) throws Exception {
		SqlSession sqlSession =sqlSessionFactory.openSession(true);
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		List<ProductEntity> entityList =mapper.findByCategory(category_no);
		sqlSession.close();
		return entityList;
	}

	@Override
	public List<ProductEntity> findByKeyword(String keyword) throws Exception {
		SqlSession sqlSession =sqlSessionFactory.openSession(true);
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		List<ProductEntity> entityList =mapper.findByKeyword(keyword);
		sqlSession.close();
		return entityList;
	}

	
}
