package com.itwill.pizza.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.itwill.pizza.board.Board;

//import com.itwill.pizza.board.Board;

public interface BoardMapper {
	/**
	 * 새로운 게시물을 추가하는 메써드.
	 */
	@Insert("insert into board (board_no,board_title,board_content,user_id) "
			+ "		values(board_board_no_SEQ.nextval , #{board_title},#{board_content}, #{user_id})")
	int insert(Board board) throws Exception;
	
	/**
	 * 게시물을 삭제하는 메써드.
	 */
	@Delete("delete board where board_no = #{board_no}")
	int remove(int board_No) throws Exception;

	/**
	 * 게시물내용을 수정하는 메써드.
	 */
	
	@Update("update board  set board_title = #{board_title}, board_content =  #{board_content}, user_id =  #{user_id} where board_no = #{board_no}")
	int update(Board board) throws Exception;

	/**
	 * 게시물 번호에 해당하는 게시물 정보를 반환하는 메써드.
	 */
	
	@Select("select BOARD_NO, BOARD_TITLE, BOARD_CONTENT,BOARD_DATE, USER_ID from board where BOARD_NO = #{BOARD_NO}")
	Board findBoard(int board_No) throws Exception;
	
	/*
	 * 게시물 전체 리스트로 반환
	 */
	@Select("SELECT * FROM ( SELECT rownum idx, s.* FROM( "
			+ "                            SELECT board_no, board_title, board_content, board_date, user_id "
			+ "                            FROM board "
			+ "                            ) s" + "               )" + "WHERE idx >= #{start} AND idx <= #{last}")
	List<Board> findBoardList(Map param) throws Exception;

	
	/**
	 * 게시물 총 건수를 조회, 반환
	 */
	@Select("select count(*) from board")
	int getBoardCount() throws Exception;

}
