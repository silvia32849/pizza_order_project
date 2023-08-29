package com.itwill.pizza.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

import com.itwill.pizza.userinfo.User;




public interface UserMapper {
	
	/*
	 * 사용자관리테이블에 새로운사용자생성
	 */
	
	@Insert("insert into userinfo values (#{user_id},#{user_pw},#{user_name},#{user_address},#{user_email},#{user_jumin},#{user_phone},#{user_gender})")
	public int insert(User user) throws Exception;

	/*
	 * 기존의 사용자정보를 수정
	 */
	@Update("update userinfo set user_pw= #{user_pw} , user_phone=#{user_phone} , user_jumin=#{user_jumin} where user_id=#{user_id}")
	public int update(User user) throws Exception;

	/*
	 * 사용자아이디에해당하는 사용자를 삭제
	 */
	
	@Delete("delete userinfo where user_id=#{user_id}")
	public int delete(String userId) throws Exception;

	/*
	 * 사용자아이디에해당하는 정보를 데이타베이스에서 찾아서 User 도메인클래스에 저장하여 반환
	 */
	
	
	@Select("select * from userinfo where user_id=#{user_id}")
	public User findUser(String userId) throws Exception;

	@SelectKey(statement = "select user_id from dual", before = true, keyProperty = "user_id", resultType = String.class)

	/*
	 * 모든사용자 정보를 데이타베이스에서 찾아서 List<User> 콜렉션 에 저장하여 반환
	 */
	@Select("select * from userinfo")
	public List<User> findUserList() throws Exception;

	
	/*
	 * 인자로 전달되는 아이디를 가지는 사용자가 존재하는지의 여부를판별
	 */
	@Select("select count(*) cnt from userinfo where user_id=#{user_id}")
	public int countByUserId(String userId) throws Exception;
	
}