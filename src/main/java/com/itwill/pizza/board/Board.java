package com.itwill.pizza.board;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


public class Board {
	private int board_no;
	private String board_content;
	private String board_title;
	private Date board_date;
	private String user_id;

	public Board() {
	}

	public Board(int board_no, String board_content, String board_title, Date board_date, String user_id, int groupNo,
			int step, int depth) {
		super();
		this.board_no = board_no;
		this.board_content = board_content;
		this.board_title = board_title;
		this.board_date = board_date;
		this.user_id = user_id;

	}


	
	
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




	public Date getBoard_date() {
		return board_date;
	}




	public void setBoard_date(Date board_date) {
		this.board_date = board_date;
	}




	public String getUser_id() {
		return user_id;
	}




	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}




	public Board(int board_no, String board_content, String board_title, Date board_date, String user_id) {
		super();
		this.board_no = board_no;
		this.board_content = board_content;
		this.board_title = board_title;
		this.board_date = board_date;
		this.user_id = user_id;
	}

	@Override
	public String toString() {
		return "Board [board_no=" + board_no + ", board_content=" + board_content + ", board_title=" + board_title
				+ ", board_date=" + board_date + ", user_id=" + user_id + "]";
	}
	


}
