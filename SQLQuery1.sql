USE [QLSP]
GO
/****** Object:  Table [dbo].[NhomHang]    Script Date: 03/06/2014 21:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhomHang](
	[Id_NH] [int] IDENTITY(1,1) NOT NULL,
	[MaNH] [varchar](3) NULL,
	[TenNH] [nvarchar](30) NULL,
 CONSTRAINT [PK_NhomHang] PRIMARY KEY CLUSTERED 
(
	[Id_NH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhaSX]    Script Date: 03/06/2014 21:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaSX](
	[Id_NSX] [int] IDENTITY(1,1) NOT NULL,
	[MaNSX] [varchar](10) NULL,
	[TenNSX] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaSX] PRIMARY KEY CLUSTERED 
(
	[Id_NSX] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 03/06/2014 21:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[Id_KM] [int] IDENTITY(1,1) NOT NULL,
	[SoDiem] [int] NULL,
	[TiLeGiam] [int] NULL,
 CONSTRAINT [PK_KhuyenMai] PRIMARY KEY CLUSTERED 
(
	[Id_KM] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuVuc]    Script Date: 03/06/2014 21:35:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhuVuc](
	[Id_KV] [int] IDENTITY(1,1) NOT NULL,
	[Ma] [char](3) NULL,
	[Ten] [nvarchar](20) NULL,
	[TrucThuoc] [int] NULL,
 CONSTRAINT [PK_KhuVuc] PRIMARY KEY CLUSTERED 
(
	[Id_KV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhaCC]    Script Date: 03/06/2014 21:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaCC](
	[Id_NCC] [int] IDENTITY(1,1) NOT NULL,
	[MaNCC] [varchar](10) NULL,
	[TenNCC] [nvarchar](30) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Sdt] [nchar](12) NULL,
 CONSTRAINT [PK_NhaCC] PRIMARY KEY CLUSTERED 
(
	[Id_NCC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BoPhan]    Script Date: 03/06/2014 21:35:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoPhan](
	[Id_BP] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[MaBP] [nchar](2) NULL,
	[TenBP] [nvarchar](30) NULL,
 CONSTRAINT [PK_BoPhan] PRIMARY KEY CLUSTERED 
(
	[Id_BP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuBan]    Script Date: 03/06/2014 21:35:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuBan](
	[Id_CTP] [int] IDENTITY(1,1) NOT NULL,
	[MaPhieu] [nchar](10) NULL,
	[ID_SP] [int] NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
	[ThanhTien] [int] NULL,
 CONSTRAINT [PK_ChiTietPhieuBan] PRIMARY KEY CLUSTERED 
(
	[Id_CTP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTieu]    Script Date: 03/06/2014 21:35:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTieu](
	[Id_PC] [int] IDENTITY(1,1) NOT NULL,
	[SoPhieu] [varchar](7) NULL,
	[Id_CH] [int] NULL,
	[NguoiNhan] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[LyDoChi] [nvarchar](50) NULL,
	[SoTienSo] [varchar](50) NULL,
	[SoTienChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChiTieu] PRIMARY KEY CLUSTERED 
(
	[Id_PC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Help]    Script Date: 03/06/2014 21:35:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Help](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [ntext] NULL,
	[Body] [ntext] NULL,
	[Depend] [int] NULL,
 CONSTRAINT [PK_Help] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonViTinh]    Script Date: 03/06/2014 21:35:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DonViTinh](
	[Id_DVT] [int] IDENTITY(1,1) NOT NULL,
	[MaDVT] [varchar](2) NULL,
	[TenDVT] [nvarchar](20) NULL,
 CONSTRAINT [PK_DonViTinh] PRIMARY KEY CLUSTERED 
(
	[Id_DVT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[ThemKhachHang]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ThemKhachHang]
@Ten NVARCHAR(100),
@ID INT OUTPUT
AS
BEGIN
	INSERT dbo.KhachHang1(KH_Ten) VALUES(@Ten)
	SET @ID = SCOPE_IDENTITY()
END
 
-- Gọi thủ tục
DECLARE @KH_ID INT
EXEC dbo.ThemKhachHang 'Nguyen Van A', @KH_ID OUTPUT
PRINT 'Khach hang ID:'
PRINT @KH_ID
GO
/****** Object:  Table [dbo].[TyGia1]    Script Date: 03/06/2014 21:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TyGia1](
	[Id_TG] [int] IDENTITY(1,1) NOT NULL,
	[MaTG] [varchar](3) NULL,
	[TenTG] [varchar](20) NULL,
	[QuyDoi] [float] NULL,
 CONSTRAINT [PK_TyGia1] PRIMARY KEY CLUSTERED 
(
	[Id_TG] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[usp_GetListNH]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_GetListNH]
as
select Id_NH, MaNH N'Mã nhóm hàng', TenNH N'Tên nhóm hàng' from NhomHang
GO
/****** Object:  StoredProcedure [dbo].[usp_GetListBP]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_GetListBP]
as select Id_BP, MaBP, TenBP  from BoPhan
GO
/****** Object:  StoredProcedure [dbo].[usp_GetBodyHelp]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_GetBodyHelp]
	@id int
as select Body from Help where Id=@id
GO
/****** Object:  StoredProcedure [dbo].[usp_SetKV]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_SetKV]
@id int
as
select * from KhuVuc where Id_KV =@id
GO
/****** Object:  StoredProcedure [dbo].[usp_SetNCC]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_SetNCC]
@id int
as
select Id_NCC, MaNCC, TenNCC, Sdt, DiaChi, Id_KV from NhaCC
GO
/****** Object:  StoredProcedure [dbo].[usp_GetListTG]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_GetListTG]
as
select Id_TG, MaTG N'Mã tỷ giá', TenTG N'Tên tỷ giá', QuyDoi N'Số tiền quy đổi (VND)'
from TyGia1
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertKV]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_InsertKV]
	@Ma char(3),
	@Ten nvarchar(20),
	@TrucThuoc int
as 
	begin
		if @TrucThuoc = 0 set @TrucThuoc = NULL 
		insert KhuVuc(Ma,Ten,TrucThuoc)
		values(@Ma,@Ten,@TrucThuoc)
	end
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertDepartment]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_InsertDepartment]
	@ma nchar(2), @ten nvarchar(30), @out int output
as
	declare c cursor for (select MaBP from BoPhan)
	open c
	fetch next from c into @ma
	if @@FETCH_STATUS = 0
		set @out = 0
	else 
	begin		
		insert into BoPhan values(@ma, @ten)
		set @out = 1
	end
	select case @out
		when 0 then 0
		else 1		
end
close c
deallocate c
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateKV]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_UpdateKV]
	@ID_KV int,
	@Ma char(3),
	@Ten nvarchar(20),
	@TrucThuoc int
as
	begin
		if @TrucThuoc = 1 set @TrucThuoc = null 
		update KhuVuc
		set Ma=@Ma ,Ten=@Ten,TrucThuoc=@TrucThuoc
		where Id_KV=@ID_KV
	end
GO
/****** Object:  StoredProcedure [dbo].[UpdateQuery]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateQuery]
(
	@MaNSX varchar(10),
	@TenNSX nvarchar(50),
	@Original_Id_NSX int,
	@IsNull_MaNSX Int,
	@IsNull_TenNSX Int,
	@Original_MaNSX varchar(10),
	@Original_TenNSX nvarchar(50),
	@Id_NSX int
)
AS
	SET NOCOUNT OFF;
UPDATE       NhaSX
SET                MaNSX = @MaNSX, TenNSX = @TenNSX
WHERE        (Id_NSX = @Original_Id_NSX) AND (@IsNull_MaNSX = 1) AND (MaNSX IS NULL) AND (@IsNull_TenNSX = 1) AND (TenNSX IS NULL) OR
                         (Id_NSX = @Original_Id_NSX) AND (MaNSX = @Original_MaNSX) AND (@IsNull_TenNSX = 1) AND (TenNSX IS NULL) OR
                         (Id_NSX = @Original_Id_NSX) AND (@IsNull_MaNSX = 1) AND (MaNSX IS NULL) AND (TenNSX = @Original_TenNSX) OR
                         (Id_NSX = @Original_Id_NSX) AND (MaNSX = @Original_MaNSX) AND (TenNSX = @Original_TenNSX);
	 
SELECT Id_NSX, MaNSX, TenNSX FROM NhaSX WHERE (Id_NSX = @Id_NSX)
GO
/****** Object:  StoredProcedure [dbo].[NhaCC_select]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[NhaCC_select]
as
begin
	select*
	from NhaCC
end
GO
/****** Object:  StoredProcedure [dbo].[usp_GetListNSX]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_GetListNSX]
as
select Id_NSX, MaNSX N'Mã nhà sản xuất', TenNSX N'Tên nhà sản xuất'  from NhaSX
GO
/****** Object:  StoredProcedure [dbo].[usp_GetListNCC]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_GetListNCC]
as
select Id_NCC, MaNCC N'Mã số', TenNCC N'Tên', 
	DiaChi N'Địa chỉ', Sdt N'Số điện thoại'
from NhaCC
GO
/****** Object:  StoredProcedure [dbo].[usp_GetListKV_TT]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_GetListKV_TT]
as	
update KhuVuc set TrucThuoc = NULL  where TrucThuoc = 0
select Id_KV, Ten from KhuVuc where TrucThuoc is null
GO
/****** Object:  StoredProcedure [dbo].[usp_GetListKV_NodeCha]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_GetListKV_NodeCha]
as select Id_KV, Ma, Ten from KhuVuc where TrucThuoc  is null
GO
/****** Object:  StoredProcedure [dbo].[usp_GetListKV_NodeCon]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_GetListKV_NodeCon]
	@ma int
as select Id_KV, Ma, Ten from KhuVuc where TrucThuoc = @ma
GO
/****** Object:  StoredProcedure [dbo].[usp_GetListKV]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_GetListKV]
as
select kv1.Id_KV, kv1.Ma N'Mã khu vực', kv1.Ten N'Tên khu vực', kv1.TrucThuoc, kv2.Ten N'Khu vực quản lý'
from KhuVuc kv1 left join KhuVuc kv2
on kv1.TrucThuoc = kv2.Id_KV
GO
/****** Object:  StoredProcedure [dbo].[usp_GetListHelp_NodeCha]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_GetListHelp_NodeCha]
as select Id, Title from Help where Depend is null
GO
/****** Object:  StoredProcedure [dbo].[usp_GetListHelp_NodeCon]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_GetListHelp_NodeCon]
	@id int
as select Id, Title from Help where Depend = @id
GO
/****** Object:  StoredProcedure [dbo].[usp_GetListHelp]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_GetListHelp]
as select * from Help
GO
/****** Object:  StoredProcedure [dbo].[usp_GetListDVT]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_GetListDVT]
as
Select Id_DVT, MaDVT N'Mã đơn vị', TenDVT N'Tên đơn vị tính' from DonViTinh
GO
/****** Object:  StoredProcedure [dbo].[InsertQuery]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertQuery]
(
	@MaNSX varchar(10),
	@TenNSX nvarchar(50)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [dbo].[NhaSX] ([MaNSX], [TenNSX]) VALUES (@MaNSX, @TenNSX);
	
SELECT Id_NSX, MaNSX, TenNSX FROM NhaSX WHERE (Id_NSX = SCOPE_IDENTITY())
GO
/****** Object:  Table [dbo].[CuaHang]    Script Date: 03/06/2014 21:35:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CuaHang](
	[Id_CH] [int] IDENTITY(1,1) NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Sdt] [varchar](12) NULL,
	[Id_KV] [int] NULL,
	[TenCH] [nvarchar](30) NULL,
 CONSTRAINT [PK_QLSP] PRIMARY KEY CLUSTERED 
(
	[Id_CH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[ListKV]    Script Date: 03/06/2014 21:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[ListKV]
As
select Id_KV, Ten from KhuVuc where TrucThuoc is null
GO
/****** Object:  StoredProcedure [dbo].[KhuyenMai_update]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[KhuyenMai_update]
@ID_KM int,
@SoDiem int,
@TiLeGiam int
as
	begin
		update KhuyenMai set SoDiem =@SoDiem,TiLeGiam=@TiLeGiam
		where Id_KM =@ID_KM
	end
GO
/****** Object:  StoredProcedure [dbo].[KhuyenMai_select]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[KhuyenMai_select]
as
	begin
		select *
		from KhuyenMai 
	end
GO
/****** Object:  StoredProcedure [dbo].[KhuyenMai_insert]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[KhuyenMai_insert]
@SoDiem int,
@TiLeGiam int
as
	begin
		insert KhuyenMai(SoDiem,TiLeGiam)values(@SoDiem,@TiLeGiam)
	end
GO
/****** Object:  StoredProcedure [dbo].[KhuyenMai_delete]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[KhuyenMai_delete]
@ID_KM int
as
	begin
		delete from KhuyenMai where Id_KM =@ID_KM
	end
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 03/06/2014 21:35:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[Id_KH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[Sdt] [nchar](12) NULL,
	[DiemTichLuy] [int] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Id_KM] [int] NULL,
	[Id_CH] [int] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[Id_KH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 03/06/2014 21:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[Id_NV] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [varchar](10) NULL,
	[Pword] [varchar](30) NULL,
	[Id_BP] [int] NULL,
	[ID_CH] [int] NULL,
	[NVQL] [int] NULL,
	[RememberPass] [int] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[Id_NV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[usp_GetListCH_KV]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_GetListCH_KV]
	@id int
as select Id_CH, TenCH from CuaHang where Id_KV=@id
GO
/****** Object:  StoredProcedure [dbo].[usp_GetListCH]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_GetListCH]
as
select Id_CH, TenCH N'Tên cửa hàng', Sdt N'Số điện thoại', DiaChi N'Địa chỉ liên hệ', ch.Id_KV, kv.Ten N'Khu vực quản lý'
from CuaHang ch left join KhuVuc kv on kv.Id_KV = ch.Id_KV
GO
/****** Object:  StoredProcedure [dbo].[CuaHang_select]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[CuaHang_select]
as
	begin
		select *
		from CuaHang
	end
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteKV]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_DeleteKV]
	@ID_KV int 
as 
	update KhuVuc set TrucThuoc = Null where TrucThuoc = @ID_KV 
	update CuaHang set Id_KV = null where Id_KV = @ID_KV 
	delete from KhuVuc where Id_KV =@ID_KV
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 03/06/2014 21:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[Id_SP] [int] IDENTITY(1,1) NOT NULL,
	[MaSP] [varchar](50) NULL,
	[TenSP] [nvarchar](30) NULL,
	[SLTon] [int] NULL,
	[GiaSi] [int] NULL,
	[GiaLe] [int] NULL,
	[NgayNhap] [datetime] NULL,
	[Id_NSX] [int] NULL,
	[Id_NH] [int] NULL,
	[Id_DVT] [int] NULL,
	[Id_CH] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[Id_SP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateCH]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_UpdateCH]
	@id_ch int,
	@ten nvarchar (30),
	@sdt varchar(12),
	@diaChi nvarchar(50),
	@id_kv int
as 
	if @id_kv=0 set @id_kv=null
	Update CuaHang set TenCH=@ten, Sdt=@sdt, DiaChi=@diaChi, Id_KV=@id_kv where Id_CH=@id_ch
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertCH]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_InsertCH]
	@ten nvarchar (30),
	@sdt varchar(12),
	@diaChi nvarchar(50),
	@id_kv int
as 
	if @id_kv=0 set @id_kv=null
	insert into CuaHang(TenCH, Sdt, DiaChi, Id_KV) values(@ten, @sdt, @diaChi, @id_kv )
GO
/****** Object:  StoredProcedure [dbo].[usp_SetCH]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_SetCH]
	@id int
as
select Id_CH, TenCH, Sdt, DiaChi, Id_KV  from CuaHang where @id =Id_CH
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAllStaff]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_GetAllStaff]
as 
if exists (select Id_NV  from NhanVien)
select Id_NV , MaNV, Pword, bp.Id_BP, NVQL
from NhanVien nv left join BoPhan bp on nv.Id_BP = bp.Id_BP
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAllCustomer]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_GetAllCustomer]
as 
select Id_KH, HoTen N'Họ tên', kh.Sdt N'Số điện thoại', DiemTichLuy N'Điểm tích lũy', 
	kh.DiaChi N'Địa chỉ liên lạc', TiLeGiam N'% khuyến mãi khi mua hàng', ch.TenCH N'Nơi đăng ký tài khoản'
from KhachHang kh left join KhuyenMai km
on kh.Id_KM=km.Id_KM 
left join CuaHang ch
on kh.Id_CH=ch.Id_CH
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteSP]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_DeleteSP]
	@id int
as delete SanPham where Id_SP=@id
GO
/****** Object:  StoredProcedure [dbo].[usp_GetListNVQL]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[usp_GetListNVQL]
as 
select Id_NV, MaNV 
from NhanVien nv, BoPhan bp
where nv.Id_BP = bp.Id_BP and MaBP = 'QL'
GO
/****** Object:  StoredProcedure [dbo].[usp_GetListNV_BP]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_GetListNV_BP]
	@id_bp int

as select Id_NV, MaNV from NhanVien nv  join BoPhan bp on nv.Id_BP = bp.Id_BP and bp.Id_BP = @id_bp
GO
/****** Object:  StoredProcedure [dbo].[usp_SearchCustomer]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_SearchCustomer]
	@keyWord nvarchar(50), @check int
as
begin
	if @check = 1	
		select Id_KH, HoTen N'Họ tên', kh.Sdt N'Số điện thoại', DiemTichLuy N'Điểm tích lũy', 
			kh.DiaChi N'Địa chỉ', TiLeGiam N'% khuyến mãi khi mua hàng', ch.TenCH N'Tên cửa hàng'
		from KhachHang kh left join KhuyenMai km on kh.Id_KM=km.Id_KM
			left join CuaHang ch on kh.Id_CH=ch.Id_CH 
			where HoTen like '%'+@keyWord+'%'
	else
		select Id_KH, HoTen N'Họ tên', kh.Sdt N'Số điện thoại', DiemTichLuy N'Điểm tích lũy', 
			kh.DiaChi N'Địa chỉ', TiLeGiam N'% khuyến mãi khi mua hàng', ch.TenCH N'Tên cửa hàng'
		from KhachHang kh left join KhuyenMai km on kh.Id_KM=km.Id_KM
			left join CuaHang ch on kh.Id_CH=ch.Id_CH 
			where kh.Sdt like '%'+@keyWord+'%'
end
GO
/****** Object:  StoredProcedure [dbo].[usp_Login_Remember]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_Login_Remember]
	@uname varchar(10), @pas varchar(30) output
as
	if exists (select MaNV  from NhanVien where MaNV = @uname and RememberPass = 1)
		select @pas = Pword from NhanVien  where MaNV  = @uname
GO
/****** Object:  StoredProcedure [dbo].[usp_Login_Grant]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_Login_Grant]
	@uname varchar(10), @pas varchar(30), @outRes int output
as
	declare @maBP nchar(2)
	SELECT @maBP = MaBP FROM NhanVien nv, BoPhan bp WHERE MaNV = @uname And Pword = @pas and bp.Id_BP  = nv.Id_BP
	if @maBP = 'AD' set @outRes = 1
	else if @maBP = 'QL' set @outRes = 2
	else if @maBP = 'BH' set @outRes = 3
	else  set @outRes = 4
	select case @outRes 
		when 1 then 1 --Quyền admin
		when 2 then 2 --Quản lý
		when 3 then 3 --NV kho
		when 4 then 4 --NV bán hàng
end
GO
/****** Object:  StoredProcedure [dbo].[usp_Login]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_Login]
	@uname varchar(10), @pas varchar(30), @check int , @outRes int output
as
	declare @remember int
	select @remember = RememberPass from NhanVien where MaNV = @uname 
	if (@check = 1) and @remember IS null
		update NhanVien set RememberPass = 1 where MaNV=@uname 
	set @outRes = (SELECT count(*) FROM NhanVien WHERE MaNV = @uname And Pword = @pas)
	declare @uname1 varchar(10), @pas1 varchar(30)
	if not exists (Select MaNV from NhanVien where MaNV = @uname) set  @outRes = 2
	if exists (select MaNV from NhanVien where MaNV = @uname )
		and  not exists (Select Pword  from NhanVien where Pword=@pas and MaNV=@uname ) set @outRes = 3
	select case @outRes
		when 1 then 1 --Đăng nhập thành công
		when 2 then 2 --Sai uname
		when 3 then 3 --Sai pas
end
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertSP]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_InsertSP]
	@ma varchar(50), 
	@ten nvarchar(30),
	@slton int,
	@giaLe int,
	@giaSi int,
	@id_ch int,
	@id_dvt int,
	@id_nsx int,
	@id_nh int,
	@ngayNhap datetime
as
if @slton=0 set @slton=null
if @giaLe =0 set @giaLe = null
if @giaSi = 0 set @giaSi=null
if @id_ch = 0 set @id_ch =null
if @id_dvt = 0 set @id_dvt =null
if @id_nsx = 0 set @id_nsx =null
if @id_nh = 0 set @id_nh =null
insert into SanPham(MaSP, TenSP, GiaLe, GiaSi, SLTon, Id_CH, Id_DVT, Id_NSX, Id_NH, NgayNhap )
values(@ma, @ten, @giaLe, @giaSi, @slton, @id_ch, @id_dvt, @id_nsx, @id_nh, @ngayNhap )
GO
/****** Object:  StoredProcedure [dbo].[usp_SetSP]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_SetSP]
	@id int
as
select Id_SP, MaSP, TenSP, GiaLe, GiaSi, SLTon, Id_CH, Id_DVT, Id_NSX, Id_NH, NgayNhap from SanPham where Id_SP=@id
GO
/****** Object:  StoredProcedure [dbo].[usp_SetNV]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_SetNV]
	@id int
as
select Id_NV, MaNV, Id_BP, NVQL, ID_CH from NhanVien where @id =Id_NV
GO
/****** Object:  StoredProcedure [dbo].[usp_SetKH]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_SetKH]
@id int
as
select Id_KH, HoTen, Sdt, DiaChi, Id_CH from KhachHang where Id_KH =@id
GO
/****** Object:  StoredProcedure [dbo].[usp_GetListSP_CH]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_GetListSP_CH]
	@id int
as
	select TenSP N'Sản phẩm', sp.GiaLe N'Giá bán lẻ', sp.GiaSi N'Giá bán sỉ'
	from SanPham sp left join CuaHang ch
	on sp.Id_CH=ch.Id_CH 
	where ch.Id_CH=@id
GO
/****** Object:  StoredProcedure [dbo].[usp_GetListSP]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_GetListSP]
as
select Id_SP, sp.Id_NSX, sp.Id_NH, sp.Id_CH, sp.Id_DVT, MaSP N'Mã sản phẩm', TenSP N'Tên sản phẩm', 
	TenNH N'Nhóm hàng', SLTon N'Số lượng tồn', TenDVT N'Đơn vị tính', GiaLe N'Giá lẻ', GiaSi N'Giá sỉ', 
	NgayNhap N'Ngày nhập', TenNSX N'Nhà sản xuất', TenCH N'Cửa hàng'
from SanPham sp left join NhaSX nsx on sp.Id_NSX=nsx.Id_NSX 
	left join NhomHang nh on sp.Id_NH=nh.Id_NH
	left join CuaHang ch on sp.Id_CH=ch.Id_CH
	left join DonViTinh dvt on sp.Id_DVT=dvt.Id_DVT
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertKH]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_InsertKH]
	@ten nvarchar(50),
	@sdt nchar(12),
	@diaChi nvarchar(50),
	@id_ch int
as
insert into KhachHang(HoTen, Sdt, DiaChi, Id_CH) values (@ten, @sdt, @diaChi, @id_ch)
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateSP]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_UpdateSP]
	@id int,
	@ma varchar(50), 
	@ten nvarchar(30),
	@slton int,
	@giaLe int,
	@giaSi int,
	@id_ch int,
	@id_dvt int,
	@id_nsx int,
	@id_nh int,
	@ngayNhap datetime
as
	if @slton=0 set @slton=null
	if @giaLe =0 set @giaLe = null
	if @giaSi = 0 set @giaSi=null
	if @id_ch = 0 set @id_ch =null
	if @id_dvt = 0 set @id_dvt =null
	if @id_nsx = 0 set @id_nsx =null
	if @id_nh = 0 set @id_nh =null
	update SanPham set MaSP=@ma, TenSP =@ten, SLTon=@slton, GiaLe=@giaLe, GiaSi=@giaSi, 
		Id_CH=@id_ch, Id_DVT=@id_dvt, Id_NSX=@id_nsx, Id_NH=@id_nh 
	where Id_SP=@id
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateNV]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_UpdateNV]
	@id int,
	@maNV varchar(10),
	@id_bp int, 
	@id_ch int,
	@nvql int
as 
if @id_bp=0 set @id_bp=null
if @id_ch=0 set @id_ch=null
if @nvql=0 set @nvql=null
update NhanVien set MaNV=@maNV, Id_BP=@id_bp, NVQL=@nvql, ID_CH=@id_ch where Id_NV=@id
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateKH]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_UpdateKH]
	@id_kh int,
	@ten nvarchar(50),
	@sdt nchar(12),
	@diaChi nvarchar(50),
	@id_ch int
as
update KhachHang set HoTen = @ten, Sdt=@sdt , DiaChi=@diaChi , Id_CH=@id_ch where Id_KH =@id_kh
GO
/****** Object:  Table [dbo].[PhieuNhapHang]    Script Date: 03/06/2014 21:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhapHang](
	[Ma_PNH] [nchar](10) NOT NULL,
	[Id_NCC] [int] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Id_NV] [int] NULL,
	[NgayNhap] [datetime] NULL,
	[TongTien] [int] NULL,
	[TinhTrang] [bit] NULL,
	[Sdt] [nchar](12) NULL,
 CONSTRAINT [PK_PhieuNhapHang] PRIMARY KEY CLUSTERED 
(
	[Ma_PNH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[SanPham_update3]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SanPham_update3] --CHo hoá đơn bán hàng---
@Id_SP int,
@SoLuonglayra int
as
	begin
		declare @Soluonton int
		set @Soluonton=(select SLTon from SanPham where Id_SP=@Id_SP)
		set @Soluonton=@Soluonton-@SoLuonglayra
		if @Soluonton is null
		 set @Soluonton=0
		 update SanPham set SLTon =@Soluonton where Id_SP=@Id_SP
	end
GO
/****** Object:  StoredProcedure [dbo].[SanPham_update2]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SanPham_update2]
@Id_SP int,
@SoLuongthemvao int
as
	begin
		update SanPham set SLTon=SLTon +@SoLuongthemvao
		where Id_SP = @Id_SP
	end
GO
/****** Object:  StoredProcedure [dbo].[SanPham_update]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SanPham_update] 
	@Id_SP int,
	@MaSP varchar(50),
	@TenSP nvarchar(30),
	@SLTon int,
	@GiaSi int,
	@GiaLe int,
	@NgayNhap datetime,
	@Id_NSX int,
	@Id_NH int,
	@Id_DVT int,
	@Id_CH int
as
	begin
		update SanPham
		set 
			MaSP=@MaSP,
			TenSP=@TenSP,
			SLTon=@SLTon,
			GiaSi=@GiaSi,
			GiaLe=@GiaLe,
			NgayNhap=@NgayNhap,
			Id_NSX=@Id_NSX,
			Id_NH=@Id_NH,
			Id_DVT=@Id_DVT,
			Id_CH=@Id_CH
		where Id_SP=@Id_SP
	end
GO
/****** Object:  StoredProcedure [dbo].[SanPham_select4]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SanPham_select4]
@ID_SP int
as
	begin
		--select sp.Id_SP,sp.MaSP,sp.TenSP,sp.SLTon,sp.GiaSi,sp.GiaLe,sp.NgayNhap,nsx.TenNSX,nh.TenNH,dvt.TenDVT,ch.TenCH
		--from SanPham sp,DonViTinh dvt,NhomHang nh,NhaSX nsx,CuaHang ch
		--where sp.Id_DVT =dvt.Id_DVT and sp.Id_NH =nh.Id_NH and sp.Id_NSX=nsx.Id_NSX and sp.Id_CH=ch.Id_CH and sp.Id_SP=@ID_SPp.
		select sp.Id_SP,sp.MaSP,sp.TenSP,sp.SLTon,sp.GiaSi,sp.GiaLe,sp.NgayNhap,nsx.TenNSX,nh.TenNH,dvt.TenDVT,ch.TenCH
		from SanPham sp left join DonViTinh dvt
			on sp.Id_DVT=dvt.Id_DVT 
			left join NhomHang nh on sp.Id_NH = nh.Id_NH 
			left join NhaSX nsx on sp.Id_NSX=nsx.Id_NSX
			left join CuaHang ch on sp.Id_CH=ch.Id_CH 
		where sp.Id_SP=@ID_SP
	end
GO
/****** Object:  StoredProcedure [dbo].[SanPham_select3]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SanPham_select3] @Id_CH int
as
	begin
		select sp.Id_SP,sp.MaSP,sp.TenSP,sp.SLTon,sp.GiaSi,sp.GiaLe,sp.NgayNhap,nh.TenNH,dvt.TenDVT,ch.TenCH,Id_NSX
		from SanPham sp,DonViTinh dvt,NhomHang nh,CuaHang ch
		where sp.Id_DVT =dvt.Id_DVT and sp.Id_NH =nh.Id_NH and sp.Id_CH=ch.Id_CH and sp.Id_CH=@Id_CH
	end
GO
/****** Object:  StoredProcedure [dbo].[SanPham_select2]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SanPham_select2]
as
begin
		select sp.Id_SP,sp.MaSP,sp.TenSP,sp.SLTon,sp.GiaSi,sp.GiaLe,sp.NgayNhap,nh.TenNH,dvt.TenDVT,ch.TenCH,sp.Id_NSX 
		from SanPham sp,DonViTinh dvt,NhomHang nh,CuaHang ch
		where sp.Id_DVT =dvt.Id_DVT and sp.Id_NH =nh.Id_NH and sp.Id_CH=ch.Id_CH
	end
GO
/****** Object:  StoredProcedure [dbo].[SanPham_select]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SanPham_select]
as
	begin
		select *
		from SanPham
	end
GO
/****** Object:  StoredProcedure [dbo].[SanPham_insert]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SanPham_insert] 
	@MaSP varchar(50),
	@TenSP nvarchar(30),
	@SLTon int,
	@GiaSi int,
	@GiaLe int,
	@NgayNhap datetime,
	@Id_NSX int,
	@Id_NH int,
	@Id_DVT int,
	@Id_CH int
as 
	begin
		insert SanPham(MaSP,TenSP,SLTon,GiaSi,GiaLe,NgayNhap,Id_NSX,Id_NH,Id_DVT,Id_CH)
		values(@MaSP,@TenSP,@SLTon,@GiaSi,@GiaLe,@NgayNhap,@Id_NSX,@Id_NH,@Id_DVT,@Id_CH)
	end
GO
/****** Object:  StoredProcedure [dbo].[SanPham_delete]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SanPham_delete] 
	@Id_SP int 
as
	begin
		delete from SanPham where Id_SP =@Id_SP
	end
GO
/****** Object:  Table [dbo].[PhieuBanHang]    Script Date: 03/06/2014 21:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuBanHang](
	[MaPBH] [nchar](10) NOT NULL,
	[ID_KH] [int] NULL,
	[ID_NV] [int] NULL,
	[NgayGiao] [datetime] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[sdt] [nchar](12) NULL,
	[Tongtien] [int] NULL,
	[TinhTrang] [bit] NULL,
 CONSTRAINT [PK_PhieuBanHang] PRIMARY KEY CLUSTERED 
(
	[MaPBH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteCH]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_DeleteCH]
	@id int
as 
	update NhanVien set ID_CH=null
	update KhachHang set ID_CH=null
	update SanPham set ID_CH=null
	delete CuaHang where ID_CH=@id
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteBP]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_DeleteBP]
	@id_bp int 
as 
	update NhanVien set Id_BP = 0 where Id_BP = @id_bp
	delete BoPhan where Id_BP = @id_bp
GO
/****** Object:  StoredProcedure [dbo].[usp_ChangePas]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_ChangePas]
	@maNV varchar(10), @old varchar(30), @newPas varchar(30), @again varchar(30), @test int output
as
	declare @out int
	set @out = (Select COUNT(*) from NhanVien where Pword = @old and MaNV = @maNV )
	if @out = 1 
	begin
		if @newPas = @again 
		begin
			update NhanVien set Pword=@newPas where MaNV=@maNV 
			set @test = 0 --đổi thành công
		end
		else set @test = 1 --Xác nhận mật khẩu sai
	end
	else set @test = 2 --Mật khẩu sai
	select case @test
		when 0 then 0 --Đổi thành công
		when 1 then 1
		when 2 then 2
end
GO
/****** Object:  StoredProcedure [dbo].[usp_CallPass]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  proc [dbo].[usp_CallPass]
	@uname varchar(10), @pas varchar(30) output
as
	if (select RememberPass from NhanVien where MaNV=@uname) = 1 
		and (Select COUNT(*) from NhanVien where MaNV = @uname)=1
		select @pas = Pword from NhanVien  where MaNV  = @uname
GO
/****** Object:  Table [dbo].[NhanVienInfo]    Script Date: 03/06/2014 21:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVienInfo](
	[Id_NVInfo] [int] NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[CMND] [varchar](10) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Sdt] [nvarchar](12) NULL,
 CONSTRAINT [PK_NhanVienInfo] PRIMARY KEY CLUSTERED 
(
	[Id_NVInfo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[Nhanvien_select]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc  [dbo].[Nhanvien_select]
as
begin
	select*from NhanVien
end
GO
/****** Object:  StoredProcedure [dbo].[KhachHang_updatekhuyenmai]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[KhachHang_updatekhuyenmai]
@ID_KH int,
@DiemTichLuy int
as
	begin
		update Khachhang set DiemTichLuy=DiemTichLuy +@DiemTichLuy 
		where Id_KH=@ID_KH
		declare @kiemtra int
		set @kiemtra = (select DiemTichLuy from KhachHang where Id_KH=@ID_KH)
		declare @ID_KM int
		set @ID_KM =(select MAX(Id_KM ) from KhuyenMai where SoDiem>=0 and SoDiem <=@kiemtra)
		update KhachHang set Id_KM=@ID_KM where Id_KH=@ID_KH
	end
GO
/****** Object:  StoredProcedure [dbo].[KhachHang_update]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[KhachHang_update] 
	@ID_KH int,
	@HoTen nvarchar(50),
	@Sdt nchar(12),
	@DiemTichLuy int,
	@DiaChi nvarchar(50),
	@Id_KM int,
	@id_KV int
as
	begin
		update KhachHang
		set HoTen=@HoTen,
			Sdt=@Sdt,
			DiemTichLuy=@DiemTichLuy,
			DiaChi=@DiaChi,
			Id_KM=@Id_KM
		where Id_KH= @ID_KH
	end
GO
/****** Object:  StoredProcedure [dbo].[KhachHang_select]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[KhachHang_select]
as
	begin
		select *
		from KhachHang
	end
GO
/****** Object:  Table [dbo].[ChiTietPhieu]    Script Date: 03/06/2014 21:35:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieu](
	[Id_CTP] [int] IDENTITY(1,1) NOT NULL,
	[MaPhieu] [nchar](10) NULL,
	[ID_SP] [int] NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
	[ThanhTien] [int] NULL,
 CONSTRAINT [PK_ChiTietPhieu] PRIMARY KEY CLUSTERED 
(
	[Id_CTP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[chuyenhang]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[chuyenhang] 
	@MaSP varchar(50),
	@TenSP nvarchar(30),
	@SLTon int,
	@Id_NSX int,
	@GiaSi int,
	@GiaLe int,
	@Id_NH int,
	@Id_DVT int,
	@Id_CH int,
	@Id_CH2 int,
	@NgayNhap datetime,
	@SLTon2 int
as
	begin
		if exists (select * from SanPham sp
					where sp.MaSP=@MaSP and sp.TenSP =@TenSP and sp.Id_NSX =@Id_NSX and sp.Id_DVT =@Id_DVT and sp.Id_CH =@Id_CH2 and sp.Id_NH=@Id_NH)
		begin
			update SanPham set SLTon =SLTon -@SLTon2  where
			MaSP=@MaSP and TenSP =@TenSP and Id_NSX =@Id_NSX and Id_DVT =@Id_DVT and Id_CH =@Id_CH and Id_NH=@Id_NH
			update SanPham set SLTon =SlTon+@SlTon2 where
			MaSP=@MaSP and TenSP =@TenSP and Id_NSX =@Id_NSX and Id_DVT =@Id_DVT and Id_CH =@Id_CH2 and Id_NH=@Id_NH
		end
		else
		begin
			update SanPham set SLTon =SLTon -@SLTon2  where
			MaSP=@MaSP and TenSP =@TenSP and Id_NSX =@Id_NSX and Id_DVT =@Id_DVT and Id_CH =@Id_CH and Id_NH=@Id_NH
			insert SanPham (MaSP,TenSP,SLTon,GiaSi,GiaLe,NgayNhap,Id_NSX,Id_NH,Id_DVT,Id_CH)
			values(@MaSP,@TenSP,@SLTon2,@GiaSi,@GiaLe,@NgayNhap,@Id_NSX,@Id_NH,@Id_DVT,@Id_CH2)
		end
end
GO
/****** Object:  StoredProcedure [dbo].[ChiTietPhieuBan_select3]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ChiTietPhieuBan_select3]
as
	begin
	select ctp.Id_CTP,ctp.MaPhieu,sp.TenSP,sp.Id_NSX,ctp.SoLuong as N'Số lượng nhập',ctp.DonGia,ctp.ThanhTien
	from ChiTietPhieuBan ctp,SanPham sp
	where ctp.ID_SP=sp.Id_SP
	end
GO
/****** Object:  StoredProcedure [dbo].[ChiTietPhieuBan_select2]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ChiTietPhieuBan_select2]
@MaPhieu nchar(10)
as
	begin
	select ctp.Id_CTP,ctp.MaPhieu,sp.TenSP,sp.Id_NSX,ctp.SoLuong as N'Số lượng nhập',ctp.DonGia,ctp.ThanhTien
	from ChiTietPhieuBan ctp,SanPham sp
	where ctp.MaPhieu=@MaPhieu and ctp.ID_SP=sp.Id_SP
	end
GO
/****** Object:  StoredProcedure [dbo].[ChiTietPhieuBan_select]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ChiTietPhieuBan_select]
@MaPhieu nchar(10)
as
	begin
	select* 
	from ChiTietPhieuBan ctpb,SanPham sp
	where ctpb.MaPhieu=@MaPhieu and ctpb.ID_SP=sp.Id_SP
	end
GO
/****** Object:  StoredProcedure [dbo].[ChiTietPhieuNhap_update]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ChiTietPhieuNhap_update]
@ID_CTP int,
@MaPhieu nchar(10),
@ID_SP int,
@SoLuong int,
@DonGia int,
@ThanhTien int
as
begin
	update ChiTietPhieu set ID_SP=@ID_SP,SoLuong=@SoLuong,DonGia=@DonGia,ThanhTien=@ThanhTien
	where Id_CTP=@ID_CTP
	declare @Tongtien int
	set @Tongtien =(select SUM(ThanhTien)
					from ChiTietPhieu 
					where MaPhieu=@MaPhieu
					group by MaPhieu)
	if @Tongtien  is null
	Set @Tongtien=0
	update PhieuNhapHang set TongTien=@Tongtien
	where Ma_PNH=@MaPhieu
end
GO
/****** Object:  StoredProcedure [dbo].[ChiTietPhieuNhap_select2]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ChiTietPhieuNhap_select2]
@MaPhieu nchar(10)
as
	begin
	select ctp.Id_CTP,ctp.MaPhieu,sp.TenSP,sp.Id_NSX,ctp.SoLuong as N'Số lượng nhập',ctp.DonGia,ctp.ThanhTien
	from ChiTietPhieu ctp,SanPham sp
	where ctp.MaPhieu=@MaPhieu and ctp.ID_SP=sp.Id_SP
	end
GO
/****** Object:  StoredProcedure [dbo].[ChiTietPhieuNhap_select]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ChiTietPhieuNhap_select]
@MaPhieu nchar(10)
as
	begin
	select* 
	from ChiTietPhieu ctp,SanPham sp
	where ctp.MaPhieu=@MaPhieu and ctp.ID_SP=sp.Id_SP 
	end
GO
/****** Object:  StoredProcedure [dbo].[ChiTietPhieuNhap_insert]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ChiTietPhieuNhap_insert]
@MaPhieu nchar(10),
@ID_SP int,
@SoLuong int,
@DonGia int,
@ThanhTien int
as
begin
	insert ChiTietPhieu(MaPhieu,ID_SP,SoLuong,DonGia,ThanhTien)
	values(@MaPhieu,@ID_SP,@SoLuong,@DonGia,@ThanhTien)
	declare @Tongtien int
	set @Tongtien =(select SUM(ThanhTien)
					from ChiTietPhieu 
					where MaPhieu=@MaPhieu
					group by MaPhieu)
	update PhieuNhapHang set TongTien=@Tongtien
	where Ma_PNH=@MaPhieu
end
GO
/****** Object:  StoredProcedure [dbo].[ChiTietPhieunhap_delete]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ChiTietPhieunhap_delete]
@ID_CTP int,
@MaPhieu nchar(10)
as
begin
	delete from ChiTietPhieu where Id_CTP =@Id_CTP
	declare @Tongtien int =0 
	set @Tongtien =(select SUM(ThanhTien)
					from ChiTietPhieu 
					where MaPhieu=@MaPhieu
					group by MaPhieu)
	if @Tongtien  is null
	Set @Tongtien=0
	update PhieuNhapHang set TongTien=@Tongtien
	where Ma_PNH=@MaPhieu
end
GO
/****** Object:  StoredProcedure [dbo].[ChiTietPhieuBan_update]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ChiTietPhieuBan_update]
@ID_CTP int,
@MaPhieu nchar(10),
@ID_SP int,
@SoLuong int,
@DonGia int,
@ThanhTien int
as
begin
	update ChiTietPhieuBan set ID_SP=@ID_SP,SoLuong=@SoLuong,DonGia=@DonGia,ThanhTien=@ThanhTien
	where Id_CTP=@ID_CTP
	declare @Tongtien int
	set @Tongtien =(select SUM(ThanhTien)
					from ChiTietPhieuBan
					where MaPhieu=@MaPhieu
					group by MaPhieu)
	if @Tongtien  is null
	Set @Tongtien=0
	update PhieuBanHang set TongTien=@Tongtien
	where MaPBH=@MaPhieu
end
GO
/****** Object:  StoredProcedure [dbo].[ChiTietPhieuBan_insert]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ChiTietPhieuBan_insert]
@MaPhieu nchar(10),
@ID_SP int,
@SoLuong int,
@DonGia int,
@ThanhTien int
as
begin
	insert ChiTietPhieuBan(MaPhieu,ID_SP,SoLuong,DonGia,ThanhTien)
	values(@MaPhieu,@ID_SP,@SoLuong,@DonGia,@ThanhTien)
	declare @Tongtien int
	set @Tongtien =(select SUM(ThanhTien)
					from ChiTietPhieuBan 
					where MaPhieu=@MaPhieu
					group by MaPhieu)
	update PhieuBanHang set TongTien=@Tongtien
	where MaPBH=@MaPhieu
end
GO
/****** Object:  StoredProcedure [dbo].[ChiTietPhieuBan_delete]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ChiTietPhieuBan_delete]
@ID_CTP int,
@MaPhieu nchar(10)
as
begin
	delete from ChiTietPhieuBan where Id_CTP =@Id_CTP
	declare @Tongtien int =0 
	set @Tongtien =(select SUM(ThanhTien)
					from ChiTietPhieuBan
					where MaPhieu=@MaPhieu
					group by MaPhieu)
	if @Tongtien  is null
	Set @Tongtien=0
	update PhieuBanHang set TongTien=@Tongtien
	where MaPBH=@MaPhieu
end
GO
/****** Object:  Table [dbo].[HoaDonBan]    Script Date: 03/06/2014 21:35:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonBan](
	[Id_HoaDon] [int] IDENTITY(1,1) NOT NULL,
	[MaPhieu] [nchar](10) NULL,
	[ID_NV] [int] NULL,
	[NgayGiao] [datetime] NULL,
	[TongTien] [int] NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_HoaDonBan] PRIMARY KEY CLUSTERED 
(
	[Id_HoaDon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 03/06/2014 21:35:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[Id_HoaDon] [int] IDENTITY(1,1) NOT NULL,
	[MaPhieu] [nchar](10) NULL,
	[ID_NV] [int] NULL,
	[NgayLap] [datetime] NULL,
	[TongTien] [int] NULL,
	[GhiChu] [nvarchar](50) NULL,
	[Id_CH] [int] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[Id_HoaDon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteKH]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_DeleteKH]
@id int
as
update PhieuBanHang set ID_KH=null where ID_KH=@id
delete KhachHang where Id_KH=@id
GO
/****** Object:  StoredProcedure [dbo].[usp_AutoUpdateStaffInfo]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_AutoUpdateStaffInfo]
as
begin
	select Id_NVInfo, TenNV N'Họ tên', CMND, NgaySinh N'Ngày sinh', 
		GioiTinh N'Giới tính', DiaChi N'Địa chỉ', Sdt N'Số điện thoại'
	from NhanVienInfo nv_info
end
GO
/****** Object:  StoredProcedure [dbo].[PhieuMuaHang_update]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[PhieuMuaHang_update]
@Ma_PNH nchar(10),
@ID_NCC int,
@DiaChi nvarchar(50),
@ID_NV int,
@NgayNhap datetime,
@Sdt nchar(12)
as
begin
	update PhieuNhapHang set Id_NCC=@ID_NCC,DiaChi=@DiaChi,Id_NV=@ID_NV,NgayNhap=@NgayNhap,Sdt=@Sdt
	where Ma_PNH=@Ma_PNH
end
GO
/****** Object:  StoredProcedure [dbo].[PhieuMuaHang_select3]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[PhieuMuaHang_select3]
as
begin
	select nh.Ma_PNH,ncc.TenNCC,nh.DiaChi,nv.MaNV,nh.NgayNhap,nh.TongTien,nh.TinhTrang,nh.Sdt
	from PhieuNhapHang nh,NhaCC ncc, NhanVien nv
	where nh.Id_NCC=ncc.Id_NCC and nh.Id_NV=nv.Id_NV and nh.TinhTrang=0
end
GO
/****** Object:  StoredProcedure [dbo].[PhieuMuaHang_select2]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[PhieuMuaHang_select2]
as
begin
	select nh.Ma_PNH,ncc.TenNCC,nh.DiaChi,nv.MaNV,nh.NgayNhap,nh.TongTien,nh.TinhTrang,nh.Sdt
	from PhieuNhapHang nh,NhaCC ncc, NhanVien nv
	where nh.Id_NCC=ncc.Id_NCC and nh.Id_NV=nv.Id_NV 
end
GO
/****** Object:  StoredProcedure [dbo].[PhieuMuaHang_select]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[PhieuMuaHang_select]
as
begin
	select * from PhieuNhapHang
end
GO
/****** Object:  StoredProcedure [dbo].[PhieuMuaHang_insert]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[PhieuMuaHang_insert]
@Ma_PNH nchar(10),
@ID_NCC int,
@DiaChi nvarchar(50),
@ID_NV int,
@NgayNhap datetime,
@TongTien int,
@TinhTrang bit,
@Sdt nchar(12)
as
begin
	insert PhieuNhapHang(Ma_PNH,Id_NCC,DiaChi,Id_NV,NgayNhap,TongTien,TinhTrang,Sdt)
	values(@Ma_PNH,@ID_NCC,@DiaChi,@ID_NV,@NgayNhap,@TongTien,@TinhTrang,@Sdt)
end
GO
/****** Object:  StoredProcedure [dbo].[PhieuMuaHang_delete]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[PhieuMuaHang_delete]
@Ma_PNH nchar(10)
as
begin
	delete from ChiTietPhieu where MaPhieu=@Ma_PNH 
	delete from PhieuNhapHang where Ma_PNH= @Ma_PNH and TinhTrang =0
end
GO
/****** Object:  StoredProcedure [dbo].[PhieuBanHang_update]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[PhieuBanHang_update]
@MaPBH nchar(10),
@ID_KH int,
@DiaChi nvarchar(50),
@ID_NV int,
@NgayGiao datetime,
@Sdt nchar(12)
as
begin
	update PhieuBanHang set ID_KH=@ID_KH,DiaChi=@DiaChi,Id_NV=@ID_NV,NgayGiao=@NgayGiao,Sdt=@Sdt
	where MaPBH=@MaPBH
end
GO
/****** Object:  StoredProcedure [dbo].[PhieuBanHang_select3]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[PhieuBanHang_select3]
as
begin
	select nh.MaPBH,kh.HoTen,nh.DiaChi,nv.MaNV as N'Nhân viên bán hàng',nh.NgayGiao,nh.TongTien,nh.TinhTrang,nh.Sdt
	from PhieuBanHang nh,KhachHang kh, NhanVien nv
	where nh.ID_KH=kh.Id_KH and nh.Id_NV=nv.Id_NV and nh.TinhTrang =0
end
GO
/****** Object:  StoredProcedure [dbo].[PhieuBanHang_select2]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[PhieuBanHang_select2]
as
begin
	select nh.MaPBH,kh.HoTen,nh.DiaChi,nv.MaNV as N'Nhân viên bán hàng',nh.NgayGiao,nh.TongTien,nh.TinhTrang,nh.Sdt
	from PhieuBanHang nh,KhachHang kh, NhanVien nv
	where nh.ID_KH=kh.Id_KH and nh.Id_NV=nv.Id_NV 
end
GO
/****** Object:  StoredProcedure [dbo].[PhieuBanHang_select]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[PhieuBanHang_select]
as
 begin
	select*
	from PhieuBanHang
end
GO
/****** Object:  StoredProcedure [dbo].[PhieuBanHang_insert]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[PhieuBanHang_insert]
@MaPBH nchar(10),
@ID_KH int,
@DiaChi nvarchar(50),
@ID_NV int,
@NgayGiao datetime,
@TongTien int,
@TinhTrang bit,
@Sdt nchar(12)
as
begin
	insert PhieuBanHang(MaPBH,Id_KH,DiaChi,Id_NV,NgayGiao,TongTien,TinhTrang,Sdt)
	values(@MaPBH,@ID_KH,@DiaChi,@ID_NV,@NgayGiao,@TongTien,@TinhTrang,@Sdt)
end
GO
/****** Object:  StoredProcedure [dbo].[PhieuBanHang_delete]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[PhieuBanHang_delete]
@MaPBH nchar(10)
as
begin
	delete from ChiTietPhieuBan where MaPhieu=@MaPBH
	delete from PhieuBanHang where MaPBH = @MaPBH and TinhTrang =0
end
GO
/****** Object:  StoredProcedure [dbo].[usp_StaffInfo]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_StaffInfo]
	@maNV varchar(10)
as
begin
	select Id_NVInfo, TenNV N'Họ tên', CMND, NgaySinh N'Ngày sinh', 
		GioiTinh N'Giới tính', DiaChi N'Địa chỉ', Sdt N'Số điện thoại'
	from NhanVienInfo nv_info, NhanVien nv
	where MaNV=@maNV and Id_NV=Id_NVInfo 
end
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertNV]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_InsertNV]
	@ma varchar(10),
	@id_bp int,
	@id_ch int,
	@nvql int
as	if @id_bp=0 set @id_bp=null
	if @id_ch=0 set @id_ch=null
	if @nvql=0 set @nvql=null
	insert into NhanVien(MaNV, Id_BP, Id_CH, NVQL) values (@ma, @id_bp, @id_ch, @nvql)
	declare @id int
	select @id=max(Id_NV) from NhanVien
	insert into NhanVienInfo(Id_NVInfo ) values( @id )
GO
/****** Object:  StoredProcedure [dbo].[usp_GetListNV]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_GetListNV]
as 
select Id_NV, MaNV N'Mã nhân viên', TenNV N'Quản lý trực tiếp', TenBP N'Bộ phận', TenCH N'Cửa hàng',
	NVQL, nv.Id_BP, nv.ID_CH
from NhanVien nv left join NhanVienInfo nv_info
	on nv.NVQL=nv_info.Id_NVInfo 
	left join BoPhan bp on bp.Id_BP = nv.Id_BP 
	left join CuaHang ch on ch.Id_CH=nv.ID_CH
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteNV]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_DeleteNV]
	@id int

as 
	update HoaDon set Id_NV = null where Id_NV=@id 
	update PhieuBanHang set Id_NV = null where Id_NV=@id
	update PhieuNhapHang set Id_NV = null where Id_NV=@id
	update NhanVien set NVQL = null where NVQL =@id
	delete NhanVienInfo where Id_NVInfo = @id 
	delete NhanVien where Id_NV=@id
GO
/****** Object:  StoredProcedure [dbo].[HoaDonBan_select2]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[HoaDonBan_select2]
as
	begin
		select hd.Id_HoaDon,hd.MaPhieu,nv.MaNV as N'Nhân viên giao',hd.NgayGiao,hd.TongTien,hd.GhiChu
		from HoaDonBan hd,NhanVien nv
		where hd.ID_NV=nv.Id_NV
	end
GO
/****** Object:  StoredProcedure [dbo].[HoaDonBan_select]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[HoaDonBan_select]
as
	begin
		select *
		from HoaDonBan
	end
GO
/****** Object:  StoredProcedure [dbo].[HoaDonBan_insert]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[HoaDonBan_insert] 
	@MaPhieu nchar(10),
	@ID_NV int,
	@NgayGiao datetime,
	@TongTien int,
	@Ghichu nvarchar(50)
as 
	begin
		insert HoaDonBan(MaPhieu,Id_NV,NgayGiao,TongTien,GhiChu)
		values(@MaPhieu,@ID_NV,@NgayGiao,@TongTien,@Ghichu)
		update PhieuBanHang set TinhTrang =1
		where MaPBH =@MaPhieu
	end
GO
/****** Object:  StoredProcedure [dbo].[HoaDonBan_delete]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[HoaDonBan_delete] @ID_HD int 
as
	begin
		declare @Maphieu nchar(10)
		set @Maphieu =(select MaPhieu from HoaDonBan where Id_HoaDon=@ID_HD)
		update PhieuBanHang set TinhTrang =0 where MaPBH=@Maphieu
		delete from HoaDonBan where Id_HoaDon =@ID_HD
	end
GO
/****** Object:  StoredProcedure [dbo].[HoaDon_select2]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[HoaDon_select2]
as
	begin
		select hd.Id_HoaDon,hd.MaPhieu,nv.MaNV,hd.NgayLap,hd.TongTien,hd.GhiChu
		from HoaDon hd,NhanVien nv
		where hd.ID_NV=nv.Id_NV
	end
GO
/****** Object:  StoredProcedure [dbo].[HoaDon_select]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[HoaDon_select]
as
	begin
		select *
		from HoaDon
	end
GO
/****** Object:  StoredProcedure [dbo].[HoaDon_insert]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[HoaDon_insert] 
	@MaPhieu nchar(10),
	@ID_NV int,
	@NgayLap datetime,
	@TongTien int,
	@Ghichu nvarchar(50)
as 
	begin
		insert HoaDon(MaPhieu,Id_NV,NgayLap,TongTien,GhiChu)
		values(@MaPhieu,@ID_NV,@NgayLap,@TongTien,@Ghichu)
		update PhieuNhapHang set TinhTrang =1
		where Ma_PNH =@MaPhieu
	end
GO
/****** Object:  StoredProcedure [dbo].[HoaDon_delete]    Script Date: 03/06/2014 21:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[HoaDon_delete] @ID_HD int 
as
	begin
		declare @Maphieu nchar(10)
		set @Maphieu =(select MaPhieu from HoaDon where Id_HoaDon=@ID_HD)
		update PhieuNhapHang set TinhTrang =0 where Ma_PNH=@Maphieu
		delete from HoaDon where Id_HoaDon =@ID_HD
	end
GO
/****** Object:  ForeignKey [FK_CuaHang_KhuVuc]    Script Date: 03/06/2014 21:35:35 ******/
ALTER TABLE [dbo].[CuaHang]  WITH CHECK ADD  CONSTRAINT [FK_CuaHang_KhuVuc] FOREIGN KEY([Id_KV])
REFERENCES [dbo].[KhuVuc] ([Id_KV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CuaHang] CHECK CONSTRAINT [FK_CuaHang_KhuVuc]
GO
/****** Object:  ForeignKey [FK_ChiTietPhieu_SanPham]    Script Date: 03/06/2014 21:35:35 ******/
ALTER TABLE [dbo].[ChiTietPhieu]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieu_SanPham] FOREIGN KEY([ID_SP])
REFERENCES [dbo].[SanPham] ([Id_SP])
GO
ALTER TABLE [dbo].[ChiTietPhieu] CHECK CONSTRAINT [FK_ChiTietPhieu_SanPham]
GO
/****** Object:  ForeignKey [FK_HoaDon_NhanVien]    Script Date: 03/06/2014 21:35:35 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([ID_NV])
REFERENCES [dbo].[NhanVien] ([Id_NV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
/****** Object:  ForeignKey [FK_HoaDon_PhieuNhapHang]    Script Date: 03/06/2014 21:35:35 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_PhieuNhapHang] FOREIGN KEY([MaPhieu])
REFERENCES [dbo].[PhieuNhapHang] ([Ma_PNH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_PhieuNhapHang]
GO
/****** Object:  ForeignKey [FK_HoaDonBan_PhieuBanHang]    Script Date: 03/06/2014 21:35:35 ******/
ALTER TABLE [dbo].[HoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonBan_PhieuBanHang] FOREIGN KEY([MaPhieu])
REFERENCES [dbo].[PhieuBanHang] ([MaPBH])
GO
ALTER TABLE [dbo].[HoaDonBan] CHECK CONSTRAINT [FK_HoaDonBan_PhieuBanHang]
GO
/****** Object:  ForeignKey [FK_KhachHang_CuaHang]    Script Date: 03/06/2014 21:35:35 ******/
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_CuaHang] FOREIGN KEY([Id_CH])
REFERENCES [dbo].[CuaHang] ([Id_CH])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_CuaHang]
GO
/****** Object:  ForeignKey [FK_KhachHang_KhuyenMai]    Script Date: 03/06/2014 21:35:35 ******/
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_KhuyenMai] FOREIGN KEY([Id_KM])
REFERENCES [dbo].[KhuyenMai] ([Id_KM])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_KhuyenMai]
GO
/****** Object:  ForeignKey [FK_NhanVien_BoPhan]    Script Date: 03/06/2014 21:35:36 ******/
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_BoPhan] FOREIGN KEY([Id_BP])
REFERENCES [dbo].[BoPhan] ([Id_BP])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_BoPhan]
GO
/****** Object:  ForeignKey [FK_NhanVien_CuaHang]    Script Date: 03/06/2014 21:35:36 ******/
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_CuaHang] FOREIGN KEY([ID_CH])
REFERENCES [dbo].[CuaHang] ([Id_CH])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_CuaHang]
GO
/****** Object:  ForeignKey [FK_NhanVien_NhanVien]    Script Date: 03/06/2014 21:35:36 ******/
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_NhanVien] FOREIGN KEY([NVQL])
REFERENCES [dbo].[NhanVien] ([Id_NV])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_NhanVien]
GO
/****** Object:  ForeignKey [FK_NhanVienInfo_NhanVien]    Script Date: 03/06/2014 21:35:36 ******/
ALTER TABLE [dbo].[NhanVienInfo]  WITH CHECK ADD  CONSTRAINT [FK_NhanVienInfo_NhanVien] FOREIGN KEY([Id_NVInfo])
REFERENCES [dbo].[NhanVien] ([Id_NV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NhanVienInfo] CHECK CONSTRAINT [FK_NhanVienInfo_NhanVien]
GO
/****** Object:  ForeignKey [FK_PhieuBanHang_KhachHang]    Script Date: 03/06/2014 21:35:36 ******/
ALTER TABLE [dbo].[PhieuBanHang]  WITH CHECK ADD  CONSTRAINT [FK_PhieuBanHang_KhachHang] FOREIGN KEY([ID_KH])
REFERENCES [dbo].[KhachHang] ([Id_KH])
GO
ALTER TABLE [dbo].[PhieuBanHang] CHECK CONSTRAINT [FK_PhieuBanHang_KhachHang]
GO
/****** Object:  ForeignKey [FK_PhieuBanHang_NhanVien]    Script Date: 03/06/2014 21:35:36 ******/
ALTER TABLE [dbo].[PhieuBanHang]  WITH CHECK ADD  CONSTRAINT [FK_PhieuBanHang_NhanVien] FOREIGN KEY([ID_NV])
REFERENCES [dbo].[NhanVien] ([Id_NV])
GO
ALTER TABLE [dbo].[PhieuBanHang] CHECK CONSTRAINT [FK_PhieuBanHang_NhanVien]
GO
/****** Object:  ForeignKey [FK_PhieuBanHang_NhanVien1]    Script Date: 03/06/2014 21:35:36 ******/
ALTER TABLE [dbo].[PhieuBanHang]  WITH CHECK ADD  CONSTRAINT [FK_PhieuBanHang_NhanVien1] FOREIGN KEY([ID_NV])
REFERENCES [dbo].[NhanVien] ([Id_NV])
GO
ALTER TABLE [dbo].[PhieuBanHang] CHECK CONSTRAINT [FK_PhieuBanHang_NhanVien1]
GO
/****** Object:  ForeignKey [FK_PhieuBanHang_PhieuBanHang]    Script Date: 03/06/2014 21:35:36 ******/
ALTER TABLE [dbo].[PhieuBanHang]  WITH CHECK ADD  CONSTRAINT [FK_PhieuBanHang_PhieuBanHang] FOREIGN KEY([MaPBH])
REFERENCES [dbo].[PhieuBanHang] ([MaPBH])
GO
ALTER TABLE [dbo].[PhieuBanHang] CHECK CONSTRAINT [FK_PhieuBanHang_PhieuBanHang]
GO
/****** Object:  ForeignKey [FK_PhieuBanHang_PhieuBanHang1]    Script Date: 03/06/2014 21:35:36 ******/
ALTER TABLE [dbo].[PhieuBanHang]  WITH CHECK ADD  CONSTRAINT [FK_PhieuBanHang_PhieuBanHang1] FOREIGN KEY([MaPBH])
REFERENCES [dbo].[PhieuBanHang] ([MaPBH])
GO
ALTER TABLE [dbo].[PhieuBanHang] CHECK CONSTRAINT [FK_PhieuBanHang_PhieuBanHang1]
GO
/****** Object:  ForeignKey [FK_PhieuNhapHang_NhaCC]    Script Date: 03/06/2014 21:35:36 ******/
ALTER TABLE [dbo].[PhieuNhapHang]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhapHang_NhaCC] FOREIGN KEY([Id_NCC])
REFERENCES [dbo].[NhaCC] ([Id_NCC])
GO
ALTER TABLE [dbo].[PhieuNhapHang] CHECK CONSTRAINT [FK_PhieuNhapHang_NhaCC]
GO
/****** Object:  ForeignKey [FK_PhieuNhapHang_NhanVien]    Script Date: 03/06/2014 21:35:36 ******/
ALTER TABLE [dbo].[PhieuNhapHang]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhapHang_NhanVien] FOREIGN KEY([Id_NV])
REFERENCES [dbo].[NhanVien] ([Id_NV])
GO
ALTER TABLE [dbo].[PhieuNhapHang] CHECK CONSTRAINT [FK_PhieuNhapHang_NhanVien]
GO
/****** Object:  ForeignKey [FK_SanPham_CuaHang]    Script Date: 03/06/2014 21:35:36 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_CuaHang] FOREIGN KEY([Id_CH])
REFERENCES [dbo].[CuaHang] ([Id_CH])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_CuaHang]
GO
/****** Object:  ForeignKey [FK_SanPham_DonViTinh]    Script Date: 03/06/2014 21:35:36 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_DonViTinh] FOREIGN KEY([Id_DVT])
REFERENCES [dbo].[DonViTinh] ([Id_DVT])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_DonViTinh]
GO
/****** Object:  ForeignKey [FK_SanPham_NhaSX]    Script Date: 03/06/2014 21:35:36 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSX] FOREIGN KEY([Id_NSX])
REFERENCES [dbo].[NhaSX] ([Id_NSX])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSX]
GO
/****** Object:  ForeignKey [FK_SanPham_NhomHang]    Script Date: 03/06/2014 21:35:36 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhomHang] FOREIGN KEY([Id_NH])
REFERENCES [dbo].[NhomHang] ([Id_NH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhomHang]
GO
/****** Object:  ForeignKey [FK_SanPham_SanPham]    Script Date: 03/06/2014 21:35:36 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_SanPham] FOREIGN KEY([Id_SP])
REFERENCES [dbo].[SanPham] ([Id_SP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_SanPham]
GO
