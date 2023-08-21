package com.itwill.pizza.mapper;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.itwill.pizza.board.Board;

public interface BoardMapper {
	/**
	 * 새로운 게시물을 추가하는 메써드.
	 * @throws Exception 
	 */
	@Insert("insert into board (BOARD_NO, BOARD_TITLE, BOARD_CONTENT, USER_ID) "
			+ "		values(board_sequence.nextval, #{BOARD_TITLE},#{BOARD_CONTENT}), #{USER_ID}")
	int create(Board board) throws Exception;
//	
//	/**
//	 * 게시물을 삭제하는 메써드.
//	 */

//	/**
//	 * 게시물내용을 수정하는 메써드.
//	 */

//	/**
//	 * 게시물 번호에 해당하는 게시물 정보를 반환하는 메써드.
//	 */
	@Select("select BOARD_NO, BOARD_TITLE, BOARD_CONTENT,BOARD_DATE, USER_ID from board where BOARD_NO = #{BOARD_NO}")
	Board findBoard(int boardNo) throws Exception;
//	

}
