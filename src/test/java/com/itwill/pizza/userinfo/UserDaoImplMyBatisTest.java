package com.itwill.pizza.userinfo;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class UserDaoImplMyBatisTest {
	UserDaoImplMyBatis userDaoImplMyBatis;
	
	@BeforeEach
	

	@Test
	void testUserDaoImplMyBatis() throws Exception {
		userDaoImplMyBatis = new UserDaoImplMyBatis();
		assertNotNull(userDaoImplMyBatis);
	}
	/*
	@Test
	void testInsert() throws Exception {
		int rowCount = userDaoImplMyBatis.insert(new User("taeri","1111","김태리","서울시 광진구","taeri@naver.com","911226-132445","016-1123-1231","여"));
	}
	*/
	@Test
	void testUpdate() throws Exception {
		int rowCount = userDaoImplMyBatis.update(new User("taeri","2222","김태리","서울시 강남구","taeri1@naver.com","","",""));
	}
	
	@Test
	void testDelete() throws Exception {
		int rowCount = userDaoImplMyBatis.delete("taeri1");
	}

	@Test
	void testFindUser() throws Exception {
		User user = userDaoImplMyBatis.findUser("user1");
		System.out.println(user);
	}
	@Test
	void testFindUserList() throws Exception {
		List<User> userList= userDaoImplMyBatis.findUserList();
		assertNotNull(userList);
		assertNotSame(userList.size(), 0);
		System.out.println(userList);
	}

	@Test
	void testCountByUserId() {
		fail("Not yet implemented");
	}

}
