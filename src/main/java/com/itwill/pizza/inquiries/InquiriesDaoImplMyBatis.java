package com.itwill.pizza.inquiries;

import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.itwill.pizza.board.Board;
import com.itwill.pizza.mapper.BoardMapper;
import com.itwill.pizza.mapper.InquiriesMapper;


public class InquiriesDaoImplMyBatis implements InquiriesDao{

	private SqlSessionFactory sqlSessionFactory;

	public InquiriesDaoImplMyBatis()throws Exception {

		this.sqlSessionFactory = 
				new SqlSessionFactoryBuilder()
				.build(Resources.getResourceAsStream("mybatis-config.xml"));
	}

	@Override
	public int insert(Inquiries inquiries) throws Exception {
		SqlSession sqlSession=sqlSessionFactory.openSession(true);
		InquiriesMapper inquiriesMapper=sqlSession.getMapper(InquiriesMapper.class);
		int rowCount=inquiriesMapper.insert(inquiries);
		sqlSession.close();
		return rowCount;
	}

	@Override
	public int remove(int inquiries_no) throws Exception {
		SqlSession sqlSession=sqlSessionFactory.openSession(true);
		InquiriesMapper inquiriesMapper=sqlSession.getMapper(InquiriesMapper.class);
		int rowCount=inquiriesMapper.remove(inquiries_no);
		sqlSession.close();
		return rowCount;

	}

	@Override
	public int update(Inquiries inquiries_no) throws Exception {
		SqlSession sqlSession=sqlSessionFactory.openSession(true);
		InquiriesMapper inquiriesMapper=sqlSession.getMapper(InquiriesMapper.class);
		int rowCount=inquiriesMapper.update(inquiries_no);
		sqlSession.close();
		return rowCount;
	}

	@Override
	public List<Inquiries> findInquiries(String user_id) throws Exception {
		SqlSession sqlSession=sqlSessionFactory.openSession(true);
		InquiriesMapper inquiriesMapper=sqlSession.getMapper(InquiriesMapper.class);
		List<Inquiries> inquiriesList=inquiriesMapper.findInquiries(user_id);
		return inquiriesList;
	}
	public Inquiries findInquiries1(int inquiries_no) throws Exception {
		SqlSession sqlSession=sqlSessionFactory.openSession(true);
		InquiriesMapper inquiriesMapper=sqlSession.getMapper(InquiriesMapper.class);
		Inquiries inquiries1= inquiriesMapper.findInquiries1(inquiries_no);
		System.out.println(inquiries1);
		sqlSession.close();
		return inquiries1;
	}
	
	
}
