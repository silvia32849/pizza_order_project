--insert
insert into cart (cart_no, cart_qty, user_id, product_no) values(cart_cart_no_SEQ.nextval, 4, 'user1', 1);
insert into cart (cart_no, cart_qty, user_id, product_no) values(cart_cart_no_SEQ.nextval, 3, 'user2', 2);
insert into cart (cart_no, cart_qty, user_id, product_no) values(cart_cart_no_SEQ.nextval, 2, 'user3', 1);
insert into cart (cart_no, cart_qty, user_id, product_no) values(cart_cart_no_SEQ.nextval, 1, 'user4', 1);
insert into cart (cart_no, cart_qty, user_id, product_no) values(cart_cart_no_SEQ.nextval, 4, 'user5', 2);
insert into cart (cart_no, cart_qty, user_id, product_no) values(cart_cart_no_SEQ.nextval, 4, 'user6', 2);
insert into cart (cart_no, cart_qty, user_id, product_no) values(cart_cart_no_SEQ.nextval, 3, 'user7', 1);
insert into cart (cart_no, cart_qty, user_id, product_no) values(cart_cart_no_SEQ.nextval, null, 'user12', 2);


--update
--장바구니 수량 증가
update cart set cart_qty=cart_qty+1 where cart_no=1;
--장바구니 수량 감소
update cart set cart_qty=cart_qty-1 where cart_no=1;
--장바구니 수량 변경
update cart set cart_qty=2 where cart_no=5;


--delete
--장바구니 상품 1개 삭제
delete from cart where cart_no=2;
--장바구니 상품 모두삭제
delete from cart where user_id='user7';

--select
--아이디로 한사람의 카트아이템 리스트 가져오기
select * from cart c join product p on c.product_no=p.product_no where c.user_id = 'user1';

--카트번호로 카트아이템 리스트 가져오기
select * from cart c join product p on c.product_no=p.product_no where c.cart_no = 1;

--아이디와 제품번호로 카트 개수가 몇개인지 세기
select count(*)  as p_count from cart  where user_id='user1' and product_no=1;

