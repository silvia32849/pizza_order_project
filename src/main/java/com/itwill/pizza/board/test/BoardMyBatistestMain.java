package com.itwill.pizza.board.test;

import java.util.Date;

import com.itwill.pizza.board.Board;
import com.itwill.pizza.board.BoardDaoImplMyBatis;
import com.itwill.pizza.product.ProductMyBatis;

public class BoardMyBatistestMain {

	public void BoardDaotest() throws Exception {
		
	BoardDaoImplMyBatis bo;

	
	System.out.println("1.객체 생성");
	bo = new BoardDaoImplMyBatis();
	System.out.println(bo);
	System.out.println("------------------------------------------");
	
	System.out.println("2.게시판추가");
	int result = bo.insert(new Board(1,"ㅎㅇ","ㅎㅇㅎㅇ",null,"why"));

	}

}
