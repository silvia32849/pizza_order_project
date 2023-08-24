--insert

INSERT INTO INQUIRIES (INQUIRIES_NO, INQUIRIES_TITLE, INQUIRIES_CONTENT, INQUIRIES_DATE, USER_ID)
VALUES (inquiries_inquiries_no_SEQ.nextval, '그만먹고싶어요', '너무맛있어서 그만먹고싶어요', SYSDATE, '우한영');

INSERT INTO INQUIRIES (INQUIRIES_NO, INQUIRIES_TITLE, INQUIRIES_CONTENT, INQUIRIES_DATE, USER_ID)
VALUES (inquiries_inquiries_no_SEQ.nextval, '배송 문의', '주문한 제품의 배송일을 확인하고 싶습니다.', SYSDATE, '우한영');

INSERT INTO INQUIRIES (INQUIRIES_NO, INQUIRIES_TITLE, INQUIRIES_CONTENT, INQUIRIES_DATE, USER_ID)
VALUES (inquiries_inquiries_no_SEQ.nextval, '환불 요청', '제품 불만족으로 환불을 신청합니다.', SYSDATE, '우한영');

INSERT INTO INQUIRIES (INQUIRIES_NO, INQUIRIES_TITLE, INQUIRIES_CONTENT, INQUIRIES_DATE, USER_ID)
VALUES (inquiries_inquiries_no_SEQ.nextval, '교환 요청', '제품 교환이 필요해서 신청합니다.', SYSDATE, '우한영');

INSERT INTO INQUIRIES (INQUIRIES_NO, INQUIRIES_TITLE, INQUIRIES_CONTENT, INQUIRIES_DATE, USER_ID)
VALUES (inquiries_inquiries_no_SEQ.nextval, '추가구매', '한개 더 시키면 언제오나요??', SYSDATE, '우한영');

--update

UPDATE inquiries
SET  inquiries_content='수정수정2', inquiries_title='수정했당22'
WHERE INQUIRIES_NO=1;

--delete
DELETE inquiries WHERE inquiries_no=11;

--select (1)
SELECT * FROM INQUIRIES WHERE inquiries.inquiries_no=1;
