package com.itwill.pizza.board.test;

import java.util.ArrayList;

import com.itwill.pizza.board.Board;
import com.itwill.pizza.board.BoardService;

public class BoardServiceTest {

	public static void main(String[] args) throws Exception {
	BoardService bo;
	
	System.out.println("객체생성");
	bo =new BoardService();
	System.out.println("-------------------------");
	
//	System.out.println("추가");
//	int result =bo.create(new Board(0,"a","b",null,"c"));
//	System.out.println("-------");
//	
	System.out.println("찾기");
	Board board =bo.findBoard(10);
	System.out.println(board);
	
	
//	System.out.println("리스트찾기");
//	bo.findBoardList(1);
//	
//	
//	System.out.println("삭제");
//	int result1 = bo.remove(15);
//	System.out.println("------");	
//	
	}
}
