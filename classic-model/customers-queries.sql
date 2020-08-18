select * from customers;

-- select by primary key (only know because instructor says it is)
select * from customers
 where customerNumber = 131;

-- count function (will count how many rows are in that table)
select count(*) from customers;

-- count with alias
select count(*) as row_count
 from customers;
 
-- sum function
select sum(creditlimit)
 from customers;

-- avg function
select avg(creditlimit)
 from customers;
 
-- average and format decimal places
select format(avg(creditlimit),2)
 from customers;

-- avg, format, and concat function
select concat('$',format(avg(creditlimit),2)) as avg_credit_limit
 from customers;

-- group by: avg, format, and concat function by country 
select country, concat('$',format(avg(creditlimit),2)) as avg_credit_limit
 from customers
  group by country
   order by avg(creditLimit) desc;

-- group by, having: avg, format, and concat function by country where avg is > 0
select country, concat('$',format(avg(creditlimit),2)) as avg_credit_limit
 from customers
  group by country
   having avg(creditLimit) > 0
    order by avg(creditLimit) desc;

-- max credit limit
select max(creditLimit)
 from customers;

-- min credit limit
select min(creditLimit)
 from customers;

select country, max(creditLimit)
 from customers;