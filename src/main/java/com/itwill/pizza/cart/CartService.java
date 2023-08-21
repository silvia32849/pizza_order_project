package com.itwill.pizza.cart;

public class CartService {
	
	private CartDao cartDao;
	public CartService() throws Exception{
		cartDao=new CartDaoImplMyBatis();
	}
	
	public int insert(Cart cart)throws Exception{
		return cartDao.insert(cart);
	}
	
}


















