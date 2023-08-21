package com.itwill.pizza.cart;

public class CartService {
	
	private CartDaoImplMyBatis cartDaoImplMyBatis;
	
	public CartService() throws Exception{
		cartDaoImplMyBatis=new CartDaoImplMyBatis();
	}
	
	public int insert(Cart cart)throws Exception{
		return cartDaoImplMyBatis.insert(cart);
	}
	
	public int remove(int cart_no) throws Exception{
		return cartDaoImplMyBatis.remove(cart_no);
	
	}
}


















