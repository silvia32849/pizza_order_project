package com.itwill.pizza.userinfo;

import com.itwill.pizza.mapper.UserMapper;

public class UserService {
	
	private UserDao userDao;
	public UserService() throws Exception{
		userDao=new UserDaoImplMyBatis();
	}
	/*
	 * 회원가입
	 */
	public int create(User user)throws Exception{
		/*
		 * -1:아이디중복
		 *  1:회원가입성공
		 */
		
		if(userDao.countByUserId(user.getUserId())==1) {
			//아이디중복
			return -1;
		}else {
			//아이디안중복
			//회원가입
			userDao.insert(user);
			return 1;
		}
	}
	/*
	 * 회원로그인
	 *  0:아이디존재안함
	 * 	1:패쓰워드 불일치
	 * 	2:로그인성공(세션)
	 */
	public int login(String userId,String password) throws Exception{
		int result=-1;
		//1.아이디존재여부
		User user = userDao.findUser(userId);
		if(user==null) {
			//아이디존재안함
			result=0;
		}else {
			//아이디존재함
			if(user.getUserPw().equals(password)) {
				//패쓰워드일치
				result=2;
			}else {
				//패쓰워드불일치
				result=1;
			}
		}
		return result;
	}
	/*
	 * 회원상세보기
	 */
	public User findUser(String userId)throws Exception{
		return userDao.findUser(userId);
	}
	/*
	 * 회원수정
	 */
	public int update(User user)throws Exception{
		return userDao.update(user);
	}
	
	/*
	 * 회원탈퇴
	 */
	public int remove(String userId)throws Exception{
		return userDao.delete(userId);
	}
	
}


















