package com.itwill.pizza.board;

public class BoardSQL {
	
	
	public static final String BOARD_INSERT=
			"insert into board (BOARD_NO, BOARD_TITLE, BOARD_CONTENT, BOARD_DATE, USER_ID) "
			+ "values(board_sequence.nextval, ?, ?, ?,?)";
	
	public static final String BOARD_DELETE=
			"delete board where BOARD_NO = ?";


	public static final String BOARD_UDATE=
			"update board  set BOARD_TITLE = ?, BOARD_CONTENT = ? ,USER_ID = ? where BOARD_NO = ?";

	public static final String BOARD_SELECT=
			"select BOARD_NO BOARD_TITLE BOARD_CONTENT BOARD_DATE USER_ID from board where BOARD_NO = ?";

}
