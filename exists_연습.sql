Create table orders (
 order_id  number(10),
 customer_id  number(10),
 order_date  date
);

Create table customers ( 
 customer_id  number(10),
 name  varchar(45)
);

insert into orders values('1','1','2023-01-10');
insert into orders values('2','1','2023-02-11');
insert into orders values('3','4','2023-03-12');
insert into orders values('4',null,'2023-04-13');
insert into orders values('5','2','2023-05-14');
insert into orders values('6','1','2023-06-15');
insert into orders values('7',null,'2023-07-16');
insert into orders values('8','5','2023-08-16');
select  *  from  orders;

insert  into customers values('1','¿µÈñ');
insert  into customers values('2','Ã¶¼ö');
insert  into customers values('3',null);
insert  into customers values('4','ÇÏ´Ï');
insert  into customers values(null,'¶ÊÀÌ');


SELECT * FROM orders o
WHERE EXISTS (SELECT c.customer_id FROM customers c);



SELECT * FROM orders o
WHERE o.customer_id IN (SELECT c.customer_id FROM customers c);


SELECT* FROM orders o
WHERE EXISTS 
(SELECT c.customer_id 
 FROM customers c 
 WHERE c.customer_id = o.customer_id  );
 
 

SELECT* FROM orders o
WHERE EXISTS 
(SELECT c.customer_id 
 FROM customers c 
 WHERE c.customer_id = o.customer_id and c.customer_id=4 );
