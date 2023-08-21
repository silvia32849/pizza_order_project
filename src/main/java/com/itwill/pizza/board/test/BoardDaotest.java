package com.itwill.pizza.board.test;

import com.itwill.pizza.board.Board;
import com.itwill.pizza.board.BoardDaoImplJDBC;

public class BoardDaotest {

	public BoardDaotest() throws Exception {
		BoardDaoImplJDBC BoardDao = new BoardDaoImplJDBC();
		System.out.println("--------board list------");
		System.out.println(BoardDao.findBoard(1));
	}

}
