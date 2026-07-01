
create database social_media_db;

use social_media_db;

create table post(id int auto_increment PRIMARY KEY,
title varchar(100)not null,
user varchar(100)not null,
description text );

desc post;
insert into post (title,user,description) values
("first post" ,"riya","welcome to my profile") ,
("food vlog" ,"anjana","best biriyani in thrissur") ,
("travel" ,"abhi","trip to ooty") ;

select * from post;

create table comments(id int auto_increment PRIMARY KEY,
message text not null,
post_id int not null);

desc comments;

insert into comments(message,post_id)values
("good to see you",3),
("tasty food",1),
("enjoy your trip",2);

select * from comments;

-- inner join
select post.user from post inner join comments on post.id=comments.post_id;

-- left join
select post.user from post left join comments on post.id=comments.post_id;

-- right join
select post.user from post right join comments on post.id=comments.post_id;


