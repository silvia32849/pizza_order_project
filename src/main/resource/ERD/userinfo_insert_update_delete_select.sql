--insert
INSERT INTO userinfo(user_id, user_pw, user_name, user_address, user_email, user_jumin, user_phone, user_gender)
VALUES('user1', '1234', '박명수', '서울시', 'email@naver.com', '990101-1234567', '010-1234-5678', '남');
INSERT INTO userinfo(user_id, user_pw, user_name, user_address, user_email, user_jumin, user_phone, user_gender)
VALUES('user2', '2345', '김유신', '서울시', 'email2@naver.com', '940202-2345678', '010-2345-6789', '남');
INSERT INTO userinfo(user_id, user_pw, user_name, user_address, user_email, user_jumin, user_phone, user_gender)
VALUES('user3', '3456', '임정희', '서울시', 'email3@naver.com', '920303-3456789', '010-3456-7890', '여');
INSERT INTO userinfo(user_id, user_pw, user_name, user_address, user_email, user_jumin, user_phone, user_gender)
VALUES('user4', '4567', '권희수', '서울시', 'email4@naver.com', '930404-4567890', '010-4567-8901', '여');

--update
UPDATE userinfo
SET user_pw= '1111',user_name='박두식', user_address = '김포시', user_email = 'email1@naver.com',user_phone = '010-0123-4567'
WHERE user_id = 'user1';

--delete
DELETE FROM userinfo WHERE user_id = 'user1';

--select
SELECT * FROM userinfo;