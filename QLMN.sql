USE [QLMN]
GO
/****** Object:  Table [dbo].[Hocphi]    Script Date: 10/25/2021 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hocphi](
	[Khoi] [nchar](10) NOT NULL,
	[Nam] [nchar](10) NOT NULL,
	[Hocphi] [float] NULL,
 CONSTRAINT [PK_Hocphi] PRIMARY KEY CLUSTERED 
(
	[Khoi] ASC,
	[Nam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 10/25/2021 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[Lop] [nchar](10) NOT NULL,
	[Khoi] [nchar](10) NULL,
 CONSTRAINT [PK_Lop] PRIMARY KEY CLUSTERED 
(
	[Lop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thongtintre]    Script Date: 10/25/2021 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thongtintre](
	[Matre] [nchar](10) NOT NULL,
	[Hotre] [nvarchar](50) NULL,
	[Tentre] [nvarchar](50) NULL,
	[Ngaysinh] [datetime] NULL,
	[Gioitinh] [nchar](10) NULL,
	[Tongiao] [nchar](10) NULL,
	[Lop] [nchar](10) NULL,
	[Dantoc] [nchar](10) NULL,
	[Diachi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Thongtintre] PRIMARY KEY CLUSTERED 
(
	[Matre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thucdon]    Script Date: 10/25/2021 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thucdon](
	[Thu] [nchar](10) NOT NULL,
	[Bua] [nchar](10) NOT NULL,
	[ThucDon] [nvarchar](50) NULL,
 CONSTRAINT [PK_Thucdon] PRIMARY KEY CLUSTERED 
(
	[Thu] ASC,
	[Bua] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Hocphi] ([Khoi], [Nam], [Hocphi]) VALUES (N'mầm3      ', N'2020      ', 2500000)
INSERT [dbo].[Hocphi] ([Khoi], [Nam], [Hocphi]) VALUES (N'mầm3      ', N'2021      ', 3000000)
INSERT [dbo].[Hocphi] ([Khoi], [Nam], [Hocphi]) VALUES (N'mầm4      ', N'2020      ', 3500000)
INSERT [dbo].[Hocphi] ([Khoi], [Nam], [Hocphi]) VALUES (N'mầm4      ', N'2021      ', 4000000)
INSERT [dbo].[Hocphi] ([Khoi], [Nam], [Hocphi]) VALUES (N'mầm5      ', N'2020      ', 4500000)
INSERT [dbo].[Hocphi] ([Khoi], [Nam], [Hocphi]) VALUES (N'mầm5      ', N'2021      ', 5000000)
GO
INSERT [dbo].[Lop] ([Lop], [Khoi]) VALUES (N'mam3k1    ', N'mầm3      ')
INSERT [dbo].[Lop] ([Lop], [Khoi]) VALUES (N'mam3k2    ', N'mầm3      ')
INSERT [dbo].[Lop] ([Lop], [Khoi]) VALUES (N'mam4k1    ', N'mầm4      ')
INSERT [dbo].[Lop] ([Lop], [Khoi]) VALUES (N'mam4k2    ', N'mầm4      ')
INSERT [dbo].[Lop] ([Lop], [Khoi]) VALUES (N'mam5k1    ', N'mầm5      ')
INSERT [dbo].[Lop] ([Lop], [Khoi]) VALUES (N'mam5k2    ', N'mầm5      ')
INSERT [dbo].[Lop] ([Lop], [Khoi]) VALUES (N'mam5k3    ', N'mầm5      ')
GO
INSERT [dbo].[Thongtintre] ([Matre], [Hotre], [Tentre], [Ngaysinh], [Gioitinh], [Tongiao], [Lop], [Dantoc], [Diachi]) VALUES (N'MT01      ', N'Nguyễn', N'Hạnh', CAST(N'2017-03-05T00:00:00.000' AS DateTime), N'Nữ        ', N'Không     ', N'mam5k1    ', N'Kinh      ', N'Hải Phòng')
INSERT [dbo].[Thongtintre] ([Matre], [Hotre], [Tentre], [Ngaysinh], [Gioitinh], [Tongiao], [Lop], [Dantoc], [Diachi]) VALUES (N'MT02      ', N'Trần', N'Hưng', CAST(N'2018-05-25T00:00:00.000' AS DateTime), N'Nam       ', N'Không     ', N'mam4k2    ', N'Kinh      ', N'Hải Phòng')
INSERT [dbo].[Thongtintre] ([Matre], [Hotre], [Tentre], [Ngaysinh], [Gioitinh], [Tongiao], [Lop], [Dantoc], [Diachi]) VALUES (N'MT03      ', N'Lê', N'Bình', CAST(N'2017-12-31T00:00:00.000' AS DateTime), N'Nam       ', N'không     ', N'mam3k1    ', N'Kinh      ', N'a')
INSERT [dbo].[Thongtintre] ([Matre], [Hotre], [Tentre], [Ngaysinh], [Gioitinh], [Tongiao], [Lop], [Dantoc], [Diachi]) VALUES (N'MT04      ', N'Bùi', N'Hoa', CAST(N'2018-07-05T00:00:00.000' AS DateTime), N'Nữ        ', N'Không     ', N'mam4k1    ', N'Kinh      ', N'Hải Phòng')
INSERT [dbo].[Thongtintre] ([Matre], [Hotre], [Tentre], [Ngaysinh], [Gioitinh], [Tongiao], [Lop], [Dantoc], [Diachi]) VALUES (N'MT05      ', N'Phạm', N'Huệ', CAST(N'2019-07-09T00:00:00.000' AS DateTime), N'Nữ        ', N'Không     ', N'mam3k1    ', N'Kinh      ', N'Hải Phòng')
INSERT [dbo].[Thongtintre] ([Matre], [Hotre], [Tentre], [Ngaysinh], [Gioitinh], [Tongiao], [Lop], [Dantoc], [Diachi]) VALUES (N'MT06      ', N'Nguyễn ', N'Hồng', CAST(N'2019-12-27T00:00:00.000' AS DateTime), N'Nữ        ', N'Không     ', N'mam3k2    ', N'Kinh      ', N'Hải Phòng')
GO
INSERT [dbo].[Thucdon] ([Thu], [Bua], [ThucDon]) VALUES (N'Ba        ', N'Trưa      ', N'Tôm rim thịt. Canh thịt bò nấu với bí đỏ. ')
INSERT [dbo].[Thucdon] ([Thu], [Bua], [ThucDon]) VALUES (N'Ba        ', N'Xế        ', N'Cháo hải sản. Sữa bột hỗ trợ phát triển')
INSERT [dbo].[Thucdon] ([Thu], [Bua], [ThucDon]) VALUES (N'Hai       ', N'Trưa      ', N'Cháo thịt bí xanh. Sinh tố xoài.')
INSERT [dbo].[Thucdon] ([Thu], [Bua], [ThucDon]) VALUES (N'Hai       ', N'Xế        ', N'Cháo cá. Sữa bột hỗ trợ phát triển chiều cao')
INSERT [dbo].[Thucdon] ([Thu], [Bua], [ThucDon]) VALUES (N'Năm       ', N'Trưa      ', N'Sườn rút xương sốt chua ngọt. Canh đậu cà chua')
INSERT [dbo].[Thucdon] ([Thu], [Bua], [ThucDon]) VALUES (N'Năm       ', N'Xế        ', N'Phở bò. Sữa bột hỗ trợ phát triể')
INSERT [dbo].[Thucdon] ([Thu], [Bua], [ThucDon]) VALUES (N'Sáu       ', N'Trưa      ', N'Cá quả hấp xì cầu. Canh sườn rau củ. Đu đủ chín')
INSERT [dbo].[Thucdon] ([Thu], [Bua], [ThucDon]) VALUES (N'Sáu       ', N'Xế        ', N'Bánh Crepe kiểu Pháp. Sữa bột hỗ trợ phát triển')
INSERT [dbo].[Thucdon] ([Thu], [Bua], [ThucDon]) VALUES (N'Tư        ', N'Trưa      ', N'Thịt gà xào nấm. Canh cá rau cải.')
INSERT [dbo].[Thucdon] ([Thu], [Bua], [ThucDon]) VALUES (N'Tư        ', N'Xế        ', N'Cháo cá hồi. Sữa bột phát triển')
GO
ALTER TABLE [dbo].[Thongtintre]  WITH CHECK ADD  CONSTRAINT [FK_Thongtintre_Lop] FOREIGN KEY([Lop])
REFERENCES [dbo].[Lop] ([Lop])
GO
ALTER TABLE [dbo].[Thongtintre] CHECK CONSTRAINT [FK_Thongtintre_Lop]
GO
/****** Object:  StoredProcedure [dbo].[allhocphi]    Script Date: 10/25/2021 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[allhocphi] 
AS
BEGIN
	
	SELECT * from Hocphi
END
GO
/****** Object:  StoredProcedure [dbo].[allkhoa]    Script Date: 10/25/2021 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[allkhoa] 
AS
BEGIN
	
	SELECT * from Lop
END
GO
/****** Object:  StoredProcedure [dbo].[allthucdon]    Script Date: 10/25/2021 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[allthucdon] 
AS
BEGIN
	
	SELECT * from Thucdon
END
GO
/****** Object:  StoredProcedure [dbo].[alltre]    Script Date: 10/25/2021 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[alltre]
AS
BEGIN
	SELECT * from thongtintre
END
GO
/****** Object:  StoredProcedure [dbo].[capnhattttre]    Script Date: 10/25/2021 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[capnhattttre] 
	
AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from Thongtintre
END
GO
/****** Object:  StoredProcedure [dbo].[deleteKhoi]    Script Date: 10/25/2021 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[deleteKhoi]
@lopp nvarchar(50)
AS
BEGIN
	delete from Lop where Lop = @lopp
END
GO
/****** Object:  StoredProcedure [dbo].[Deletettre]    Script Date: 10/25/2021 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[Deletettre]
@Matrep nchar(10)
AS
BEGIN
	delete from thongtintre
	where Matre =@Matrep
end
GO
/****** Object:  StoredProcedure [dbo].[DSSV]    Script Date: 10/25/2021 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DSSV]
AS
BEGIN
	
	SELECT Matre, Hotre, Tentre, Lop.Lop, khoi
	from Thongtintre, Lop
	Where Thongtintre.Lop=Lop.Lop
END
GO
/****** Object:  StoredProcedure [dbo].[getallkhoa]    Script Date: 10/25/2021 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getallkhoa]
	AS
BEGIN
	
	SELECT Lop.Khoi
	from Lop
END
GO
/****** Object:  StoredProcedure [dbo].[getalllop]    Script Date: 10/25/2021 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getalllop]
AS
BEGIN
	
	SELECT Lop.Lop
	from Lop
END
GO
/****** Object:  StoredProcedure [dbo].[getalltre]    Script Date: 10/25/2021 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getalltre]
AS
BEGIN
	
	SELECT Thongtintre.Matre
	from Thongtintre
	END
GO
/****** Object:  StoredProcedure [dbo].[insertkhoi]    Script Date: 10/25/2021 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertkhoi]
@lopp nvarchar(50),
@khoap nvarchar(50)
AS
BEGIN
		insert Lop(Lop,Khoi)
		values(@lopp,@khoap)
END
GO
/****** Object:  StoredProcedure [dbo].[Inserttre]    Script Date: 10/25/2021 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Inserttre]
	@masvp nchar(10),
	@hosvp nvarchar(50),
	@tensvp nvarchar(50),
	@ngaysinhp date,
	@gioitinhp nchar(10),
	@lop nchar(10),
	@diachip nvarchar(50),
	@dantocp nchar(10),
	@tongiaop  nchar(10)
AS
BEGIN
	insert into Thôngtintre(Masv,Hosv,Tensv,Ngaysinh,Gioitinh,Lop,Diachi,Dantoc,Tongiao)
	values (@masvp, @hosvp,@tensvp,@ngaysinhp,@gioitinhp,@lop,@diachip,@dantocp,@tongiaop)
END
GO
/****** Object:  StoredProcedure [dbo].[inserthocphi]    Script Date: 10/25/2021 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  PROCEDURE [dbo].[inserthocphi]
@khoip nvarchar(10),
@namp nvarchar(10),
@hocphip float
AS
BEGIN
insert into Hocphi(Khoi, Nam,Hocphi)
	values (@khoip, @namp,@hocphip)
END
GO
/****** Object:  StoredProcedure [dbo].[timkiemtttre]    Script Date: 10/25/2021 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[timkiemtttre]
@masvp nchar(10),
	@hosvp nvarchar(50),
	@tensvp nvarchar(50),
	@gioitinhp nchar(10),
	@diachip nvarchar(50)
AS
BEGIN
	SELECT Matre,Hotre,Tentre,Ngaysinh,Gioitinh,Thongtintre.Lop,Diachi,Dantoc,Tongiao, Khoi
	from Thongtintre, Lop
	where (Thongtintre.Lop = Lop.Lop) and ( Matre like @masvp or Hotre like @hosvp or Tentre like @tensvp or Gioitinh like @gioitinhp or Diachi like @diachip)
END
GO
/****** Object:  StoredProcedure [dbo].[timkimthucdon]    Script Date: 10/25/2021 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  PROCEDURE [dbo].[timkimthucdon]
@thup nvarchar(10)
AS
BEGIN
SELECT Thu
	from Thucdon
	where Thu like @thup
END
GO
/****** Object:  StoredProcedure [dbo].[updatehocphi]    Script Date: 10/25/2021 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  PROCEDURE [dbo].[updatehocphi]
@khoip nvarchar(10),
@namp nvarchar(10),
@hocphip float
AS
BEGIN
	update Hocphi
	set Hocphi = @hocphip
	where Khoi= @khoip and Nam =@namp
END
GO
/****** Object:  StoredProcedure [dbo].[updatekhoi]    Script Date: 10/25/2021 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updatekhoi]
@lopp nvarchar(50),
@khoap nvarchar(50)
AS
BEGIN
	update Lop
	set Khoi=@khoap
	where Lop= @lopp
END
GO
/****** Object:  StoredProcedure [dbo].[Updatetre]    Script Date: 10/25/2021 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Updatetre]
	@masvp nchar(10),
	@hosvp nvarchar(50),
	@tensvp nvarchar(50),
	@ngaysinhp date,
	@gioitinhp nchar(10),
	@lop nchar(10),
	@diachip nvarchar(50),
	@dantocp nchar(10),
	@tongiaop  nchar(10)
AS
BEGIN
	update Thongtintre
	set Hotre = @hosvp,
		Tentre = @tensvp,
		Ngaysinh = @ngaysinhp,
		Gioitinh = @gioitinhp, 
		Lop=@lop,
		Diachi=@diachip, 
		Dantoc=@dantocp, 
		Tongiao=@tongiaop
where Matre=@masvp
END
GO
