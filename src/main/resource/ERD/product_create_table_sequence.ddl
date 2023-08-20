
DROP TABLE product CASCADE CONSTRAINTS;


/**********************************/
/* Table Name: product */
/**********************************/
CREATE TABLE product(
		product_no                    		NUMBER(10)		 NULL ,
		product_name                  		VARCHAR2(100)		 NOT NULL,
		product_price                 		NUMBER(10)		 DEFAULT 0		 NOT NULL,
		product_image                 		VARCHAR2(100)		 NULL ,
		product_desc                  		VARCHAR2(200)		 NULL ,
		product_category              		NUMBER(10)		 DEFAULT 1		 NOT NULL,
		product_size                  		VARCHAR2(10)		 DEFAULT 'M'		 NOT NULL
);

DROP SEQUENCE product_product_no_SEQ;

CREATE SEQUENCE product_product_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;


