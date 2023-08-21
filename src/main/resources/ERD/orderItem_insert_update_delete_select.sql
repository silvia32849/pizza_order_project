--1. insert
insert into order_item(oi_no, oi_qty, order_no, product_no) values(order_item_oi_no_SEQ.nextval, 2, 3, 4);
insert into order_item(oi_no, oi_qty, order_no, product_no) values(order_item_oi_no_SEQ.nextval, 3, 3, 3);
insert into order_item(oi_no, oi_qty, order_no, product_no) values(order_item_oi_no_SEQ.nextval, 4, 3, 1);
insert into order_item(oi_no, oi_qty, order_no, product_no) values(order_item_oi_no_SEQ.nextval, 5, 3, 2);
insert into order_item(oi_no, oi_qty, order_no, product_no) values(order_item_oi_no_SEQ.nextval, 6, 3, 5);

--2. update

--3. delete

-- 1) on delete cascade
--  주문번호 1번의 주문상세내역 삭제
delete from order_item where order_no=1;
--rollback;

-- 2) on delete cascade
--  유저의 전체 주문상세내역 삭제
delete from order_item where order_no in(select order_no from orders where user_id='user3');
--rollback;


--4. select

--주문번호 1번의 전체 주문상세내역 불러오기
select * from order_item where order_no=1;
