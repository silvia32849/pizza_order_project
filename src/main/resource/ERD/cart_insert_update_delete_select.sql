--insert
insert into cart (cart_no, cart_qty, user_id, product_no) values(cart_cart_no_SEQ.nextval, 4, 'user1', 1);
insert into cart (cart_no, cart_qty, user_id, product_no) values(cart_cart_no_SEQ.nextval, 3, 'user1', 2);
insert into cart (cart_no, cart_qty, user_id, product_no) values(cart_cart_no_SEQ.nextval, 2, 'user1', 1);
insert into cart (cart_no, cart_qty, user_id, product_no) values(cart_cart_no_SEQ.nextval, 1, 'user1', 1);
insert into cart (cart_no, cart_qty, user_id, product_no) values(cart_cart_no_SEQ.nextval, 4, 'user1', 2);
insert into cart (cart_no, cart_qty, user_id, product_no) values(cart_cart_no_SEQ.nextval, 4, 'user1', 2);
insert into cart (cart_no, cart_qty, user_id, product_no) values(cart_cart_no_SEQ.nextval, 3, 'user1', 1);
insert into cart (cart_no, cart_qty, user_id, product_no) values(cart_cart_no_SEQ.nextval, 2, 'user1', 2);


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
select * from cart where cart_no=3;
