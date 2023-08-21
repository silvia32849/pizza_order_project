package com.itwill.pizza.board;

import com.itwill.pizza.mapper.BoardMapper;

public class BoardService {
	
	private BoardDaoImplMyBatis boardDaoImplMyBatis;
	
	public  BoardService() throws Exception{
		boardDaoImplMyBatis=new BoardDaoImplMyBatis();
		
	}
	
	public int create(Board board)throws Exception{
		return  boardDaoImplMyBatis.insert(board);
	}
	
	public Board findBoard(int board_no)throws Exception{
		Board board = boardDaoImplMyBatis.findBoard(board_no);
		return board;
	}
	
	public int update(Board board) throws Exception {
		return boardDaoImplMyBatis.update(board);
	}
	
	public int remove(int board_no) throws Exception{
		return boardDaoImplMyBatis.remove(board_no);
	
	}
}