create database caseStudy;

use caseStudy;

create table LoaiDichVu(
idLoaiDichVu int primary key auto_increment,
tenLoaiDichVu varchar(45) not null
);

create table KieuThue(
idKieuThue int primary key auto_increment,
tenKieuthue varchar(45) not null,
gia int not null
);

create table LoaiKhach(
idLoaiKhach int primary key auto_increment,
tenLoaiKhach varchar(45) not null
);

create table BoPhan(
idBoPhan int primary key auto_increment ,
tenBoPhan varchar(45) not null
);

create table TrinhDo(
idTrinhDo int primary key auto_increment,
trinhDo varchar(45) not null
);

create table ViTri(
idViTri int primary key auto_increment,
tenViTri varchar(45) not null
);

create table DichVuDiKem(
idDichVuDiKem int primary key auto_increment,
tenDichVuDiKem varchar(45) not null,
gia int not null,
donVi int not null,
trangThaiKhachHang varchar(45) not null
);

create table DichVu(
idDichVu int primary key auto_increment,
tenDichVu varchar(45) not null,
dienTich int not null,
soTang int not null,
soNguoiToiDa int not null,
chiPhithue int not null,
idKieuThue int not null, 
idLoaiDichVu int not null,
trangThai varchar(45) not null,
constraint dichvu_fk_loaidichvu foreign key(idLoaiDichVu) references LoaiDichVu(idLoaiDichVu),
constraint dichvu_fk_kieuthue foreign key(idKieuThue) references KieuThue(idKieuThue)
);

create table KhachHang(
idKhachHang int primary key auto_increment,
idLoaiKhach int not null, 
hoTen varchar(45) not null,
ngaySinh date not null,
soCMND char(9) not null,
sdt char(10) not null,
email varchar(45) not null,
diaChi varchar(45) not null,
constraint khachhang_fk_loaikhachhang foreign key(idLoaiKhach) references LoaiKhach(idLoaiKhach)
);

create table NhanVien(
idNhanVien int primary key auto_increment,
hoTen varchar(45) not null,
idViTri int not null,
idTrinhDo int not null,
idBoPhan int not null,
ngaySinh date not null,
soCMND char(9) not null,
luong int not null,
sdt char(10) not null,
email varchar(45) not null,
diaChi varchar(45) not null,
constraint nhanvien_fk_vitri foreign key(idViTri) references ViTri(idViTri),
constraint nhanvien_fk_trinhdo foreign key(idTrinhDo) references TrinhDo(idTrinhDo),
constraint nhanvien_fk_bophan foreign key(idBoPhan) references BoPhan(idBoPhan)
);

create table HopDong(
idHopDong int primary key auto_increment,
idNhanVien int not null,
idKhachHang int not null,
idDichVu int not null,
ngayLamHopDong date not null,
ngayKetThuc date not null,
tienDatCoc int not null,
tongTien int not null,
constraint hopdong_fk_khachhang foreign key(idKhachHang) references KhachHang(idKhachHang),
constraint hopdong_fk_dichvu foreign key(idDichVu) references DichVu(idDichVu),
constraint hopdong_fk_nhanvien foreign key(idNhanVien) references NhanVien(idNhanVien)
);



create table HopDongChiTiet(
idHopDongChiTiet int primary key auto_increment,
idHopDong int not null,
idDichVuDiKem int not null,
soLuong int not null,
constraint hopdongchitiet_fk_hopdong foreign key(idHopDong) references HopDong(idHopDong),
constraint hopdongchitiet_fk_dichvudikem foreign key(idDichVuDiKem) references DichVuDiKem(idDichVuDiKem)
);





insert into BoPhan values (null ,'Sale – Marketing');
insert into BoPhan values (null ,'Hành Chính');
insert into BoPhan values (null ,'Phục vụ');
insert into BoPhan values (null ,' Quản lý');

insert into TrinhDo values (null ,'Trung cấp');
insert into TrinhDo values (null ,'Cao đẳng');
insert into TrinhDo values (null ,'Đại học');
insert into TrinhDo values (null ,'Sau đại học');

insert into ViTri values (null ,'Lễ tân');
insert into ViTri values (null ,'Phục vụ');
insert into ViTri values (null ,'Chuyên viên');
insert into ViTri values (null ,'Giám sát ');
insert into ViTri values (null ,'Quản lý ');
insert into ViTri values (null ,'Giám đốc');

