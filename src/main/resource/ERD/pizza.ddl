DROP TABLE board CASCADE CONSTRAINTS;
DROP TABLE cart CASCADE CONSTRAINTS;
DROP TABLE order_item CASCADE CONSTRAINTS;
DROP TABLE product CASCADE CONSTRAINTS;
DROP TABLE orders CASCADE CONSTRAINTS;
DROP TABLE userinfo CASCADE CONSTRAINTS;

/**********************************/
/* Table Name: userinfo */
/**********************************/
CREATE TABLE userinfo(
		user_id                       		VARCHAR2(100)		 NULL ,
		user_pw                       		VARCHAR2(100)		 NULL ,
		user_name                     		VARCHAR2(100)		 NULL ,
		user_address                  		VARCHAR2(100)		 NULL ,
		user_email                    		VARCHAR2(100)		 NULL ,
		user_jumin                    		VARCHAR2(100)		 NULL ,
		user_phone                    		VARCHAR2(100)		 NULL ,
		user_gender                   		VARCHAR2(100)		 NULL 
);



/**********************************/
/* Table Name: orders */
/**********************************/
CREATE TABLE orders(
		order_no                      		NUMBER(10)		 NULL ,
		order_name                    		VARCHAR2(100)		 NULL ,
		order_address                 		VARCHAR2(100)		 NULL ,
		order_price                   		NUMBER(10)		 NULL ,
		order_date                    		DATE		 DEFAULT sysdate		 NULL ,
		order_count                   		NUMBER(10)		 NULL ,
		order_delivery                		VARCHAR2(100)		 NULL ,
		order_takeout                 		VARCHAR2(100)		 NULL ,
		user_id                       		VARCHAR2(100)		 NULL 
);

DROP SEQUENCE orders_order_no_SEQ;

CREATE SEQUENCE orders_order_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;




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




/**********************************/
/* Table Name: order_item */
/**********************************/
CREATE TABLE order_item(
		oi_no                         		NUMBER(10)		 NULL ,
		oi_qty                        		NUMBER(10)		 NULL ,
		order_no                      		NUMBER(10)		 NULL ,
		product_no                    		NUMBER(10)		 NULL 
);

DROP SEQUENCE order_item_oi_no_SEQ;

CREATE SEQUENCE order_item_oi_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;



/**********************************/
/* Table Name: cart */
/**********************************/
CREATE TABLE cart(
		cart_no                       		NUMBER(10)		 NULL ,
		cart_qty                      		NUMBER(10)		 NULL ,
		user_id                       		VARCHAR2(100)		 NULL ,
		product_no                    		NUMBER(10)		 NULL 
);

DROP SEQUENCE cart_cart_no_SEQ;

CREATE SEQUENCE cart_cart_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;





/**********************************/
/* Table Name: board */
/**********************************/
CREATE TABLE board(
		board_no                      		NUMBER(10)		 NULL ,
		board_title                   		VARCHAR2(1000)		 NOT NULL,
		board_content                 		VARCHAR2(4000)		 NOT NULL,
		board_date                    		DATE		 DEFAULT sysdate		 NULL ,
		board_id                      		VARCHAR2(50)		 NULL ,
		user_id                       		VARCHAR2(100)		 NULL 
);

DROP SEQUENCE board_board_no_SEQ;

CREATE SEQUENCE board_board_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;






ALTER TABLE userinfo ADD CONSTRAINT IDX_userinfo_PK PRIMARY KEY (user_id);

ALTER TABLE orders ADD CONSTRAINT IDX_orders_PK PRIMARY KEY (order_no);
ALTER TABLE orders ADD CONSTRAINT IDX_orders_FK0 FOREIGN KEY (user_id) REFERENCES userinfo (user_id);

ALTER TABLE product ADD CONSTRAINT IDX_product_PK PRIMARY KEY (product_no);

ALTER TABLE order_item ADD CONSTRAINT IDX_order_item_PK PRIMARY KEY (oi_no);
ALTER TABLE order_item ADD CONSTRAINT IDX_order_item_FK0 FOREIGN KEY (order_no) REFERENCES orders (order_no);
ALTER TABLE order_item ADD CONSTRAINT IDX_order_item_FK1 FOREIGN KEY (product_no) REFERENCES product (product_no);

ALTER TABLE cart ADD CONSTRAINT IDX_cart_PK PRIMARY KEY (cart_no);
ALTER TABLE cart ADD CONSTRAINT IDX_cart_FK0 FOREIGN KEY (user_id) REFERENCES userinfo (user_id);
ALTER TABLE cart ADD CONSTRAINT IDX_cart_FK1 FOREIGN KEY (product_no) REFERENCES product (product_no);

ALTER TABLE board ADD CONSTRAINT IDX_board_PK PRIMARY KEY (board_no);
ALTER TABLE board ADD CONSTRAINT IDX_board_FK0 FOREIGN KEY (user_id) REFERENCES userinfo (user_id);

