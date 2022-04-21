CREATE DATABASE  Spotify
use Spotify
CREATE TABLE Music
(
Id int primary key identity,
Name nvarchar(50) not null,
AlbumId int references Albums(Id),
Duration decimal,
ArtistId int references Artist(Id)



)

Create Table Artist (
Id int primary key identity,
Name nvarchar(50) not null


)
Create Table Albums (
Id int primary key identity,
Name nvarchar(50) not null,


)

Alter Table Music Add Musiccount int
 Create view _music

As
select m.Id 'Id', m.Name 'MusicName', m.Duration 'durayion',a.name 'Artist',l.Id 'Album'
from Music m

Join Artist a 
On a.Id=m.ArtistId
Join Albums l 
On l.Id=m.AlbumId


Select * From _music 

Create View _MusicCount 
As  
select   m.Name 'Name',(Id) 'Count'
From Music m 


Select * From _MusicCount





