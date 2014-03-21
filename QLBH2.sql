USE master
go
CREATE DATABASE QLBH2
go
USE QLBH2

CREATE TABLE SanPham 
(
id int NOT NULL,
id_loai int NOT NULL,
id_nha_cung_cap int NOT NULL,
so_luong_ton int NOT NULL,
gia_si float NOT NULL,
gia_le float NOT NULL,
giam_gia int NOT NULL,
PRIMARY KEY (id)
)

CREATE TABLE LoaiSanPham
(
id int NOT NULL,
ten nvarchar(50) NOT NULL,
PRIMARY KEY (id)
)

CREATE TABLE NhaCungCap 
(
id int NOT NULL,
ten nvarchar(50) NOT NULL,
dia_chi nvarchar(50) NOT NULL,
PRIMARY KEY (id)
)

CREATE TABLE ChiTietHoaDon
(
id int NOT NULL,
id_san_pham int NOT NULL,
id_hoa_don int NOT NULL,
so_luong int NOT NULL,
thanh_tien float NOT NULL,
PRIMARY KEY (id)
)

CREATE TABLE HoaDon
(
id int NOT NULL,
id_khach_hang int NOT NULL,
id_nhan_vien int NOT NULL,
loai bit NOT NULL,
tong_tien float NOT NULL,
tinh_trang bit NOT NULL,
ngay_lap date NOT NULL,
PRIMARY KEY (id)
)

CREATE TABLE NhanVien
(
id int NOT NULL,
ten nvarchar(30) NOT NULL,
PRIMARY KEY (id)
)

CREATE TABLE KhachHang
(
id int NOT NULL,
diem_tich_luy float NOT NULL,
dia_chi nvarchar(50) NOT NULL,
PRIMARY KEY (id)
)

CREATE TABLE ThuChi
(
id int NOT NULL,
loai bit NOT NULL,
id_nhan_vien int NOT NULL,
ngay date NOT NULL,
nguyen_nhan nvarchar(100) NOT NULL,
so_tien float NOT NULL,
PRIMARY KEY (id)
)

CREATE TABLE CuaHang
(
id int NOT NULL,
ten_dang_nhap nvarchar(30) NOT NULL,
mat_khau nvarchar(200) NOT NULL,
ten nvarchar(30) NOT NULL,
dia_chi nvarchar(50) NOT NULL,
PRIMARY KEY (id),
)


ALTER TABLE SanPham ADD FOREIGN KEY (id_loai) REFERENCES LoaiSanPham(id)
GO
ALTER TABLE SanPham ADD FOREIGN KEY (id_nha_cung_cap) REFERENCES NhaCungCap(id)
GO
ALTER TABLE ChiTietHoaDon ADD FOREIGN KEY (id_san_pham) REFERENCES SanPham(id)
GO
ALTER TABLE ChiTietHoaDon ADD FOREIGN KEY (id_hoa_don) REFERENCES HoaDon(id)
GO
ALTER TABLE ThuChi ADD FOREIGN KEY (id_nhan_vien) REFERENCES NhanVien(id)