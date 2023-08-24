DROP TABLE inquiries CASCADE CONSTRAINTS;


/**********************************/
/* Table Name: board */
/**********************************/
CREATE TABLE inquiries(
		inquiries_no                      		NUMBER(10)		 NOT NULL ,
		inquiries_title                   		VARCHAR2(1000)		 NOT NULL,
		inquiries_content                 		VARCHAR2(4000)		 NOT NULL,
		inquiries_date                    		DATE		 DEFAULT sysdate		 NULL ,
		user_id                       		VARCHAR2(1000)		 NULL 
);

DROP SEQUENCE inquiries_inquiries_no_SEQ;

CREATE SEQUENCE inquiries_inquiries_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;
