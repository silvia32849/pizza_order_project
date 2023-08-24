package com.itwill.pizza.orders.test;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import com.itwill.pizza.orders.Order;
import com.itwill.pizza.orders.OrderDaoImplMyBatis;
import com.itwill.pizza.orders.OrderItem;
import com.itwill.pizza.product.Product;
import com.itwill.pizza.product.ProductMyBatis;

public class OrderDaoTestMain {

   public static void main(String[] args) throws Exception {
      
      OrderDaoImplMyBatis od= new OrderDaoImplMyBatis();
      System.out.println(od.findOrderByUserId("user2"));
      System.out.println(od.findOrderItemByOrderNo(1));
      
      int p_qty=1;
      int p_no=1;
      ProductMyBatis pd = new ProductMyBatis();
      Product p= pd.productDetail(p_no);
      
      
      ArrayList<OrderItem> oiList = new ArrayList<OrderItem>();
      oiList.add(new OrderItem(0, p_qty, p_no, p));
      Order order = new Order(0, p.getProduct_name()+"외 0종", "address", 0, new Date(0), p.getProduct_price(), "user2");
      od.insertOrder(order);
      System.out.println(od.findOrderByUserId("user2"));
      
   }

}