--insert
INSERT INTO userinfo(user_id, user_pw, user_name, user_address, user_email, user_jumin, user_phone, user_gender)
VALUES('user1', '1111', '차경진', '서울시 광진구 자양4동', 'user1@naver.com', '990101-1234567', '010-1111-1111', '남');
INSERT INTO userinfo(user_id, user_pw, user_name, user_address, user_email, user_jumin, user_phone, user_gender)
VALUES('user2', '1111', '문예린', '서울시 강남구 대치1동', 'user2@naver.com', '940202-2145678', '010-2222-2222', '여');
INSERT INTO userinfo(user_id, user_pw, user_name, user_address, user_email, user_jumin, user_phone, user_gender)
VALUES('user3', '1111', '임범준', '서울시 관악구 떙떙로', 'user3@naver.com', '920303-102215', '010-3333-3333', '남');
INSERT INTO userinfo(user_id, user_pw, user_name, user_address, user_email, user_jumin, user_phone, user_gender)
VALUES('user4', '1111', '우한영', '경기도 수원시 팔달구', 'user4@naver.com', '930404-1020333', '010-4444-4444', '남');
INSERT INTO userinfo(user_id, user_pw, user_name, user_address, user_email, user_jumin, user_phone, user_gender)
VALUES('user5', '1111', '류광훈', '경기도 시흥시 정왕동', 'user5@naver.com', '930404-1067890', '010-5555-5555', '남');
INSERT INTO userinfo(user_id, user_pw, user_name, user_address, user_email, user_jumin, user_phone, user_gender)
VALUES('user6', '1111', '김아론', '경기도 성남시 분당구', 'user6@naver.com', '930404-1067890', '010-6666-6666', '남');
INSERT INTO userinfo(user_id, user_pw, user_name, user_address, user_email, user_jumin, user_phone, user_gender)
VALUES('user7', '1111', '이진영', '경기도 안양시 동안구', 'user7@naver.com', '930404-1867890', '010-7777-7777', '남');

--update
update  userinfo set user_pw= '2222', user_address = '어메리칸', user_email= 'test@naver.com' , user_phone = '016-111-2222' where user_id='user1';

--delete
DELETE FROM userinfo WHERE user_id = 'user2';

--select
SELECT * FROM userinfo;