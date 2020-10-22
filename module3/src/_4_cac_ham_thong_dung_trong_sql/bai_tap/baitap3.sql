create database luyentapcachamthongdung;

use luyentapcachamthongdung;

create table ThongTin(
id int primary key auto_increment,
ten varchar(45),
tuoi int ,
khoaHoc varchar(50),
soTien int 
);

insert into ThongTin values (null, 'Hoang',21, 'CNTT', 40000);
insert into ThongTin values (null, 'Viet',19, 'DTVT', 32000);
insert into ThongTin values (null, 'Thanh',18, 'KTDN', 40000);
insert into ThongTin values (null, 'Nhan',19, 'CK', 45000);
insert into ThongTin values (null, 'Huong',20, 'TCNH', 50000);
insert into ThongTin values (null, 'Huong',20, 'TCNH', 20000);

select * from ThongTin where ten = 'Huong';
select sum(soTien) as tongTien from ThongTin where ten = 'Huong'; 
select distinct ten from ThongTin;

