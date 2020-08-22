create table movieGenre (
 ID 		int		primary key auto_increment,
 movieID	int		not null,
 genreID 	int 	not null,
 foreign key (movieID) references Movie(ID),
 foreign key (genreID) references Genre(ID),
 constraint mov_gen unique (MovieID, GenreID)
);