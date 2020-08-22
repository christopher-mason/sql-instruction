SELECT * FROM student;

-- students ordered by last name
select * from student
 order by lastName asc;

-- students ordered by state 
select * from student
 order by state asc;

-- how many students from each state
select state,count(*)
 from student
  group by (state)
   order by count(*) asc;

-- oldest student
select * from student
 order by birthday asc;
 
-- subselect
select * from student
 where birthday = (
  select min(birthday) from student);

-- youngest student
select * from student
 order by birthday desc;