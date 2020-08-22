SELECT * FROM customer;

select name, sales from customer
 order by name;
 
select name,sales from customer
 order by sales desc;
 
select name,sales from customer
 where sales > 40000000;

select name,sales from customer
 where sales >= 30000000 and sales < 40000000;