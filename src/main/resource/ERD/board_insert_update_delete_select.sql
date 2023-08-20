--insert

INSERT INTO BOARD (BOARD_NO, BOARD_TITLE, BOARD_CONTENT, BOARD_DATE, BOARD_ID)
VALUES (board_board_no_SEQ.nextval, '그만먹고싶어요', '너무맛있어서 그만먹고싶어요', SYSDATE, 'WHY');

INSERT INTO BOARD (BOARD_NO, BOARD_TITLE, BOARD_CONTENT, BOARD_DATE, BOARD_ID)
VALUES (board_board_no_SEQ.nextval, '예약주문', '예약주문은 어디서해요?', SYSDATE, 'WHY');

INSERT INTO BOARD (BOARD_NO, BOARD_TITLE, BOARD_CONTENT, BOARD_DATE, BOARD_ID)
VALUES (board_board_no_SEQ.nextval, '현금영수증', '현금영수증 가능한가요?', SYSDATE, 'WHY');

INSERT INTO BOARD (BOARD_NO, BOARD_TITLE, BOARD_CONTENT, BOARD_DATE, BOARD_ID)
VALUES (board_board_no_SEQ.nextval, '고객 문의 1', '제품에 대한 문의 내용입니다.', SYSDATE, 'customer1');

INSERT INTO BOARD (BOARD_NO, BOARD_TITLE, BOARD_CONTENT, BOARD_DATE, BOARD_ID)
VALUES (board_board_no_SEQ.nextval, '배송 문의', '주문한 제품의 배송일을 확인하고 싶습니다.', SYSDATE, 'customer2');

INSERT INTO BOARD (BOARD_NO, BOARD_TITLE, BOARD_CONTENT, BOARD_DATE, BOARD_ID)
VALUES (board_board_no_SEQ.nextval, '환불 요청', '제품 불만족으로 환불을 신청합니다.', SYSDATE, 'customer3');

INSERT INTO BOARD (BOARD_NO, BOARD_TITLE, BOARD_CONTENT, BOARD_DATE, BOARD_ID)
VALUES (board_board_no_SEQ.nextval, '교환 요청', '제품 교환이 필요해서 신청합니다.', SYSDATE, 'customer4');

INSERT INTO BOARD (BOARD_NO, BOARD_TITLE, BOARD_CONTENT, BOARD_DATE, BOARD_ID)
VALUES (board_board_no_SEQ.nextval, '추가구매', '한개 더 시키면 언제오나요??', SYSDATE, 'customer5');

INSERT INTO BOARD (BOARD_NO, BOARD_TITLE, BOARD_CONTENT, BOARD_DATE, BOARD_ID)
VALUES (board_board_no_SEQ.nextval, '감사합니다', '아이유보고 암이 사라졌어요!!', SYSDATE, 'customer6');

INSERT INTO BOARD (BOARD_NO, BOARD_TITLE, BOARD_CONTENT, BOARD_DATE, BOARD_ID)
VALUES (board_board_no_SEQ.nextval, '정말최악', '피자스쿨이 더 맛있어요 ㅋㅋ', SYSDATE, 'customer7');

INSERT INTO BOARD (BOARD_NO, BOARD_TITLE, BOARD_CONTENT, BOARD_DATE, BOARD_ID)
VALUES (board_board_no_SEQ.nextval, '삭제용', '삭제용', SYSDATE, '삭제용');

--update

UPDATE board
SET  board_content='수정수정2', board_title='수정했당22'
WHERE BOARD_NO=11;

--delete
DELETE board WHERE board_no=11;

--select (1)
SELECT * FROM BOARD WHERE board.board_no=1;
