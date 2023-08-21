package com.itwill.pizza.userinfo;

public class UserService {
	
	private UserDao userDao;
	public UserService() throws Exception{
		userDao=new UserDaoImplMyBatis();
	}
	
	public int insert(User user)throws Exception{
		return userDao.insert(user);
	}
	
}


















