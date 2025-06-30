create table customers(
c_id int ,
c_name char(50),
Acc_no int not null ,
pincode int
);

INSERT INTO customers
VALUES(1, 'Ali', 1001, 560001),
(2, 'Bob', 1002, 560002),
(3, 'Charlie', 1003, 560003),
(4, 'Dia', 1004, 560004),
(5,'tej',1005, 520003),
(6, 'Divya', 1012, 560004);

create table orders(
o_id int primary key,
o_item varchar(100),
price int,
acc_no int
);

INSERT INTO orders (o_id, o_item, price, acc_no) VALUES
(201, 'Laptop', 55000, 1001),
(202, 'Smartphone', 20000, 1002),
(203, 'Tablet', 15000, 1003),
(204, 'Headphones', 3000, 1001),
(205, 'Camera', 25000, 1004),
(206,'mouse',500,1008),
(207,'keypad' ,820,1011);

SELECT c.c_name, o.o_item
FROM customers c
INNER JOIN orders o ON c.Acc_no = o.acc_no;

SELECT c.c_name, o.o_item
FROM customers c
right JOIN orders o ON c.Acc_no = o.acc_no;

SELECT c.c_name, o.o_item
FROM customers c
left JOIN orders o ON c.Acc_no = o.acc_no;

SELECT c.c_name, o.o_item
FROM customers c
FULL JOIN orders o ON c.Acc_no = o.acc_no;