insert into DichVuDiKem values (null ,'Massage',200,1,'Miễn phí');
insert into DichVuDiKem values (null ,'Karaoke',100,1,'Miễn phí');
insert into DichVuDiKem values (null ,'Thức ăn',50,1,'Miễn phí');
insert into DichVuDiKem values (null ,'Nước uống',10,1,'Miễn phí');
insert into DichVuDiKem values (null ,'Thuê xe tham quan',260,1,'Có phí');

insert into LoaiKhach values (null, 'Diamond');
insert into LoaiKhach values (null, 'Platinium');
insert into LoaiKhach values (null, 'Gold');
insert into LoaiKhach values (null, 'Silver');
insert into LoaiKhach values (null, 'Member');

insert into LoaiDichVu values (null,'Villa');
insert into LoaiDichVu values (null,'House');
insert into LoaiDichVu values (null,'Room');

insert into KieuThue values(null,'Ngày',500);
insert into KieuThue values(null,'Giờ',50);

insert into DichVu values(null,'Villa',34,5,6,500,1,1,'Còn');
insert into DichVu values(null,'Villa1',34,5,6,500,1,1,'Đã thuê');
insert into DichVu values(null,'House',24,5,6,400,1,2,'Còn');
insert into DichVu values(null,'House1',24,5,6,400,1,2,'Đã thuê');
insert into DichVu values(null,'Room',20,1,2,200,2,3,'Còn');
insert into DichVu values(null,'Villa',20,1,2,200,2,3,'Đã thuê');

insert into KhachHang values(null,1,'Nguyễn Hoàng Tứ','1999-06-24',206333797,0857886264,'nguyenhoangtu24061999@gmail.com','Quảng Nam');
insert into KhachHang values(null,2,'Phan Thị Huyền Trang','1999-06-05',206333707,0857886265,'trangphan@gmail.com','Quảng Nam');
insert into KhachHang values(null,3,'Trần Văn A','1990-06-24',206333799,0857886266,'vana@gmail.com','Đà Nẵng');
insert into KhachHang values(null,4,'Lê Thị B','1995-06-02',206333793,0857886261,'leb@gmail.com','Huế');
insert into KhachHang values(null,5,'Đặng Đình C','1999-12-11',206333795,0857886263,'khaidang@gmail.com','Sài gòn');

insert into NhanVien values(null,'Trần A',1,2,2,'1995-05-12',206343565,500,0127465836,'trana@gmail.com','Huế');
insert into NhanVien values(null,'Phan B',2,3,2,'1994-05-13',206343565,800,0127465831,'phanb@gmail.com','Quảng nam');
insert into NhanVien values(null,'Nguyễn C',4,2,2,'2000-05-14',206343565,300,0127465832,'nguyenc@gmail.com','Đà nẵng');
insert into NhanVien values(null,'Phạm D',4,4,2,'1999-05-15',206343565,400,0127465833,'phamd@gmail.com','Sài gòn');
insert into NhanVien values(null,'Lê E',6,4,4,'1990-05-16',206343565,1000,0127465834,'lee@gmail.com','Hà nội');

insert into HopDongChitiet values(null,1,1,2);
insert into HopDongChitiet values(null,2,2,3);
insert into HopDongChitiet values(null,3,3,4);
insert into HopDongChitiet values(null,4,4,1);

insert into HopDong values(null,1,1,1,'2020-12-12','2021-01-10',1000, 5000);
insert into HopDong values(null,6,2,2,'2020-12-12','2021-01-10',100, 500);
insert into HopDong values(null,1,4,4,'2020-12-12','2021-01-11',500, 2500);

-- Câu 1
select * from NhanVien where (length(hoTen) >= 15) and (hoTen like 'T%' or 'P%' or 'K%');
-- Câu 2
select * from KhachHang 
where (((year(curdate()) - year(ngaySinh))  > 18) and ((year(curdate()) - year(ngaySinh)) < 50)) and ((diaChi = 'Đà Nẵng' or'Huế')); 
-- Câu 3
select k.hoTen ,count(h.idKhachHang),l.tenLoaiKhach from hopdong as h 
join khachhang as k on h.idKhachHang = k.idKhachHang 
join loaikhach as l on k.idLoaiKhach = l.idLoaiKhach 
where l.tenLoaiKhach = 'Diamond';
