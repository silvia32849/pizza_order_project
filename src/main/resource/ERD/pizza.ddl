DROP TABLE cart CASCADE CONSTRAINTS;
DROP TABLE order_item CASCADE CONSTRAINTS;
DROP TABLE product CASCADE CONSTRAINTS;
DROP TABLE orders CASCADE CONSTRAINTS;
DROP TABLE userinfo CASCADE CONSTRAINTS;
DROP TABLE board CASCADE CONSTRAINTS;

/**********************************/
/* Table Name: board */
/**********************************/
CREATE TABLE board(
		board_no                      		NUMBER(10)		 NULL ,
		board_title                   		VARCHAR2(1000)		 NOT NULL,
		board_content                 		VARCHAR2(4000)		 NOT NULL,
		board_date                    		DATE		 DEFAULT sysdate		 NULL ,
		board_id                      		VARCHAR2(50)		 NULL 
);

COMMENT ON TABLE board is 'board';
COMMENT ON COLUMN board.board_no is 'board_no';
COMMENT ON COLUMN board.board_title is 'board_title';
COMMENT ON COLUMN board.board_content is 'board_content';
COMMENT ON COLUMN board.board_date is 'board_date';
COMMENT ON COLUMN board.board_id is 'board_id';


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
		user_gender                   		VARCHAR2(100)		 NULL ,
		board_no                      		NUMBER(10)		 NULL 
);

COMMENT ON TABLE userinfo is 'userinfo';
COMMENT ON COLUMN userinfo.user_id is 'user_id';
COMMENT ON COLUMN userinfo.user_pw is 'user_pw';
COMMENT ON COLUMN userinfo.user_name is 'user_name';
COMMENT ON COLUMN userinfo.user_address is 'user_address';
COMMENT ON COLUMN userinfo.user_email is 'user_email';
COMMENT ON COLUMN userinfo.user_jumin is 'user_jumin';
COMMENT ON COLUMN userinfo.user_phone is 'user_phone';
COMMENT ON COLUMN userinfo.user_gender is 'user_gender';
COMMENT ON COLUMN userinfo.board_no is 'board_no';


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

COMMENT ON TABLE orders is 'orders';
COMMENT ON COLUMN orders.order_no is 'order_no';
COMMENT ON COLUMN orders.order_name is 'order_name';
COMMENT ON COLUMN orders.order_address is 'order_address';
COMMENT ON COLUMN orders.order_price is 'order_price';
COMMENT ON COLUMN orders.order_date is 'order_date';
COMMENT ON COLUMN orders.order_count is 'order_count';
COMMENT ON COLUMN orders.order_delivery is 'order_delivery';
COMMENT ON COLUMN orders.order_takeout is 'order_takeout';
COMMENT ON COLUMN orders.user_id is 'user_id';


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

COMMENT ON TABLE product is 'product';
COMMENT ON COLUMN product.product_no is 'product_no';
COMMENT ON COLUMN product.product_name is 'product_name';
COMMENT ON COLUMN product.product_price is 'product_price';
COMMENT ON COLUMN product.product_image is 'product_image';
COMMENT ON COLUMN product.product_desc is 'product_desc';
COMMENT ON COLUMN product.product_category is 'product_category';
COMMENT ON COLUMN product.product_size is 'product_size';


/**********************************/
/* Table Name: order_item */
/**********************************/
CREATE TABLE order_item(
		oi_no                         		NUMBER(10)		 NULL ,
		oi_qty                        		NUMBER(10)		 NULL ,
		order_no                      		NUMBER(10)		 NULL ,
		product_no                    		NUMBER(10)		 NULL 
);

COMMENT ON TABLE order_item is 'order_item';
COMMENT ON COLUMN order_item.oi_no is 'oi_no';
COMMENT ON COLUMN order_item.oi_qty is 'oi_qty';
COMMENT ON COLUMN order_item.order_no is 'order_no';
COMMENT ON COLUMN order_item.product_no is 'product_no';


/**********************************/
/* Table Name: cart */
/**********************************/
CREATE TABLE cart(
		cart_no                       		NUMBER(10)		 NULL ,
		cart_qty                      		NUMBER(10)		 NULL ,
		user_id                       		VARCHAR2(100)		 NULL ,
		product_no                    		NUMBER(10)		 NULL 
);

COMMENT ON TABLE cart is 'cart';
COMMENT ON COLUMN cart.cart_no is 'cart_no';
COMMENT ON COLUMN cart.cart_qty is 'cart_qty';
COMMENT ON COLUMN cart.user_id is 'user_id';
COMMENT ON COLUMN cart.product_no is 'product_no';



ALTER TABLE board ADD CONSTRAINT IDX_board_PK PRIMARY KEY (board_no);

ALTER TABLE userinfo ADD CONSTRAINT IDX_userinfo_PK PRIMARY KEY (user_id);
ALTER TABLE userinfo ADD CONSTRAINT IDX_userinfo_FK0 FOREIGN KEY (board_no) REFERENCES board (board_no);

ALTER TABLE orders ADD CONSTRAINT IDX_orders_PK PRIMARY KEY (order_no);
ALTER TABLE orders ADD CONSTRAINT IDX_orders_FK0 FOREIGN KEY (user_id) REFERENCES userinfo (user_id);

ALTER TABLE product ADD CONSTRAINT IDX_product_PK PRIMARY KEY (product_no);

ALTER TABLE order_item ADD CONSTRAINT IDX_order_item_PK PRIMARY KEY (oi_no);
ALTER TABLE order_item ADD CONSTRAINT IDX_order_item_FK0 FOREIGN KEY (order_no) REFERENCES orders (order_no);
ALTER TABLE order_item ADD CONSTRAINT IDX_order_item_FK1 FOREIGN KEY (product_no) REFERENCES product (product_no);

ALTER TABLE cart ADD CONSTRAINT IDX_cart_PK PRIMARY KEY (cart_no);
ALTER TABLE cart ADD CONSTRAINT IDX_cart_FK0 FOREIGN KEY (user_id) REFERENCES userinfo (user_id);
ALTER TABLE cart ADD CONSTRAINT IDX_cart_FK1 FOREIGN KEY (product_no) REFERENCES product (product_no);

