
DROP TABLE orders CASCADE CONSTRAINTS;


/**********************************/
/* Table Name: orders */
/**********************************/
CREATE TABLE orders(
		order_no                      		NUMBER(10)		 NOT NULL,
		order_name                    		VARCHAR2(100)		 NULL ,
		order_address                 		VARCHAR2(100)		 NULL ,
		order_price                   		NUMBER(10)		 NULL ,
		order_date                    		DATE		 DEFAULT sysdate		 NULL ,
		order_delivery                		NUMBER(10)		 NULL ,
		user_id                       		VARCHAR2(100)		 NULL 
);

DROP SEQUENCE orders_order_no_SEQ;

CREATE SEQUENCE orders_order_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;


