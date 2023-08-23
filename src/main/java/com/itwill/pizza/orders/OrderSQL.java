
package com.itwill.pizza.orders;

public class OrderSQL {

//1. insert
	
	//주문 하나 추가	
	public static String ORDER_INSERT=
			"insert into orders(order_no, order_name, order_address, order_price, order_date, order_delivery, user_id)\r\n"
			+ "			values(orders_order_no_SEQ.nextval, ?, ?, ?, sysdate, ?, ?)";
	//주문상품 하나 추가
	public static String ORDER_ITEM_INSERT=
			"insert into order_item(oi_no, oi_qty, order_no, product_no) values(order_item_oi_no_SEQ.nextval, ?, ?, ?)";

	
//2. delete	
	
	// 주문 삭제
	public static String ORDER_DELETE_BY_ORDER_NO=
			"delete from orders where order_no=?";
	// 주문 상세 삭제
	public static String ORDER_ITEM_DELETE_BY_ORDER_NO=
			"delete from order_item where order_no=?";
	// 회원 한사람의 주문내역 전체삭제
	public static String ORDER_DELETE_BY_USER_ID=
			"delete from orders where order_no in(select order_no from orders where user_id=?)";
	// 회원 한사람의 주문 아이템 전체삭제
	public static String ORDER_ITEM_DELETE_BY_USER_ID=
			"delete from order_item where order_no in(select order_no from orders where user_id=?)";
	
	
//3. select
	
	// 주문 전체 조회
	public static String ORDER_SELECT_ALL=
			"select * from orders";
	// 주문1개 조회
	public static String ORDER_SELECT_BY_ORDER_NO=
			"select * from orders where order_no=?";
	// 회원 한사람의 주문전체목록 조회
	public static String ORDER_SELECT_BY_USER_ID=
			"select * from orders where user_id=?";
	
	
	
	// 주문 아이템 전체 조회
	public static String ORDER_ITEM_SELECT_ALL=
			"select * from order_item";
	// 주문 1개의 전체 주문아이템 조회
	public static String ORDER_ITEM_SELECT_BY_ORDER_NO=
			"select * from order_item where order_no=?";
	// 주문아이템 번호로 주문아이템 전체 조회
	public static String ORDER_ITEM_SELECT_BY_OI_NO=
			"select * from order_item where oi_no=?";
	
	
}