package com.itwill.pizza.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.itwill.pizza.userinfo.User;




public interface UserMapper {
	
	//@Insert
	int insert(User user) throws Exception;
	
	
}