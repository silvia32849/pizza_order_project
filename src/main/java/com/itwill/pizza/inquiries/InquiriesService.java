package com.itwill.pizza.inquiries;

import java.util.List;


public class InquiriesService {

	private InquiriesDaoImplMyBatis inquiriesDaoImplMyBatis;
	public InquiriesService() throws Exception{
		inquiriesDaoImplMyBatis=new InquiriesDaoImplMyBatis();
	}
	/*
	 *  생성
	 */
	public int create(Inquiries inquiries)throws Exception{
		return inquiriesDaoImplMyBatis.insert(inquiries);
	}
	/*
	 * 삭제
	 */
	public int remove(int inquiries_no) throws Exception{
		return inquiriesDaoImplMyBatis.remove(inquiries_no);
	}
	/*
	 * 수정
	 */
	public int update(Inquiries inquiries) throws Exception {
		return inquiriesDaoImplMyBatis.update(inquiries);
	}
	/*
	 * 게시물 1개
	 */
	public Inquiries findInquiries(int inquiries_no)throws Exception{
		Inquiries inquiries=inquiriesDaoImplMyBatis.findInquiries1(inquiries_no);
		return inquiries;
	}
	/*
	 * 찾기
	 */
	
	public List<Inquiries> findInquiriesList(String user_id) throws Exception {
	    List<Inquiries> inquiriesList = inquiriesDaoImplMyBatis.findInquiries(user_id);
	    return inquiriesList;
	}

	
}
