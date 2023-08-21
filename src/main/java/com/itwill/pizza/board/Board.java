package com.itwill.pizza.board;

import java.util.Date;

public class Board {
	private int board_no;
	private String board_content;
	private String board_title;
	private String board_id;
	private Date board_date;
	
	
	public int getBoard_no() {
		return board_no;
	}



	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}



	public String getBoard_content() {
		return board_content;
	}



	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}



	public String getBoard_title() {
		return board_title;
	}



	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}



	public String getBoard_id() {
		return board_id;
	}



	public void setBoard_id(String board_id) {
		this.board_id = board_id;
	}



	public Date getBoard_date() {
		return board_date;
	}



	public void setBoard_date(Date board_date) {
		this.board_date = board_date;
	}



	@Override
	public String toString() {
		return "Board [board_no=" + board_no + ", board_content=" + board_content + ", board_title=" + board_title
				+ ", board_id=" + board_id + ", board_date=" + board_date + "]";
	}
	
	
}
