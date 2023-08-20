DROP TABLE board CASCADE CONSTRAINTS;


/**********************************/
/* Table Name: board */
/**********************************/
CREATE TABLE board(
		board_no                      		NUMBER(10)		 NOT NULL ,
		board_title                   		VARCHAR2(1000)		 NOT NULL,
		board_content                 		VARCHAR2(4000)		 NOT NULL,
		board_date                    		DATE		 DEFAULT sysdate		 NULL ,
		user_id                       		VARCHAR2(100)		 NULL 
);

DROP SEQUENCE board_board_no_SEQ;

CREATE SEQUENCE board_board_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;
