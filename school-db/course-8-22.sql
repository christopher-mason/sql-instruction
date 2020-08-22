SELECT * FROM course;

-- which subject has the most classes
select subject,count(*)
 from course
  group by (subject)
   order by count(*) desc;