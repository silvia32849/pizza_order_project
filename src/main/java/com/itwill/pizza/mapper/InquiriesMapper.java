package com.itwill.pizza.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.itwill.pizza.inquiries.Inquiries;

public interface InquiriesMapper {
	/**
	 * 새로운 게시물을 추가하는 메써드.
	 */
	@Insert("insert into inquiries (inquiries_no,inquiries_title,inquiries_content,user_id) "
			+ "		values(inquiries_inquiries_no_SEQ.nextval , #{inquiries_title},#{inquiries_content}, #{user_id})")
	int insert(Inquiries inquiries) throws Exception;
	
	/**
	 * 게시물을 삭제하는 메써드.
	 */
	@Delete("delete inquiries where inquiries_no = #{inquiries_no}")
	int remove(int inquiries_No) throws Exception;

	/**
	 * 게시물내용을 수정하는 메써드.
	 */
	@Update("update inquiries  set inquiries_title = #{inquiries_title}, inquiries_content =  #{inquiries_content}, user_id =  #{user_id} where inquiries_no = #{inquiries_no}")
	int update(Inquiries inquiries) throws Exception;
	
	/**
	 * 게시물 번호에 해당하는 게시물 정보를 반환하는 메써드.
	 */
	
	@Select("select inquiries_no,inquiries_title,inquiries_content,inquiries_date,user_id from inquiries where user_id = #{user_id} ORDER BY inquiries_no" )
	List<Inquiries> findInquiries(String user_id) throws Exception;
	
	@Select("select inquiries_no,inquiries_title,inquiries_content,inquiries_date,user_id from inquiries where inquiries_no = #{inquiries_no}")
	Inquiries findInquiries1(int inquiries_No)throws Exception;
	
}
