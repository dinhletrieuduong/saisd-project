/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     6/15/2020 7:49:10 PM                         */
/*==============================================================*/


alter table BANTHONGKEGOPY
   drop constraint FK_BANTHONG_REFERENCE_NHANVIEN;

alter table CHITIETDONDATHANG
   drop constraint FK_CHITIETD_REFERENCE_DONDATHA;

alter table CHITIETDONDATHANG
   drop constraint FK_CHITIETD_REFERENCE_SANPHAM3;

alter table CHITIETDONHANG
   drop constraint FK_CHITIETD_REFERENCE_DONTRAHA;

alter table CHITIETDONHANG
   drop constraint FK_CHITIETD_REFERENCE_SANPHAM;

alter table CHITIETDONHANG
   drop constraint FK_CHITIETD_REFERENCE_NHACUNGC;

alter table CHITIETDONHANG
   drop constraint FK_CHITIETD_REFERENCE_NHANVIEN;

alter table CHITIETDONNHAPHANG
   drop constraint FK_CHITIETD_REFERENCE_DONNHANH;

alter table CHITIETDONNHAPHANG
   drop constraint FK_CHITIETD_REFERENCE_SANPHAM2;

alter table CHITIETDONNHAPHANG
   drop constraint FK_CHITIETD_REFERENCE_NHACUNG2;

alter table DANHGIAGOPY
   drop constraint FK_DANHGIAG_REFERENCE_BANTHONG;

alter table DANHGIAGOPY
   drop constraint FK_DANHGIAG_REFERENCE_GOPY;

alter table DONDATHANG
   drop constraint FK_DOND_REFE_NHAN_GIAOHANG;

alter table DONDATHANG
   drop constraint FK_DOND_REFE_NHAN_THUQUY;

alter table DONNHANHANG
   drop constraint FK_DONN_REFE_NHAN_QUANLY;

alter table DONNHANHANG
   drop constraint FK_DONN_REFE_NHAN_NV;

alter table DONTRAHANG
   drop constraint FK_DONTRAHA_REFERENCE_NHANVIEN;

alter table GOPY
   drop constraint FK_GOPY_REFERENCE_SANPHAM;

alter table GOPY
   drop constraint FK_GOPY_REFERENCE_KHACHHAN;

alter table HOPDONGDANGTIN
   drop constraint FK_HOPDONGD_REFERENCE_SANPHAM;

alter table HOPDONGDANGTIN
   drop constraint FK_HOPDONGD_REFERENCE_DOITACDA;

alter table HOPDONGDANGTIN
   drop constraint FK_HOPDONGD_REFERENCE_NHANVIEN;

alter table SANPHAM
   drop constraint FK_SANPHAM_REFERENCE_DANHMUC;

alter table SANPHAMPHATTIN
   drop constraint FK_SANPHAMP_REFERENCE_SANPHAM;

alter table SANPHAMPHATTIN
   drop constraint FK_SANPHAMP_REFERENCE_DOITACPH;

alter table SANPHAMPHATTIN
   drop constraint FK_SANPHAMP_REFERENCE_NHANVIEN;

alter table TINNHANKHACHHANG
   drop constraint FK_TINNHANK_REFERENCE_SANPHAMP;

alter table TINNHANKHACHHANG
   drop constraint FK_TINNHANK_REFERENCE_KHACHHAN;

drop table BANTHONGKEGOPY cascade constraints;

drop table CHITIETDONDATHANG cascade constraints;

drop table CHITIETDONHANG cascade constraints;

drop table CHITIETDONNHAPHANG cascade constraints;

drop table DANHGIAGOPY cascade constraints;

drop table DANHMUC cascade constraints;

drop table DOITACDANGTIN cascade constraints;

drop table DOITACPHATTIN cascade constraints;

drop table DONDATHANG cascade constraints;

drop table DONNHANHANG cascade constraints;

drop table DONTRAHANG cascade constraints;

drop table GOPY cascade constraints;

drop table HOPDONGDANGTIN cascade constraints;

drop table KHACHHANG cascade constraints;

drop table NHACUNGCAP cascade constraints;

drop table NHANVIEN cascade constraints;

drop table SANPHAM cascade constraints;

drop table SANPHAMPHATTIN cascade constraints;

drop table TINNHANKHACHHANG cascade constraints;

