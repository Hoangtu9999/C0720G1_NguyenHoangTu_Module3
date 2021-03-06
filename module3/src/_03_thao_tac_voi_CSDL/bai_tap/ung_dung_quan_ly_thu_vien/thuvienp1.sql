create database library;

use library;

create table categories(
id int primary key auto_increment,
name varchar(50) not null unique,
descriptions varchar(500)
);

create table students(
id int primary key auto_increment,
name varchar(50) not null unique,
birthDay date not null,
studentCode char(10) not null,
email varchar(50) not null,
adress varchar(255) not null,
numberPhone char(10) not null
);

create table books(
id int primary key auto_increment,
name varchar(255) not null,
publishingCompany varchar(255),
publishingYear date not null,
categoryId int not null,
constraint category_fk foreign key(categoryId) references categories(id)
);

create table borrowOrder(
id int primary key auto_increment,
dateBorrowed date not null,
payDay date not null,
studentId int not null ,
constraint book_fk_borrowOrder foreign key(studentId) references students(id)
);

create table borrowOrderDetail(
bookId int not null,
borrowOrderId int not null,
primary key(bookId,borrowOrderId),
constraint book_fk foreign key(bookId) references books(id),
constraint borrowOrder_fk foreign key(borrowOrderId) references borrowOrder(id)
);