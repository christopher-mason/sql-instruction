-- create and select the database
DROP DATABASE IF EXISTS bmdb;
CREATE DATABASE bmdb;
USE bmdb;

-- create Movie table
-- DROP TABLE IF EXISTS Movie;
Create table Movie (
ID 			integer 		primary key auto_increment,
Title 		varchar(255) 	not null unique,
Year 		integer 		not null,
Rating 		varchar(5) 		not null,
Director 	varchar(255) 	not null
-- CONSTRAINT utitle unique (Title)
);

-- Add some movies
 insert into Movie VALUES
 	(1, 'Star Wars', 1977, 'PG', 'George Lucas'),
 	(2, 'Sixteen Candles', 1984, 'PG', 'John Hughes'),
  	(3, 'Fifth Element', 1997, 'PG-13', 'Luc Besson'),
 	(4, 'Better Off Dead', 1985, 'PG', 'Savage Steve Holland'),
    (5, 'Blazing Saddles', 1974, 'R', 'Mel Brooks'),
    (6, 300, 2006, 'R', 'Zack Snyder'),
    (7, 'Alexander', 2004, 'R', 'Oliver Stone'),
    (8, 'Army of Darkness', 1992, 'R', 'Sam Raimi'),
    (9, 'Batman Returns', 1992, 'PG-13', 'Tim Burton'),
    (10, 'Bad Boys', 1995, 'R', 'Michael Bay'),
    (11, 'Hitman', 2007, 'R', 'Xavier Gens'),
    (12, 'John Wick', 2014, 'R', 'Chad Stahelski'),
    (13, 'Jurassic Park', 1993, 'PG-13', 'Steven Spielberg'),
    (14, 'Lord of War', 2005, 'R', 'Andrew Niccol'),
    (15, 'Shrek', 2001, 'PG', 'Andrew Adamson and Vicky Jenson')
    ;  
