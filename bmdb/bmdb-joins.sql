SELECT * FROM movie;
Select * from credit;

-- inner join: data in common between 2 tables
select * from movie as m
 join credit as c
  on m.id = c.movieid;

select title, role from movie as m
 join credit as c
  on m.id = c.movieid;

select m.id, title, c.id, role from movie as m
 join credit as c
  on m.id = c.movieid;

-- bad way to do this
select * from movie, credit
 where movie.id = credit.movieid;

-- inner join actor. also, dont have to use "as" for alias. see 'c' and 'a'
select * from credit c
 join actor a
  on c.actorid = a.id;

-- outer (left) join. all movies and actors assigned
select * from movie
 left join credit
  on movie.id = credit.movieid;

