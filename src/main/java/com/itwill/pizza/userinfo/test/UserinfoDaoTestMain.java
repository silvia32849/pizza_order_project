package com.itwill.pizza.userinfo.test;

import java.util.List;

import com.itwill.pizza.userinfo.User;
import com.itwill.pizza.userinfo.UserDaoImplMyBatis;

public class UserinfoDaoTestMain {
	public static void main(String[] args) throws Exception {
		UserDaoImplMyBatis a = new UserDaoImplMyBatis();
		
//		int rowCount = a.insert(new User("taeri", "1111", "김태리", "서울시 광진구 자양2동" , "taeri@naver.com" , "911123-121111","010-1111-3333","남"));
//		System.out.println(rowCount);
//		
//		
		List<User> userList = a.findUserList();
		
		System.out.println(userList);
	}
}
