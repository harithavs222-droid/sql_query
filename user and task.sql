

create database task_db;
use task_db;

create table user(id int auto_increment PRIMARY KEY,
name varchar(100) not null,
phone varchar(15) not null);

create table task(id int auto_increment PRIMARY KEY,
title varchar(100) not null,
status enum ("pending","compleated") default "pending",
owner varchar(100)
);
alter table task modify owner int not null;
insert into user (name,phone) values ("hari",12345),("aravind","56789"),("aswin","67890"),("rohan","65784");
select * from user;

insert into task (title,status,owner) values("admission fee","pending",8),
									("grocer","pending",7),
                                            ("credit card bill ","pending",9),
                                            ("car wash ","pending",10);
                                            
select * from task;
update task set  owner=2 where "admission fee";
update task set  owner=6 where "admission fee";
update task set  owner=1 where "admission fee";
update task set  owner=2 where "admission fee";


-- inner join

select user.name,task.title from user inner join task on user.id = task.owner;

-- left join
select user.name,user.phone,task.title,task.status from user left join task on user.id = task.owner ;

