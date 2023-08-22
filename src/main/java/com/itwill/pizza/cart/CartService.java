package com.itwill.pizza.cart;

import java.util.List;

public class CartService {
	
	private CartDao cartDao;
	public CartService() throws Exception{
		cartDao=new CartDaoImplMyBatis();
	}
	
	/*
	 * 카트 추가 or 수정
	 */
	public int addCart(Cart cart)throws Exception{
		if(cartDao.count(cart.getUser_id(), cart.getProduct().getProduct_no())>0) {
			return cartDao.updateInProduct(cart);
		}
			return cartDao.insert(cart);
	}
	
	/*
	 * 카트 수량 변경 수정
	 */
	public int updateCart(Cart cart) throws Exception{
		return cartDao.updateInCart(cart);
	}
	
	/*
	 * 카트보기
	 */
	public List<Cart> getCartItemByUserId(String user_id) throws Exception{
		return cartDao.findByUserId(user_id);
	}
	
	/*
	 * 카트 1개 보기
	 */
//	public Cart getCartItem(int cart_no) throws Exception{
//		return cartDao.
//	}
	
	/*
	 * 카트 아이템 1개 삭제
	 */
	public int deleteCartItemByCartNo(int cart_no) throws Exception{
		return cartDao.deleteByCartNo(cart_no);
	}
	
	/*
	 * 카트 전체 삭제
	 */
	public int deleteAllItem(String user_id) throws Exception{
		return cartDao.deleteAll(user_id);
	}
}