/*==============================================================*/
/* Table: BANTHONGKEGOPY                                        */
/*==============================================================*/
create table BANTHONGKEGOPY 
(
   ID                   INTEGER              not null,
   IDNHANVIENBANHANG    INTEGER              not null,
   NGAYLAP              DATE                 not null,
   constraint PK_BANTHONGKEGOPY primary key (ID)
);

/*==============================================================*/
/* Table: CHITIETDONDATHANG                                     */
/*==============================================================*/
create table CHITIETDONDATHANG 
(
   ID                   INTEGER              not null,
   IDDONHANG            INTEGER              not null,
   IDSANPHAM            INTEGER              not null,
   SOLUONG              INTEGER              not null,
   constraint PK_CHITIETDONDATHANG primary key (ID)
);

/*==============================================================*/
/* Table: CHITIETDONHANG                                        */
/*==============================================================*/
create table CHITIETDONHANG 
(
   ID                   INTEGER              not null,
   IDNHACUNGCAP         INTEGER              not null,
   IDNVBANHANG          INTEGER              not null,
   IDSANPHAM            INTEGER              not null,
   SOLUONG              INTEGER              not null,
   IDDONTRAHANG         INTEGER              not null,
   constraint PK_CHITIETDONHANG primary key (ID)
);

/*==============================================================*/
/* Table: CHITIETDONNHAPHANG                                    */
/*==============================================================*/
create table CHITIETDONNHAPHANG 
(
   ID                   INTEGER              not null,
   IDDONNHAP            INTEGER              not null,
   IDSANPHAM            INTEGER              not null,
   IDNHACUNGCAP         INTEGER              not null,
   NGAYNHAP             DATE                 not null,
   SOLUONG              INTEGER              not null,
   constraint PK_CHITIETDONNHAPHANG primary key (ID)
);

/*==============================================================*/
/* Table: DANHGIAGOPY                                           */
/*==============================================================*/
create table DANHGIAGOPY 
(
   IDBANTHONGKE         INTEGER              not null,
   IDGOPY               INTEGER              not null,
   DANHGIA              SMALLINT             not null,
   constraint PK_DANHGIAGOPY primary key (IDBANTHONGKE, IDGOPY)
);

/*==============================================================*/
/* Table: DANHMUC                                               */
/*==============================================================*/
create table DANHMUC 
(
   ID                   INTEGER              not null,
   TEN                  CHAR(50)             not null,
   COLUMN_3             CHAR(10)             not null,
   constraint PK_DANHMUC primary key (ID)
);

/*==============================================================*/
/* Table: DOITACDANGTIN                                         */
/*==============================================================*/
create table DOITACDANGTIN 
(
   ID                   INTEGER              not null,
   DIACHI               CHAR(100)            not null,
   TEN                  CHAR(50)             not null,
   constraint PK_DOITACDANGTIN primary key (ID)
);

/*==============================================================*/
/* Table: DOITACPHATTIN                                         */
/*==============================================================*/
create table DOITACPHATTIN 
(
   ID                   INTEGER              not null,
   DIACHI               CHAR(100)            not null,
   TEN                  CHAR(50)             not null,
   constraint PK_DOITACPHATTIN primary key (ID)
);

/*==============================================================*/
/* Table: DONDATHANG                                            */
/*==============================================================*/
create table DONDATHANG 
(
   ID                   INTEGER              not null,
   IDNVGIAOHANG         INTEGER              not null,
   IDTHUQUY             INTEGER              not null,
   NGAYGIAOHANG         INTEGER              not null,
   NGAYLAP              INTEGER              not null,
   TONGTIEN             INTEGER              not null,
   XACNHANTHANHTOAN     SMALLINT             not null,
   constraint PK_DONDATHANG primary key (ID)
);

/*==============================================================*/
/* Table: DONNHANHANG                                           */
/*==============================================================*/
create table DONNHANHANG 
(
   ID                   INTEGER              not null,
   LYDO                 CHAR(50),
   TONGTIEN             INTEGER,
   IDNHANVIEN           INTEGER,
   IDQUANLY             INTEGER,
   constraint PK_DONNHANHANG primary key (ID)
);

/*==============================================================*/
/* Table: DONTRAHANG                                            */
/*==============================================================*/
create table DONTRAHANG 
(
   ID                   INTEGER              not null,
   IDQUANLY             INTEGER              not null,
   LYDOTRA              INTEGER              not null,
   TONGTIEN             INTEGER              not null,
   constraint PK_DONTRAHANG primary key (ID)
);

