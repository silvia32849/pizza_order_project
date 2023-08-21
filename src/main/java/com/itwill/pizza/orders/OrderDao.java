package com.itwill.pizza.orders;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.activation.DataSource;

import com.itwill.pizza.common.DataSourceFactory;

public class OrderDao {
	
	private javax.sql.DataSource dataSource;

	
	public OrderDao() throws Exception{
		dataSource=DataSourceFactory.getDataSource();
	}
	/*
	 * 주문 추가
	 */
	public int insert(Order order) throws Exception{
		Connection con=null;
		PreparedStatement pstmt1=null;
		PreparedStatement pstmt2=null;
		try {
			con=dataSource.getConnection();
			con.setAutoCommit(false);
			pstmt1=con.prepareStatement(OrderSQL.ORDER_INSERT);
			pstmt1.setString(1, order.getOrder_name());
			pstmt1.setString(2, order.getOrder_address());
			pstmt1.setInt(3, order.getOrder_price());
			pstmt1.setString(4, order.getUser_id());
			pstmt1.executeUpdate();
			
			pstmt2=con.prepareStatement(OrderSQL.ORDER_ITEM_INSERT);
			for(OrderItem orderItem : order.getOrderItemList()) {
				pstmt2.setInt(1, orderItem.getOi_qty());
				pstmt2.setInt(2, orderItem.getOrder_no());
				pstmt2.setInt(3, orderItem.getProduct_no());
				pstmt2.executeUpdate();
			}
			con.commit();
		}catch (Exception e) {
			e.printStackTrace();
			con.rollback();
			throw e;
		}finally {
			if(con !=null)
				con.close();
		}
		return 0;
	}
	/*
	 * 주문 전체삭제
	 */
	public int deleteByUserId(String sUserId) throws Exception{
		Connection con=null;
		PreparedStatement pstmt=null;
		int rowCount=0;
		try {
			con=dataSource.getConnection();
			con.setAutoCommit(false);
			pstmt=con.prepareStatement(OrderSQL.ORDER_DELETE_BY_USER_ID);
			pstmt.setString(1, sUserId);
			rowCount=pstmt.executeUpdate();
			con.commit();
		}catch (Exception e) {
			con.rollback();
			e.printStackTrace();
			throw e;
		}finally {
			if(con!=null)
				con.close();
		}
		return rowCount;
	}
	/*
	 * 주문 1건삭제
	 */
	public int deleteByOrderNo(int order_no) throws Exception{
		Connection con=null;
		PreparedStatement pstmt=null;
		int rowCount=0;
		try {
			con=dataSource.getConnection();
			con.setAutoCommit(false);
			pstmt=con.prepareStatement(OrderSQL.ORDER_DELETE_BY_O_NO);
			pstmt.setInt(1, order_no);
			rowCount=pstmt.executeUpdate();
			con.commit();
		}catch (Exception e) {
			con.rollback();
			e.printStackTrace();
			throw e;
		} finally {
			if(con!=null)
				con.close();
		}
		return rowCount;
	}
}
