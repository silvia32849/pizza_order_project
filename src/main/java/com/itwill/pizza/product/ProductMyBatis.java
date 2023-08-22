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
		this.sqlSessionFactory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsStream("mybatis-config.xml"));
	}
	
	// 추가된 상품 번호 리턴해서 상품 업로시 업로드 된 product_no를 리턴받음.
		@Override
	public int insert(Product entity) throws Exception {
		SqlSession sqlSession =sqlSessionFactory.openSession(true);
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
			
		
		int count = mapper.insert(entity);
		sqlSession.close();
		return count;
	}

	@Override
	public int update(Product entity) throws Exception {
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
	public List<Product> findByAll() throws Exception {
		SqlSession sqlSession =sqlSessionFactory.openSession(true);
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		List<Product> entityList =mapper.findByAll();
		sqlSession.close();
		return entityList;
	}

	@Override
	public List<Product> findByCategory(int category_no) throws Exception {
		SqlSession sqlSession =sqlSessionFactory.openSession(true);
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		List<Product> entityList =mapper.findByCategory(category_no);
		sqlSession.close();
		return entityList;
	}

	@Override
	public List<Product> findByKeyword(String keyword) throws Exception {
		SqlSession sqlSession =sqlSessionFactory.openSession(true);
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		List<Product> entityList =mapper.findByKeyword(keyword);
		sqlSession.close();
		return entityList;
	}
	@Override
	public Product productDetail(int product_no) throws Exception {
		SqlSession sqlSession =sqlSessionFactory.openSession(true);
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		Product product = mapper.productDetail(product_no);
		sqlSession.close();
		return product;
	}

	
}