/*==============================================================*/
/* Table: GOPY                                                  */
/*==============================================================*/
create table GOPY 
(
   ID                   INTEGER              not null,
   IDKHACHHANG          INTEGER              not null,
   IDSANPHAM            INTEGER              not null,
   NGAY                 DATE                 not null,
   NOIDUNG              CHAR(1000)           not null,
   constraint PK_GOPY primary key (ID)
);

/*==============================================================*/
/* Table: HOPDONGDANGTIN                                        */
/*==============================================================*/
create table HOPDONGDANGTIN 
(
   ID                   INTEGER              not null,
   IDSANPHAM            INTEGER              not null,
   IDDOITAC             INTEGER              not null,
   NGAYLAP              DATE                 not null,
   HETHANG              DATE                 not null,
   VITRIDANG            INTEGER              not null,
   IDNHANVIENDANGTIN    INTEGER,
   constraint PK_HOPDONGDANGTIN primary key (ID)
);

/*==============================================================*/
/* Table: KHACHHANG                                             */
/*==============================================================*/
create table KHACHHANG 
(
   ID                   INTEGER              not null,
   HOTEN                CHAR(50)             not null,
   EMAIL                CHAR(100)            not null,
   SODIENTHOAI          INTEGER              not null,
   DIACHI               CHAR(100)            not null,
   BLOCKED              SMALLINT             not null,
   constraint PK_KHACHHANG primary key (ID)
);

/*==============================================================*/
/* Table: NHACUNGCAP                                            */
/*==============================================================*/
create table NHACUNGCAP 
(
   ID                   INTEGER              not null,
   TEN                  CHAR(50)             not null,
   DIACHI               CHAR(100)            not null,
   constraint PK_NHACUNGCAP primary key (ID)
);

/*==============================================================*/
/* Table: NHANVIEN                                              */
/*==============================================================*/
create table NHANVIEN 
(
   ID                   INTEGER              not null,
   HOTEN                CHAR(50)             not null,
   DIACHI               CHAR(100)            not null,
   SODIENTHOAI          INTEGER              not null,
   CHUCVU               CHAR(50)             not null,
   constraint PK_NHANVIEN primary key (ID)
);

/*==============================================================*/
/* Table: SANPHAM                                               */
/*==============================================================*/
create table SANPHAM 
(
   ID                   INTEGER              not null,
   DONGIA               INTEGER              not null,
   LOAI                 INTEGER              not null,
   SLBILOI              INTEGER              not null,
   SLTOIDA              INTEGER              not null,
   SLTONKHO             INTEGER              not null,
   TENSANPHAM           CHAR(10)             not null,
   constraint PK_SANPHAM primary key (ID)
);

/*==============================================================*/
/* Table: SANPHAMPHATTIN                                        */
/*==============================================================*/
create table SANPHAMPHATTIN 
(
   ID                   INTEGER              not null,
   IDDOITAC             INTEGER              not null,
   IDNHANVIENDANGTIN    INTEGER              not null,
   IDSANPHAM            INTEGER              not null,
   NGAYLAP              DATE                 not null,
   NOIDUNG              CHAR(1000)           not null,
   constraint PK_SANPHAMPHATTIN primary key (ID)
);

/*==============================================================*/
/* Table: TINNHANKHACHHANG                                      */
/*==============================================================*/
create table TINNHANKHACHHANG 
(
   ID                   INTEGER              not null,
   IDKHACHHANG          INTEGER              not null,
   IDSPPHATTIN          INTEGER              not null,
   constraint PK_TINNHANKHACHHANG primary key (ID)
);

alter table BANTHONGKEGOPY
   add constraint FK_BANTHONG_REFERENCE_NHANVIEN foreign key (IDNHANVIENBANHANG)
      references NHANVIEN (ID);

alter table CHITIETDONDATHANG
   add constraint FK_CHITIETD_REFERENCE_DONDATHA foreign key (IDDONHANG)
      references DONDATHANG (ID);

alter table CHITIETDONDATHANG
   add constraint FK_CHITIETD_REFERENCE_SANPHAM3 foreign key (IDSANPHAM)
      references SANPHAM (ID);

alter table CHITIETDONHANG
   add constraint FK_CHITIETD_REFERENCE_DONTRAHA foreign key (IDDONTRAHANG)
      references DONTRAHANG (ID);

