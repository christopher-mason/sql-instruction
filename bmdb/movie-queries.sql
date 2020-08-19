SELECT * FROM movie;

select count(*) from movie;

select count(*) as row_table
 from movie;

select min(year) from movie;

select max(year) from movie;

select sum(year) from movie;

select avg(year) from movie;

select format(avg(year), 0)
 from movie;

select concat('Year ', format(avg(year),0))
 from movie;

select * from movie
 order by (title) asc;

select * from movie
 order by (director) asc;

select * from movie
 order by (year) asc;

select concat((title),'       ', (director))
 from movie
  order by (title) asc;

-- number of occurances
select year,count(*)
 from movie
  group by (year)
   order by count(*) desc;