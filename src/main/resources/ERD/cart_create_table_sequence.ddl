DROP TABLE cart CASCADE CONSTRAINTS;


/**********************************/
/* Table Name: cart */
/**********************************/
CREATE TABLE cart(
		cart_no                       		NUMBER(10)		 NOT NULL ,
		cart_qty                      		NUMBER(10)		 DEFAULT 1  NOT NULL,
		user_id                       		VARCHAR2(100)		 NULL ,
		product_no                    		NUMBER(10)		 NULL 
);

DROP SEQUENCE cart_cart_no_SEQ;

CREATE SEQUENCE cart_cart_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;


