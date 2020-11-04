create database bai_tap_1;

use bai_tap_1;

create table Customers(
customer_number int primary key auto_increment,
fullname varchar(255),
address varchar(255), 
email varchar(50),
phone char(10)
);

create table Accounts(
account_number int primary key auto_increment,
account_type varchar(255),
dates date,
balance int(11)
);

create table Transactions (
 tran_number int primary key auto_increment,
 account_number int ,
 dates date,
 amounts decimal(18,3),
 descriptions varchar(255),
 foreign key (account_number) references Accounts(account_number)
 );