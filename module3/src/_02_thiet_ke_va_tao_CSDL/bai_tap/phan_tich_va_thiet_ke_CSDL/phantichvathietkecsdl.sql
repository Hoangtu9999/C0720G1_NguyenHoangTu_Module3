create database phantichthietke;

use phantichthietke;

create table customers (
id_customers int primary key auto_increment,
customerName varchar(50) not null,
contactLastName varchar(50) not null,
contactFirstName varchar(50) not null,
phone varchar(50) not null,
addressLine1 varchar(50) not null,
addressLine2 varchar(50),
city varchar(50) not null,
state varchar(50) not null,
postalCode varchar(15) not null,
country varchar(50) not null,
creditLimit double

);

create table orders (
id_orders int primary key auto_increment,
orderDate date not null,
requiredDate date not null,
shippedDate date,
status varchar(15) not null,
comments text,
quantityOrdered int not null,
priceEach double not null

);

create table payments (
id_payments int primary key auto_increment,
checkNumber varchar(50) not null,
paymentDate date not null,
amount double not null

);

create table products (
id_products int primary key auto_increment,
productName varchar(70) not null,
productScale varchar(10) not null,
productVendor varchar(50) not null,
productDescription text not null,
quantityInStock int not null,
buyPrice double not null,
MSRP double not null
	
);

create table productlines (
id_productlines int primary key auto_increment,
textDescription text ,
image text 
);

create table employees (
id_employess int primary key auto_increment,
lastName varchar(50) not null,
firstName varchar(50) not null,
email varchar(100) not null,
jobTitle varchar(50) not null

);

create table offices (
id_offices int primary key auto_increment,
city varchar(50) not null,
phone varchar(50) not null,
addressLine1 varchar(50) not null,
addressLine2 varchar(50) ,
state varchar(50) ,
country varchar(50) not null,
postalCode varchar(15) not null
);

create table ordersdetail(
id_products int ,
id_orders int , 
primary key (id_products,id_orders),
CONSTRAINT products_fk FOREIGN KEY (id_products) REFERENCES products(id_products),
CONSTRAINT orders_fk FOREIGN KEY (id_orders) REFERENCES orders(id_orders)
);

ALTER TABLE customers
ADD id_employess int ;

ALTER TABLE customers
ADD CONSTRAINT employees_fk
FOREIGN KEY (id_employess) REFERENCES employees(id_employess);

ALTER TABLE payments
ADD id_customers int ;

ALTER TABLE payments
ADD CONSTRAINT customers_fk
FOREIGN KEY (id_customers) REFERENCES customers(id_customers);

ALTER TABLE orders
ADD id_customers int ;

ALTER TABLE orders
ADD CONSTRAINT customers_fk_orders
FOREIGN KEY (id_customers) REFERENCES customers(id_customers);

ALTER TABLE products
ADD id_productlines int ;

ALTER TABLE products
ADD CONSTRAINT productlines_fk
FOREIGN KEY (id_productlines) REFERENCES productlines(id_productlines);

ALTER TABLE employees
ADD reportTo int ;

ALTER TABLE employees
ADD CONSTRAINT employees_fk_employees
FOREIGN KEY (reportTo) REFERENCES employees(id_employess);

ALTER TABLE employees
ADD id_offices int ;

ALTER TABLE employees
ADD CONSTRAINT offices_fk
FOREIGN KEY (id_offices) REFERENCES offices(id_offices);
