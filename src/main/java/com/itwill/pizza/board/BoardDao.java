package com.itwill.pizza.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.activation.DataSource;

import org.apache.ibatis.annotations.Select;

import com.itwill.pizza.common.DataSourceFactory;
import com.itwill.shop.order.Order;
import com.itwill.shop.order.OrderSQL;

public class BoardDao {

	private DataSource dataSource;
	
	public BoardDao() throws Exception {
		dataSource=(DataSource) DataSourceFactory.getDataSource();
	}
	/**
	 * 새로운 게시물을 추가하는 메써드.
	 * @throws Exception 
	 */
	int create(Board board) throws Exception {
		return 0;
	}

	/**
	 * 답글 게시물을 추가하는 메써드
	 */
	int createReply(Board board) throws Exception {
		return 0;
	}
	
	/**
	 * 게시물 리스트를 반환(게시물시작번호,게시물끝번호)
	 */
	List<Board> findBoardList(int board_no) throws Exception {
		ArrayList<Board> boardList = new ArrayList<Board>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		pstmt = con.prepareStatement(BoardSQL.BOARD_SELECT);
		pstmt.setInt(1, board_no);
		rs = pstmt.executeQuery();
		while (rs.next()) {
			boardList.add
					(new Board(rs.getInt("board_no"), 
							   rs.getString("board_title"), 	
							   rs.getString("board_content"), 	
							   rs.getDate("board_date"),
							   rs.getString("board_id")));
		}
		} finally {
			if (con != null) {
				con.close();
			}
		}
		return orderList;
	}

	/*
	 * 
	 * 
	 */
	/**
	 * 답변게시물 존재여부확인메쏘드
	 */
	boolean countReplay(Board board) throws SQLException {
		return false;
	}

	/**
	 * 게시물을 삭제하는 메써드.
	 */
	int remove(int boardNo) throws Exception {
		return 0;
	}

	/**
	 * 게시물내용을 수정하는 메써드.
	 */
	int update(Board board) throws Exception {
		return 0;
	}

	/**
	 * 게시물 번호에 해당하는 게시물 정보를 반환하는 메써드.
	 */
	Board findBoard(int boardNo) throws Exception {
		return null;
	}

	/**
	 * 게시물 조회수를 1 증가.
	 */
	void increaseReadCount(int number) throws Exception {
	}

	/**
	 * 게시물 총 건수를 조회, 반환
	 */
	@Select("select count(*) from board")
	int getBoardCount() throws Exception {
		return 0;
	}

}