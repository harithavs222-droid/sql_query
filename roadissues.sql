create database fix_my_road_db;
use fix_my_road_db;
create table roadissues(id int auto_increment primary key,
title varchar (200) not null,
note text not null,
location varchar (200) not null,
created_at datetime not null,
status enum ("still present","in progress","fixed") default "still present",
owner varchar (200) not null);

show tables;

alter table  roadissues modify column created_at timestamp default current_timestamp;
 
 insert into roadissues(title,note,location,created_at,status,owner)values("road hole","broken road","thrissur",current_timestamp,"in progress","midhun"),
 ("road fix","broken road","iravimangalam",current_timestamp,"in progress","riya"),
 ("water logging","water logging in main on road","calicut",current_timestamp,"fixed","anu");
 
 select * from roadissues;