alter table CHITIETDONHANG
   add constraint FK_CHITIETD_REFERENCE_SANPHAM foreign key (IDSANPHAM)
      references SANPHAM (ID);

alter table CHITIETDONHANG
   add constraint FK_CHITIETD_REFERENCE_NHACUNGC foreign key (IDNHACUNGCAP)
      references NHACUNGCAP (ID);

alter table CHITIETDONHANG
   add constraint FK_CHITIETD_REFERENCE_NHANVIEN foreign key (IDNVBANHANG)
      references NHANVIEN (ID);

alter table CHITIETDONNHAPHANG
   add constraint FK_CHITIETD_REFERENCE_DONNHANH foreign key (IDDONNHAP)
      references DONNHANHANG (ID);

alter table CHITIETDONNHAPHANG
   add constraint FK_CHITIETD_REFERENCE_SANPHAM2 foreign key (IDSANPHAM)
      references SANPHAM (ID);

alter table CHITIETDONNHAPHANG
   add constraint FK_CHITIETD_REFERENCE_NHACUNG2 foreign key (IDNHACUNGCAP)
      references NHACUNGCAP (ID);

alter table DANHGIAGOPY
   add constraint FK_DANHGIAG_REFERENCE_BANTHONG foreign key (IDBANTHONGKE)
      references BANTHONGKEGOPY (ID);

alter table DANHGIAGOPY
   add constraint FK_DANHGIAG_REFERENCE_GOPY foreign key (IDGOPY)
      references GOPY (ID);

alter table DONDATHANG
   add constraint FK_DOND_REFE_NHAN_GIAOHANG foreign key (IDNVGIAOHANG)
      references NHANVIEN (ID);

alter table DONDATHANG
   add constraint FK_DOND_REFE_NHAN_THUQUY foreign key (IDTHUQUY)
      references NHANVIEN (ID);

alter table DONNHANHANG
   add constraint FK_DONN_REFE_NHAN_QUANLY foreign key (IDQUANLY)
      references NHANVIEN (ID);

alter table DONNHANHANG
   add constraint FK_DONN_REFE_NHAN_NV foreign key (IDNHANVIEN)
      references NHANVIEN (ID);

alter table DONTRAHANG
   add constraint FK_DONTRAHA_REFERENCE_NHANVIEN foreign key (IDQUANLY)
      references NHANVIEN (ID);

alter table GOPY
   add constraint FK_GOPY_REFERENCE_SANPHAM foreign key (IDSANPHAM)
      references SANPHAM (ID);

alter table GOPY
   add constraint FK_GOPY_REFERENCE_KHACHHAN foreign key (IDKHACHHANG)
      references KHACHHANG (ID);

alter table HOPDONGDANGTIN
   add constraint FK_HOPDONGD_REFERENCE_SANPHAM foreign key (IDSANPHAM)
      references SANPHAM (ID);

alter table HOPDONGDANGTIN
   add constraint FK_HOPDONGD_REFERENCE_DOITACDA foreign key (IDDOITAC)
      references DOITACDANGTIN (ID);

alter table HOPDONGDANGTIN
   add constraint FK_HOPDONGD_REFERENCE_NHANVIEN foreign key (IDNHANVIENDANGTIN)
      references NHANVIEN (ID);

alter table SANPHAM
   add constraint FK_SANPHAM_REFERENCE_DANHMUC foreign key (LOAI)
      references DANHMUC (ID);

alter table SANPHAMPHATTIN
   add constraint FK_SANPHAMP_REFERENCE_SANPHAM foreign key (IDSANPHAM)
      references SANPHAM (ID);

alter table SANPHAMPHATTIN
   add constraint FK_SANPHAMP_REFERENCE_DOITACPH foreign key (IDDOITAC)
      references DOITACPHATTIN (ID);

alter table SANPHAMPHATTIN
   add constraint FK_SANPHAMP_REFERENCE_NHANVIEN foreign key (IDNHANVIENDANGTIN)
      references NHANVIEN (ID);

alter table TINNHANKHACHHANG
   add constraint FK_TINNHANK_REFERENCE_SANPHAMP foreign key (IDSPPHATTIN)
      references SANPHAMPHATTIN (ID);

alter table TINNHANKHACHHANG
   add constraint FK_TINNHANK_REFERENCE_KHACHHAN foreign key (IDKHACHHANG)
      references KHACHHANG (ID);

