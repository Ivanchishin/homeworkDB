CREATE TABLE IF NOT EXISTS Genre (
	ID INTEGER PRIMARY KEY,
	NAME VARCHAR(255) not null
);


CREATE TABLE IF NOT EXISTS Musician (
	ID INTEGER PRIMARY KEY,
	NAME VARCHAR(255) not null,
	GenreID INTEGER NOT NULL REFERENCES Genre(ID)
);


CREATE TABLE IF NOT EXISTS Album (
	ID INTEGER PRIMARY KEY,
	NAME VARCHAR(255) not null,
	year INTEGER not null
);

CREATE TABLE IF NOT EXISTS MusicianAlbum (
	ID INTEGER PRIMARY KEY,
	AlbumID INTEGER NOT NULL REFERENCES Album(ID),
	MusicianID INTEGER NOT NULL REFERENCES Musician(ID)
);

CREATE TABLE IF NOT EXISTS Tracks (
	ID INTEGER PRIMARY KEY,
	NAME VARCHAR(255) not null,
	Duration INTEGER not null,
	AlbumID INTEGER NOT NULL REFERENCES Album(ID)
);

CREATE TABLE IF NOT EXISTS Collection (
	ID INTEGER PRIMARY KEY,
	NAME VARCHAR(255) not null,
	Year INTEGER not null,
	TrackID INTEGER NOT NULL REFERENCES Tracks(ID)
);