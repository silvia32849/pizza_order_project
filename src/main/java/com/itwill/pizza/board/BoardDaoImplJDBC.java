package com.itwill.pizza.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Properties;

import javax.sql.DataSource;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;





public class BoardDaoImplJDBC implements BoardDao {
	private DataSource dataSource;
	
	public BoardDaoImplJDBC() throws Exception{
		Properties properties = new Properties();
		properties.load(this.getClass().getResourceAsStream("/jdbc.properties"));
		/*** Apache DataSource ***/
		BasicDataSource basicDataSource = new BasicDataSource();
		basicDataSource.setDriverClassName(properties.getProperty("jdbc.driverClassName"));
		basicDataSource.setUrl(properties.getProperty("jdbc.url"));
		basicDataSource.setUsername(properties.getProperty("jdbc.username"));
		basicDataSource.setPassword(properties.getProperty("jdbc.password"));
		dataSource = basicDataSource;
		
	}

	@Override
	public int create(Board board) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int remove(int boardNo) throws Exception {
		return 0;
	}

	@Override
	public int update(Board board) throws Exception {
		return 0;
	}

	@Override
	public Board findBoard(int boardNo) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Board board = null;

		try {
			con = dataSource.getConnection();
			StringBuffer sql = new StringBuffer(300);
			sql.append("SELECT ");
			sql.append("boardno, title, writer, content, ");
			sql.append("regdate, readcount, ");
			sql.append("groupno, step, depth ");
			sql.append("FROM board ");
			sql.append("WHERE boardno = ?");
			pstmt = con.prepareStatement(BoardSQL.BOARD_SELECT);
			pstmt.setInt(1, boardNo);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				board = new Board();
				board.setBoard_no(rs.getInt(1));
				board.setBoard_title(rs.getString(2));
				board.setBoard_content(rs.getString(3));
				board.setBoard_date(rs.getDate(4));
				board.setBoard_id(rs.getString(5));

			}
		}finally {
			try {
				if (rs != null)
					rs.close();
			} catch (Exception ex) {
			}
			try {
				if (pstmt != null)
					pstmt.close();
			} catch (Exception ex) {
			}
			try {
				if (con != null)
					con.close();
			} catch (Exception ex) {
			}
		}
		return board;

	}
	

	@Override
	public int createReply(Board board) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Board> findBoardList(int start, int last) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean countReplay(Board board) throws SQLException {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void increaseReadCount(int number) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int getBoardCount() throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}



}
