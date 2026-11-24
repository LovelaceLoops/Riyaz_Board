Drop database if exists riyaz_board;
create database riyaz_board;
use riyaz_board;

create table users(
	user_id int auto_increment primary key not null,
    user_name varchar(50) not null unique,
    email varchar(100) not null unique,
    joined_on date not null default(current_date())
);

create table thaats(
	thaat_id int auto_increment primary key not null,
    thaat_name varchar(50) not null unique
);

create table ragas(
	raga_id int auto_increment primary key not null,
    raga_name varchar(50) unique not null,
    time_of_the_day enum('morning','afternoon','evening','night') not null,
    thaat_id int not null,
    foreign key(thaat_id)
    references thaats(thaat_id)
);

create table sessions(
	session_id int auto_increment primary key not null,
    session_date date not null,
    minutes int not null check (minutes > 0),
    notes varchar(225),
    raga_id int not null,
    user_id int not null,
    foreign key(raga_id)
    references ragas(raga_id),
    foreign key(user_id)
    references users(user_id)
    on delete cascade
);
