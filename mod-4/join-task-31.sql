select c.name, c.city, s.name
 from customer c
  join state s
   on c.state = s.code