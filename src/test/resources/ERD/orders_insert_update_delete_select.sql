--1. insert
-- 1) 주문 삽입
insert into orders(order_no, order_name, order_address, order_price, order_date, user_id)
			values(orders_order_no_SEQ.nextval, '주문테스트1', '주문테스트주소1', 10000, sysdate, 'test');
--2. update

--3. delete

-- 1) 주문 상세 삭제
delete from order_item where order_no=3;

-- 2) 주문 1개 삭제
delete from orders where order_no=3;

--rollback;

-- 3). 회원 한사람의 주문내역 전체삭제
delete from orders where user_id='test';
--4. select

-- 1) 회원 한사람의 주문전체목록
select * from orders where user_id='test';

-- 2) 주문한개(회원 한사람의) 
select * from orders where order_no=3;

-- 4) 주문한개의 주문상세,제품정보 여러개(주문상세,제품)
select * from orders o join order_item oi on o.order_no=oi.order_no join product p on oi.product_no=p.product_no 
where o.user_id='test';