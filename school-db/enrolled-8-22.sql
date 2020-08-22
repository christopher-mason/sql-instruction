SELECT * FROM enrolled;

-- list all grades ordered by quarter
select * from enrolled
 join course c
  on courseid = c.id;

select grade, quarter
 from enrolled e
  join course c
   on courseID = c.id
    order by quarter;

select lastname, firstname, subject, c.name, grade, quarter
 from enrolled e
  join course c
   on courseID = c.id
  join student s 
   on s.id = e.studentid
    order by lastname asc;

-- list all grades ordered by courseID


-- list all grades by course (resolving courseID to course name)


-- list all student not enrolled in a course, if any


-- list all student enrollments... student name, course, grade by quarter

/* student enrollment report
 - list all students: fname, lname
 - course name, if enrolled
*/
 
select s.id, lastname, firstname, name
 from student s
  left join enrolled e
   on s.id = e.studentid
  left join course c
   on e.courseid = c.id;