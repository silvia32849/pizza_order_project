package com.itwill.pizza.board;

import java.util.List;

import com.itwill.pizza.board.util.PageMaker;

public class BoardService {
	
	private BoardDaoImplMyBatis boardDaoImplMyBatis;
	public  BoardService() throws Exception{
		boardDaoImplMyBatis=new BoardDaoImplMyBatis();
	}
	
	/*
	 * 생성
	 */
	public int create(Board board)throws Exception{
		return  boardDaoImplMyBatis.insert(board);
	}
	/*
	 * 찾기
	 */
	public Board findBoard(int board_no)throws Exception{
		Board board = boardDaoImplMyBatis.findBoard(board_no);
		return board;
	}
	/*
	 * 찾기 (리스트)
	 */
	public BoardListPageMakerDto findBoardList(int currentPage) throws Exception{
		//1.전체글의 갯수
		int totalRecordCount = boardDaoImplMyBatis.getBoardCount();
		//2.paging계산(PageMaker 유틸클래스)
		PageMaker pageMaker=new PageMaker(totalRecordCount,currentPage);
	
		//3.게시물데이타 얻기
		List<Board> boardList=
				boardDaoImplMyBatis.findBoardList(pageMaker.getPageBegin(),
											pageMaker.getPageEnd());
		
		BoardListPageMakerDto pageMakerBoardList=new BoardListPageMakerDto();
		pageMakerBoardList.itemList=boardList;
		pageMakerBoardList.pageMaker=pageMaker;
		return pageMakerBoardList;
	}

	
	/*
	 * 수정
	 */
	public int update(Board board) throws Exception {
		return boardDaoImplMyBatis.update(board);
	}
	/*
	 * 삭제
	 */
	public int remove(int board_no) throws Exception{
		return boardDaoImplMyBatis.remove(board_no);
	}
	
	
}