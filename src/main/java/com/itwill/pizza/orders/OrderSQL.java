package com.itwill.pizza.orders;

public class OrderSQL {

//1. insert
	//주문 추가	
	public static String ORDER_INSERT=
			"insert into orders(order_no, order_name, order_address, order_price, order_date, user_id)\r\n"
			+ "			values(orders_order_no_SEQ.nextval, ?, ?, ?, sysdate, ?)";
	//주문상세 추가
	public static String ORDER_ITEM_INSERT=
			"insert into order_item(oi_no, oi_qty, order_no, product_no) values(order_item_oi_no_SEQ.nextval, ?, ?, ?);";
//2. delete	
	// 주문 삭제
	public static String ORDER_DELETE_BY_O_NO=
			"delete from orders where order_no=?";
	// 주문 상세 삭제
	public static String ORDERITEM_DELETE_BY_O_NO=
			"delete from order_item where order_no=?";
	// 회원 한사람의 주문내역 전체삭제
	public static String ORDER_DELETE_BY_USER_ID=
			"delete from orders where user_id=?";
	// 주문 1개의 상세내역 삭제
	public static String ORDERITEM_DELETE_BY_ORDER_NO=
			"delete from order_item where order_no=?";
	// 유저 1명의 주문 상세내역 삭제
	public static String ORDERITEM_DELETE_BY_USER_ID=
			"delete from order_item where order_no in(select order_no from orders where user_id=?)";
	
//3. select
	// 회원 한사람의 주문전체목록 선택
	public static String ORDER_SELECT_BY_USER_ID=
			"select * from orders where user_id=?";
	// 주문1개 선택
	public static String ORDER_SELECT_BY_O_NO=
			"select * from orders where order_no=?";
	// 주문1개의 주문상세,제품정보 여러개(주문상세,제품) 선택
	public static String ORDERITEM_SELECT_BY_USER_ID=
			"select * from orders o join order_item oi on o.order_no=oi.order_no join product p on oi.product_no=p.product_no \r\n"
			+ "where o.user_id=?";
	// 주문 1개의 전체 주문상세내역 선택
	public static String ORDERITEM_SELECT_BY_ORDER_NO=
			"select * from order_item where order_no=?";
	
}
