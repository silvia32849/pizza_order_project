--orders


--insert
insert into orders(order_no, order_name, order_address, order_price, order_date, user_id)
			values(orders_order_no_SEQ.nextval, '주문테스트1', '주문테스트주소1', 10000, sysdate, 'test');

--update
update orders set order_no=3, order_name='박나정', order_address='부산시', order_price='1000', order_date= sysdate, user_id='guest1' where order_no=3;  			


--delete
delete from orders where order_no=3;

--유저의 전체 주문 삭제
delete from orders where order_no in(select order_no from orders where user_id='user3');

--select

--주문전체목록

select * from orders;

--주문한개(주문번호) 
select * from orders where order_no=3;

--회원 한사람의 주문전체목록
select * from orders where user_id='test';

--주문한개의 주문상세,제품정보 여러개(주문상세,제품)
select * from orders o join order_item oi on o.order_no=oi.order_no join product p on oi.product_no=p.product_no 
where o.user_id='test';