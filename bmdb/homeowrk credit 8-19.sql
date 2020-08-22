SELECT * FROM credit;

insert into credit (actorID, movieID, Role) values
 (3, 2, 'Samantha'),
 (4, 2, 'Geek'),
 (5, 3, 'Korben Dallas'),
 (6, 3, 'Zorg');

update credit
 set actorid = 2, movieid = 1
  where id = 2;