package com.itwill.pizza.inquiries;

import java.util.List;

import org.apache.ibatis.annotations.Select;



public interface InquiriesDao {
	/*
	 * 새로운 문의를 추가하는 메써드.
	 */
	int insert(Inquiries inquiries_no) throws Exception;

	/**
	 * 문의를 삭제하는 메써드.
	 */
	int remove(int inquiries_no) throws Exception;

	/**
	 * 문의를 수정하는 메써드.
	 */
	int update(Inquiries inquiries_no) throws Exception;
	

	/**
	 * 문의 번호에 해당하는 게시물 정보를 반환하는 메써드.
	 */
	List<Inquiries> findInquiries(String user_id) throws Exception;


}
