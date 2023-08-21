--orders


--insert
insert into orders(order_no, order_name, order_address, order_price, order_date, order_delivery, user_id)
			values(orders_order_no_SEQ.nextval, '주문1', '서울시 강남구', 100000, sysdate, 0, 'user1');
insert into orders(order_no, order_name, order_address, order_price, order_date, order_delivery, user_id)
			values(orders_order_no_SEQ.nextval, '주문2', '서울시 광진구', 200000, sysdate, 0, 'user2');
insert into orders(order_no, order_name, order_address, order_price, order_date, order_delivery, user_id)
			values(orders_order_no_SEQ.nextval, '주문3', '안양시 평촌동', 330000, sysdate, 1, 'user3');
insert into orders(order_no, order_name, order_address, order_price, order_date, order_delivery, user_id)
			values(orders_order_no_SEQ.nextval, '주문4', '성남시 수정구', 150000, sysdate, 0, 'user4');
insert into orders(order_no, order_name, order_address, order_price, order_date, order_delivery, user_id)
			values(orders_order_no_SEQ.nextval, '주문5', '강원도 원주시', 120000, sysdate, 1, 'user5');
insert into orders(order_no, order_name, order_address, order_price, order_date, order_delivery, user_id)
			values(orders_order_no_SEQ.nextval, '주문6', '여주시 홍문동', 190000, sysdate, 1, 'user6');
insert into orders(order_no, order_name, order_address, order_price, order_date, order_delivery, user_id)
			values(orders_order_no_SEQ.nextval, '주문7', '남원시 동충동', 160000, sysdate, 1, 'user7');


--update
update orders set order_no=3, order_name='수정된주문', order_address='부산시 영도구', order_price=300000, order_date=sysdate, order_delivery=1, user_id='user2' where order_no=3;  			


--delete
delete from orders where order_no=4;

--유저의 전체 주문 삭제
delete from orders where order_no in(select order_no from orders where user_id='user5');

--select

--주문전체목록

select * from orders;

--주문한개(주문번호) 
select * from orders where order_no=3;

--회원 한사람의 주문전체목록
select * from orders where user_id='user2';
