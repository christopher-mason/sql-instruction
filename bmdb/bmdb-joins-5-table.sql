-- bmdb genre queries
-- id of comedy genre
select id from genre
 where genre = 'Comedy';
 
-- 3 table join to list comedy movies
select * 
 from movie m
  join moviegenre mg
   on mg.movieID = m.id
  join genre g
   on g.ID = mg.genreID;
  
-- will return title and genre   
select m.title, g.genre 
 from movie m
  join moviegenre mg
   on mg.movieID = m.id
  join genre g
   on g.ID = mg.genreID
   where g.id = (select id from genre
				where genre = 'Action');

/* 5 table join:
Show all movies, actors, and genres
- Get movie title and year, actor firstName and lastName and Role, genre genre
- 5 tables in order: movie, credit, actor, moviegenre, genre
*/
select m.title, m.year, a.firstName, a.lastName, c.Role, g.genre
 from movie m
  join credit c
   on c.movieID = m.id
  join actor a
   on a.id = c.actorid
  join moviegenre mg
   on mg.movieid = m.id
  join genre g
   on g.id = mg.genreid;

-- Practice joining 3 tables
select a.firstname, a.lastname, m.title, c.role
 from movie m
  join credit c
   on m.id = c.movieid
  join actor a
   on a.id = c.actorid;
   
   
   
   
   