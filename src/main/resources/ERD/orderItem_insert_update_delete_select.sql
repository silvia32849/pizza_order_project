--order_item


--insert
insert into order_item(oi_no, oi_qty, order_no, product_no) values(order_item_oi_no_SEQ.nextval, 2, 1, 4);
insert into order_item(oi_no, oi_qty, order_no, product_no) values(order_item_oi_no_SEQ.nextval, 3, 2, 3);
insert into order_item(oi_no, oi_qty, order_no, product_no) values(order_item_oi_no_SEQ.nextval, 4, 3, 1);
insert into order_item(oi_no, oi_qty, order_no, product_no) values(order_item_oi_no_SEQ.nextval, 5, 4, 2);
insert into order_item(oi_no, oi_qty, order_no, product_no) values(order_item_oi_no_SEQ.nextval, 6, 5, 5);

--update
update order_item set oi_no=5, oi_qty=10, order_no=3, product_no=3 where order_no=4;

--delete

delete from order_item where order_no=1;

--유저의 전체 주문상세내역 삭제
delete from order_item where order_no in(select order_no from orders where user_id='user3');

--select

select * from order_item;
select * from order_item where oi_no=2;
select * from order_item where order_no=2;