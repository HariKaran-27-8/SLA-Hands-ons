use practice ;

create table customers (customer_id int,name varchar(20),city varchar(20));
create table orders(customer_id int ,order_id int ,product varchar(20));

insert into customers(customer_id,name,city) values (101,'alice','newyork'),(102,'bob','chicago'),(103,'charlie','miami');
insert into orders(customer_id,order_id,product) values (101,505,'gimple'),(101,502,'mouse'),(102,505,'keybard'),(105,510,'monitor');

select * from customers;
select * from orders;

select c.name,o.order_id,o.product from customers as c inner join orders as o on c.customer_id=o.customer_id;  -- customer ordering product only using inner join 

select c.name,o.order_id,o.product from customers as c left join orders as o on c.customer_id=o.customer_id;   -- all customer (if any order product also ) using left join 

select o.product,o.order_id,c.name from customers as c right join orders as o on c.customer_id=o.customer_id;  -- all product with name of customer who orders using right join 

-- select c.name,o.product from customers as c union orders as o on c.customer_id=o.customer_id;

select c.name from customers as c join orders as o on c.customer_id=o.product where product='mouse'; -- customer name who paticularly order mouse using join 