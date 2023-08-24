package com.itwill.pizza.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.itwill.pizza.mapper.BoardMapper;




/*
 * 자료실 게시판에서 데이터베이스의 접근을 전담하는 클래스. 
 * BOARD 테이블과의 접근을 담당한다.
 */
public class BoardDaoImplMyBatis implements BoardDao {
	
	private SqlSessionFactory sqlSessionFactory;

	public BoardDaoImplMyBatis() throws Exception {
		this.sqlSessionFactory = 
				new SqlSessionFactoryBuilder()
				.build(Resources.getResourceAsStream("mybatis-config.xml"));
	}

	/**
	 * 새로운 게시물을 추가하는 메써드.
	 * 
	 * @throws Exception
	 */
	@Override
	public int insert(Board board) throws Exception {
		SqlSession sqlSession=sqlSessionFactory.openSession(true);
		BoardMapper boardMapper=sqlSession.getMapper(BoardMapper.class);
		int rowCount=boardMapper.insert(board);
		sqlSession.close();
		return rowCount;
	}

	public List<Board> findBoardList(int board_no) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public int remove(int board_no) throws Exception {
		SqlSession sqlSession=sqlSessionFactory.openSession(true);
		BoardMapper boardMapper=sqlSession.getMapper(BoardMapper.class);
		int rowCount=boardMapper.remove(board_no);
		sqlSession.close();
		return rowCount;

	}

	public int update(Board board_no) throws Exception {
		SqlSession sqlSession=sqlSessionFactory.openSession(true);
		BoardMapper boardMapper=sqlSession.getMapper(BoardMapper.class);
		int rowCount=boardMapper.update(board_no);
		sqlSession.close();
		return rowCount;
	}

	public Board findBoard(int board_No) throws Exception {
		SqlSession sqlSession=sqlSessionFactory.openSession(true);
		BoardMapper boardMapper=sqlSession.getMapper(BoardMapper.class);
		Board board= boardMapper.findBoard(board_No);
		System.out.println(board);
		sqlSession.close();
		return board;
	}

	@Override
	public void increaseReadCount(int number) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int getBoardCount() throws Exception {
		SqlSession sqlSession=sqlSessionFactory.openSession(true);
		BoardMapper boardMapper=sqlSession.getMapper(BoardMapper.class);
		int totCount=boardMapper.getBoardCount();
		sqlSession.close();
		return totCount;
	}
	
	/**
	 * 게시물 리스트를 반환(게시물시작번호,게시물끝번호)
	 */
	@Override
	public List<Board> findBoardList(int start, int last) throws Exception {
		System.out.println("" + start + " ~ " + last);
		SqlSession sqlSession=sqlSessionFactory.openSession(true);
		BoardMapper boardMapper=sqlSession.getMapper(BoardMapper.class);
		Map param=new HashMap();
		param.put("start", start);
		param.put("last", last);
		List<Board> boardList= boardMapper.findBoardList(param);
		sqlSession.close();
		return boardList;
	}
	
//	/**
//	 * 답글 게시물을 추가하는 메써드
//	 */
//	@Override
//	public int createReply(Board board) throws Exception {
//		SqlSession sqlSession=sqlSessionFactory.openSession(true);
//		BoardMapper boardMapper=sqlSession.getMapper(BoardMapper.class);
//		Board temp=boardMapper.findBoard(board.getBoardNo());
//		boardMapper.updateReply(temp);
//		
//		board.setGroupNo(temp.getGroupNo());
//		board.setStep(temp.getStep()+1);
//		board.setDepth(temp.getDepth()+1);
//		
//		boardMapper.createReply(board);
//		sqlSession.commit();
//		sqlSession.close();
//		return 0;
//
//	}



	/*
	 * 
	 * 
	 */
	/**
	 * 답변게시물 존재여부확인메쏘드
	 */
//	@Override
//	public boolean countReplay(Board board) throws SQLException {
//		SqlSession sqlSession=sqlSessionFactory.openSession(true);
//		BoardMapper boardMapper=sqlSession.getMapper(BoardMapper.class);
//		int rowCount=boardMapper.countReplay(board);
//		System.out.println(rowCount);
//		Boolean isExist=false;
//		if(rowCount>1) {
//			isExist=true;
//		}
//		sqlSession.close();
//		return isExist;
//	}

//	@Override
//	public void increaseReadCount(int number) throws Exception {
//		// TODO Auto-generated method stub
//		
//	}
//
//	@Override
//	public int getBoardCount() throws Exception {
//		// TODO Auto-generated method stub
//		return 0;
//	}
//
//	@Override
//	public int createReply(Board board) throws Exception {
//		// TODO Auto-generated method stub
//		return 0;
//	}
//
//	@Override
//	public List<Board> findBoardList(int board_no) throws Exception {
//		// TODO Auto-generated method stub
//		return null;
//	}


	

}
