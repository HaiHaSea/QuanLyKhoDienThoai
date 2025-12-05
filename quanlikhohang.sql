-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 14, 2025 lúc 10:19 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlikhohang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctkiemke`
--

CREATE TABLE `ctkiemke` (
  `maphieukiemmke` int(11) NOT NULL COMMENT 'Mã phiếu kiểm kê',
  `masanpham` int(11) NOT NULL COMMENT 'Mã sản phẩm',
  `soluong` int(11) NOT NULL,
  `chenhlech` int(11) NOT NULL,
  `ghichu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctphieunhap`
--

CREATE TABLE `ctphieunhap` (
  `maphieunhap` int(11) NOT NULL,
  `maphienbansp` int(11) NOT NULL DEFAULT 0,
  `soluong` int(11) NOT NULL DEFAULT 0,
  `dongia` int(11) NOT NULL DEFAULT 0,
  `hinhthucnhap` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ctphieunhap`
--

INSERT INTO `ctphieunhap` (`maphieunhap`, `maphienbansp`, `soluong`, `dongia`, `hinhthucnhap`) VALUES
(1, 4, 10, 15000000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctphieuxuat`
--

CREATE TABLE `ctphieuxuat` (
  `maphieuxuat` int(11) NOT NULL,
  `maphienbansp` int(11) NOT NULL DEFAULT 0,
  `soluong` int(11) NOT NULL DEFAULT 0,
  `dongia` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctquyen`
--

CREATE TABLE `ctquyen` (
  `manhomquyen` int(11) NOT NULL,
  `machucnang` varchar(50) NOT NULL,
  `hanhdong` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ctquyen`
--

INSERT INTO `ctquyen` (`manhomquyen`, `machucnang`, `hanhdong`) VALUES
(1, 'khachhang', 'create'),
(1, 'khachhang', 'delete'),
(1, 'khachhang', 'update'),
(1, 'khachhang', 'view'),
(1, 'khuvuckho', 'create'),
(1, 'khuvuckho', 'delete'),
(1, 'khuvuckho', 'update'),
(1, 'khuvuckho', 'view'),
(1, 'nhacungcap', 'create'),
(1, 'nhacungcap', 'delete'),
(1, 'nhacungcap', 'update'),
(1, 'nhacungcap', 'view'),
(1, 'nhanvien', 'create'),
(1, 'nhanvien', 'delete'),
(1, 'nhanvien', 'update'),
(1, 'nhanvien', 'view'),
(1, 'nhaphang', 'create'),
(1, 'nhaphang', 'delete'),
(1, 'nhaphang', 'update'),
(1, 'nhaphang', 'view'),
(1, 'nhomquyen', 'create'),
(1, 'nhomquyen', 'delete'),
(1, 'nhomquyen', 'update'),
(1, 'nhomquyen', 'view'),
(1, 'sanpham', 'create'),
(1, 'sanpham', 'delete'),
(1, 'sanpham', 'update'),
(1, 'sanpham', 'view'),
(1, 'taikhoan', 'create'),
(1, 'taikhoan', 'delete'),
(1, 'taikhoan', 'update'),
(1, 'taikhoan', 'view'),
(1, 'thongke', 'create'),
(1, 'thongke', 'delete'),
(1, 'thongke', 'update'),
(1, 'thongke', 'view'),
(1, 'thuoctinh', 'create'),
(1, 'thuoctinh', 'delete'),
(1, 'thuoctinh', 'update'),
(1, 'thuoctinh', 'view'),
(1, 'xuathang', 'create'),
(1, 'xuathang', 'delete'),
(1, 'xuathang', 'update'),
(1, 'xuathang', 'view'),
(2, 'khachhang', 'view'),
(2, 'khuvuckho', 'create'),
(2, 'khuvuckho', 'delete'),
(2, 'khuvuckho', 'update'),
(2, 'nhacungcap', 'create'),
(2, 'nhacungcap', 'delete'),
(2, 'nhacungcap', 'update'),
(2, 'nhanvien', 'view'),
(2, 'nhaphang', 'create'),
(2, 'nhaphang', 'delete'),
(2, 'nhaphang', 'update'),
(2, 'nhomquyen', 'view'),
(2, 'sanpham', 'create'),
(2, 'sanpham', 'delete'),
(2, 'sanpham', 'update'),
(2, 'taikhoan', 'view'),
(2, 'thongke', 'view'),
(2, 'thuoctinh', 'view'),
(2, 'xuathang', 'view');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctsanpham`
--

CREATE TABLE `ctsanpham` (
  `maimei` varchar(255) NOT NULL DEFAULT 'AUTO_INCREMENT' COMMENT 'Mã imei của sản phẩm',
  `maphienbansp` int(11) NOT NULL,
  `maphieunhap` int(11) NOT NULL,
  `maphieuxuat` int(11) DEFAULT NULL,
  `tinhtrang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ctsanpham`
--

INSERT INTO `ctsanpham` (`maimei`, `maphienbansp`, `maphieunhap`, `maphieuxuat`, `tinhtrang`) VALUES
('358736109384715', 4, 1, NULL, 1),
('358736109384716', 4, 1, NULL, 1),
('358736109384717', 4, 1, NULL, 1),
('358736109384718', 4, 1, NULL, 1),
('358736109384719', 4, 1, NULL, 1),
('358736109384720', 4, 1, NULL, 1),
('358736109384721', 4, 1, NULL, 1),
('358736109384722', 4, 1, NULL, 1),
('358736109384723', 4, 1, NULL, 1),
('358736109384724', 4, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmucchucnang`
--

CREATE TABLE `danhmucchucnang` (
  `machucnang` varchar(50) NOT NULL,
  `tenchucnang` varchar(255) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmucchucnang`
--

INSERT INTO `danhmucchucnang` (`machucnang`, `tenchucnang`, `trangthai`) VALUES
('khachhang', 'Quản lý khách hàng', 0),
('khuvuckho', 'Quản lý khu vực kho', 0),
('nhacungcap', 'Quản lý nhà cung cấp', 0),
('nhanvien', 'Quản lý nhân viên', 0),
('nhaphang', 'Quản lý nhập hàng', 0),
('nhomquyen', 'Quản lý nhóm quyền', 0),
('sanpham', 'Quản lý sản phẩm', 0),
('taikhoan', 'Quản lý tài khoản', 0),
('thongke', 'Quản lý thống kê', 0),
('thuoctinh', 'Quản lý thuộc tính', 0),
('xuathang', 'Quản lý xuất hàng', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dungluongram`
--

CREATE TABLE `dungluongram` (
  `madlram` int(11) NOT NULL,
  `kichthuocram` int(11) DEFAULT NULL,
  `trangthai` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `dungluongram`
--

INSERT INTO `dungluongram` (`madlram`, `kichthuocram`, `trangthai`) VALUES
(1, 2, 1),
(2, 3, 1),
(3, 4, 1),
(4, 6, 1),
(5, 8, 1),
(6, 12, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dungluongrom`
--

CREATE TABLE `dungluongrom` (
  `madlrom` int(11) NOT NULL,
  `kichthuocrom` int(11) DEFAULT NULL,
  `trangthai` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `dungluongrom`
--

INSERT INTO `dungluongrom` (`madlrom`, `kichthuocrom`, `trangthai`) VALUES
(1, 32, 1),
(2, 64, 1),
(3, 128, 1),
(4, 256, 1),
(5, 512, 1),
(6, 1024, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hedieuhanh`
--

CREATE TABLE `hedieuhanh` (
  `mahedieuhanh` int(11) NOT NULL,
  `tenhedieuhanh` varchar(255) NOT NULL,
  `trangthai` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hedieuhanh`
--

INSERT INTO `hedieuhanh` (`mahedieuhanh`, `tenhedieuhanh`, `trangthai`) VALUES
(1, 'Android', 1),
(2, 'IOS', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `makh` int(11) NOT NULL,
  `tenkhachhang` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `sdt` varchar(255) NOT NULL,
  `trangthai` int(11) NOT NULL,
  `ngaythamgia` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuvuckho`
--

CREATE TABLE `khuvuckho` (
  `makhuvuc` int(11) NOT NULL,
  `tenkhuvuc` varchar(255) NOT NULL,
  `ghichu` varchar(255) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khuvuckho`
--

INSERT INTO `khuvuckho` (`makhuvuc`, `tenkhuvuc`, `ghichu`, `trangthai`) VALUES
(1, 'Kho Hà Nội', 'Kho tổng phân phối cho các tỉnh miền Bắc', 1),
(2, 'Kho Đà Nẵng', 'XiaomiKho trung chuyển cho các tỉnh miền Trung và Tây Nguyên', 1),
(3, 'Kho TP. Hồ Chí Minh', 'Kho lớn nhất, phục vụ toàn khu vực miền Nam', 1),
(4, 'Kho Cần Thơ', 'Kho phục vụ các tỉnh miền Tây Nam Bộ', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mausac`
--

CREATE TABLE `mausac` (
  `mamau` int(11) NOT NULL,
  `tenmau` varchar(50) NOT NULL DEFAULT '0',
  `trangthai` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `mausac`
--

INSERT INTO `mausac` (`mamau`, `tenmau`, `trangthai`) VALUES
(1, 'Xanh', 1),
(2, 'Đỏ', 1),
(3, 'Vàng', 1),
(4, 'Bạc', 1),
(5, 'Hồng', 1),
(6, 'Đen', 1),
(7, 'Xanh ngọc', 1),
(8, 'Tím', 1),
(9, 'Xanh dương', 1),
(10, 'Xanh lá', 1),
(11, 'Cam', 1),
(12, 'Xám', 1),
(13, 'Trắng', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `manhacungcap` int(11) NOT NULL,
  `tennhacungcap` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sdt` varchar(255) NOT NULL,
  `trangthai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`manhacungcap`, `tennhacungcap`, `diachi`, `email`, `sdt`, `trangthai`) VALUES
(1, 'Công Ty TNHH Thế Giới Di Động', ' Phòng 6.5, Tầng6, Tòa Nhà E. Town 2, 364 Cộng Hòa, P. 13, Q. Tân Bình, Tp. Hồ Chí Minh', 'lienhe@thegioididong.com', '02835100100', 1),
(2, 'Công ty Vivo Việt Nam', 'Số 79 đường số 6, Hưng Phước 4, Phú Mỹ Hưng, quận 7, TPHCM', 'contact@paviet.vn', '19009477', 1),
(3, 'Công Ty TNHH Bao La', '8/38 Đinh Bô Lĩnh, P.24, Q. Bình Thạnh, Tp. Hồ Chí Minh', 'contact@baola.vn', '02835119060', 1),
(4, 'Công Ty Nokia', 'Phòng 703, Tầng7, Tòa Nhà Metropolitan, 235 Đồng Khởi, P. Bến Nghé, Q. 1, Tp. Hồ Chí Minh (TPHCM)', 'chau.nguyen@nokia.com', '02838236894', 1),
(5, 'Hệ Thống Phân Phối Chính Hãng Xiaomi', '261 Lê Lợi, P. Lê Lợi, Q. Ngô Quyền, Tp. Hải Phòng', 'info@mihome.vn', '0365888866', 1),
(6, 'Công Ty Samsung Việt Nam', 'Tòa nhà tài chính Bitexco, 2 Hải Triều, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh', 'contact@samsung.vn', '0988788456', 1),
(7, 'Công ty Oppo Việt Nam', '27 Đ. Nguyễn Trung Trực, Phường Bến Thành, Quận 1, Thành phố Hồ Chí Minh', 'oppovietnam@oppo.vn', '0456345234', 1),
(8, 'Apple Store', '29 Liễu Giai, phường Ngọc Khánh, quận Ba Đình, Hà Nội', 'apple@gmail.com', '18001127', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `manv` int(11) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `gioitinh` int(11) NOT NULL,
  `ngaysinh` date NOT NULL,
  `sdt` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`manv`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `email`, `trangthai`) VALUES
(1, 'Phạm Xuân Trung', 1, '2003-10-10', '0328624761', 'phamxuantrung123d@gmail.com', 1),
(2, 'Phạm Thị Hải Hà', 0, '2004-08-14', '0364759153', 'haiha1567@gmail.com', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhomquyen`
--

CREATE TABLE `nhomquyen` (
  `manhomquyen` int(11) NOT NULL,
  `tennhomquyen` varchar(255) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhomquyen`
--

INSERT INTO `nhomquyen` (`manhomquyen`, `tennhomquyen`, `trangthai`) VALUES
(1, 'Quản lý kho', 1),
(2, 'Nhân viên nhập hàng', 1),
(3, 'Nhân viên xuất hàng', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phienbansanpham`
--

CREATE TABLE `phienbansanpham` (
  `maphienbansp` int(11) NOT NULL,
  `masp` int(11) DEFAULT NULL,
  `rom` int(11) DEFAULT NULL,
  `ram` int(11) DEFAULT 0,
  `mausac` int(11) DEFAULT NULL,
  `gianhap` int(11) DEFAULT NULL,
  `giaxuat` int(11) DEFAULT NULL,
  `soluongton` int(11) DEFAULT 0,
  `trangthai` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phienbansanpham`
--

INSERT INTO `phienbansanpham` (`maphienbansp`, `masp`, `rom`, `ram`, `mausac`, `gianhap`, `giaxuat`, `soluongton`, `trangthai`) VALUES
(1, 1, 1, 1, 1, 5000000, 5500000, 0, 1),
(2, 1, 3, 4, 1, 6000000, 6500000, 0, 1),
(3, 2, 3, 5, 1, 7000000, 7800000, 0, 1),
(4, 3, 3, 3, 5, 15000000, 16500000, 10, 1),
(5, 3, 3, 3, 6, 15000000, 16500000, 0, 1),
(6, 3, 3, 3, 1, 15500000, 17000000, 0, 1),
(7, 4, 1, 1, 1, 2000000, 2890000, 0, 1),
(8, 4, 1, 1, 1, 2000000, 2890000, 0, 1),
(9, 4, 1, 1, 1, 2000000, 2890000, 0, 1),
(10, 4, 1, 1, 6, 2000000, 2890000, 0, 1),
(11, 4, 2, 1, 6, 2500000, 3390000, 0, 1),
(12, 4, 2, 1, 1, 2500000, 3390000, 0, 1),
(13, 5, 3, 5, 8, 8000000, 9000000, 0, 1),
(14, 5, 3, 5, 6, 8000000, 9000000, 0, 1),
(15, 5, 3, 5, 1, 8000000, 9000000, 0, 1),
(16, 5, 4, 5, 1, 9000000, 10000000, 0, 1),
(17, 5, 4, 5, 6, 9000000, 10000000, 0, 1),
(18, 5, 4, 5, 8, 9000000, 10000000, 0, 1),
(19, 6, 3, 3, 9, 3000000, 4100000, 0, 1),
(20, 6, 3, 3, 6, 3000000, 4100000, 0, 1),
(21, 6, 3, 4, 6, 3200000, 4400000, 0, 1),
(22, 6, 3, 4, 9, 3200000, 4400000, 0, 1),
(23, 7, 3, 5, 9, 5000000, 5790000, 0, 1),
(24, 7, 3, 5, 10, 5000000, 5790000, 0, 1),
(25, 7, 3, 3, 9, 4000000, 4890000, 0, 1),
(26, 7, 3, 3, 10, 4000000, 4890000, 0, 1),
(27, 7, 3, 5, 12, 5000000, 5790000, 0, 1),
(28, 7, 3, 3, 12, 4000000, 4890000, 0, 1),
(29, 8, 2, 3, 9, 2000000, 2990000, 0, 1),
(30, 8, 2, 3, 10, 2000000, 2990000, 0, 1),
(31, 8, 2, 3, 12, 2000000, 2990000, 0, 1),
(32, 8, 3, 3, 9, 2200000, 3290000, 0, 1),
(33, 8, 3, 3, 10, 2200000, 3290000, 0, 1),
(34, 8, 3, 3, 12, 2200000, 3290000, 0, 1),
(35, 9, 4, 5, 10, 8200000, 9500000, 0, 1),
(36, 9, 4, 5, 9, 8200000, 9500000, 0, 1),
(37, 10, 3, 3, 11, 3600000, 4700000, 0, 1),
(38, 10, 3, 3, 6, 3600000, 4700000, 0, 1),
(39, 10, 3, 3, 9, 3600000, 4700000, 0, 1),
(40, 10, 3, 4, 11, 4100000, 5200000, 0, 1),
(41, 10, 3, 4, 6, 4100000, 5200000, 0, 1),
(42, 10, 3, 4, 9, 4100000, 5200000, 0, 1),
(43, 11, 4, 5, 6, 5200000, 6400000, 0, 1),
(44, 11, 4, 5, 13, 5200000, 6400000, 0, 1),
(45, 12, 2, 3, 13, 2500000, 3000000, 0, 1),
(46, 12, 2, 3, 9, 2500000, 3000000, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieubaohanh`
--

CREATE TABLE `phieubaohanh` (
  `maphieubaohanh` int(11) NOT NULL,
  `maimei` varchar(255) NOT NULL,
  `lydo` varchar(50) NOT NULL,
  `thoigian` datetime NOT NULL DEFAULT curdate(),
  `thoigiantra` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieudoi`
--

CREATE TABLE `phieudoi` (
  `maphieudoi` tinyint(4) NOT NULL DEFAULT 0,
  `maimei` varchar(255) NOT NULL,
  `lydo` varchar(255) NOT NULL,
  `thoigian` date DEFAULT curdate(),
  `nguoitao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieukiemke`
--

CREATE TABLE `phieukiemke` (
  `maphieu` int(11) NOT NULL,
  `thoigian` date NOT NULL DEFAULT curdate(),
  `nguoitaophieukiemke` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `phieunhap` (
  `maphieunhap` int(11) NOT NULL,
  `thoigian` datetime DEFAULT current_timestamp(),
  `manhacungcap` int(11) NOT NULL,
  `nguoitao` int(11) NOT NULL,
  `tongtien` bigint(20) NOT NULL DEFAULT 0,
  `trangthai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phieunhap`
--

INSERT INTO `phieunhap` (`maphieunhap`, `thoigian`, `manhacungcap`, `nguoitao`, `tongtien`, `trangthai`) VALUES
(1, '2025-03-24 23:32:56', 8, 1, 150000000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieutra`
--

CREATE TABLE `phieutra` (
  `maphieutra` int(11) NOT NULL,
  `maimei` varchar(255) NOT NULL,
  `lydo` varchar(255) NOT NULL,
  `thoigian` date DEFAULT curdate(),
  `nguoitao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `maphieuxuat` int(11) NOT NULL,
  `thoigian` datetime NOT NULL DEFAULT current_timestamp(),
  `tongtien` bigint(20) DEFAULT NULL,
  `nguoitaophieuxuat` int(11) DEFAULT NULL,
  `makh` int(11) DEFAULT NULL,
  `trangthai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` int(11) NOT NULL,
  `tensp` varchar(255) DEFAULT NULL,
  `hinhanh` varchar(255) DEFAULT NULL,
  `xuatxu` int(11) DEFAULT NULL,
  `chipxuly` varchar(255) DEFAULT NULL,
  `dungluongpin` int(11) DEFAULT NULL,
  `kichthuocman` double DEFAULT NULL,
  `hedieuhanh` int(11) DEFAULT NULL,
  `phienbanhdh` int(11) DEFAULT NULL,
  `camerasau` varchar(255) DEFAULT NULL,
  `cameratruoc` varchar(255) DEFAULT NULL,
  `thoigianbaohanh` int(11) DEFAULT NULL,
  `thuonghieu` int(11) DEFAULT NULL,
  `khuvuckho` int(11) DEFAULT NULL,
  `soluongton` int(11) DEFAULT 0,
  `trangthai` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`masp`, `tensp`, `hinhanh`, `xuatxu`, `chipxuly`, `dungluongpin`, `kichthuocman`, `hedieuhanh`, `phienbanhdh`, `camerasau`, `cameratruoc`, `thoigianbaohanh`, `thuonghieu`, `khuvuckho`, `soluongton`, `trangthai`) VALUES
(1, 'Vivo Y22s', '92vivo-y22s-vang-thumb-600x600.jpg', 1, 'SnapDragon 680', 5000, 6.55, 1, 12, 'Chính 50 MP & Phụ 2 MP', '8 MP', 24, 4, 1, 0, 1),
(2, 'Samsung Galaxy A53 5G', '57samsung-galaxy-a53-cam-thumb-1-600x600.jpg', 1, 'Exynos 1280', 5000, 6.5, 1, 12, 'Chính 64 MP & Phụ 12 MP, 5 MP, 5 MP', '32 MP', 24, 3, 2, 0, 1),
(3, 'iPhone 13 mini', '997iphone-13-mini-pink-1-600x600.jpg', 4, ' Apple A15 Bionic', 2438, 5.4, 2, 15, '2 camera 12 MP', ' 12 MP', 36, 1, 1, 10, 1),
(4, 'Samsung Galaxy A54 5G', '399samsung-galaxy-a54-5g-tim-thumb-600x600.jpg', 2, ' Exynos 1380 8 nhân', 5000, 6.4, 1, 12, 'Chính 50 MP & Phụ 12 MP, 5 MP', ' 32 MP', 24, 3, 3, 0, 1),
(5, 'Samsung Galaxy A13', '337samsung-galaxy-a14-black-thumb-600x600.jpg', 1, 'Exynos 850', 5000, 6.6, 1, 12, 'Chính 50 MP & Phụ 5 MP, 2 MP, 2 MP', '8 MP', 24, 3, 2, 0, 1),
(6, 'Xiaomi Redmi Note 12', '717xiaomi-redmi-note-12-4g-mono-den-600x600.jpg', 1, ' Snapdragon 685 8 nhân', 5000, 6.67, 1, 12, 'Chính 50 MP & Phụ 8 MP, 2 MP', '13 MP', 24, 2, 4, 0, 1),
(7, 'Xiaomi Redmi 12C', '437xiaomi-redmi-12c-grey-thumb-600x600.jpg', 1, 'MediaTek Helio G85', 5000, 6.71, 1, 12, 'Chính 50 MP & Phụ QVGA', '5 MP', 24, 2, 1, 0, 1),
(8, 'Samsung Galaxy S20 FE', '286samsung-galaxy-s20-fan-edition-xanh-la-thumbnew-600x600.jpeg', 1, 'Snapdragon 865', 4500, 6.5, 1, 12, 'Chính 12 MP & Phụ 12 MP, 8 MP', '32 MP', 24, 3, 4, 0, 1),
(9, 'Samsung Galaxy A23', '826samsung-galaxy-a23-cam-thumb-600x600.jpg', 1, 'Snapdragon 680', 5000, 6.6, 1, 12, 'Chính 50 MP & Phụ 5 MP, 2 MP, 2 MP', '8 MP', 24, 3, 1, 0, 1),
(10, 'Samsung Galaxy S22+ 5G', '177Galaxy-S22-Ultra-Burgundy-600x600.jpg', 1, 'Snapdragon 8 Gen 1', 4500, 6.6, 1, 12, 'Chính 50 MP & Phụ 12 MP, 10 MP', '10 MP', 24, 3, 4, 0, 1),
(11, 'OPPO Reno6 Pro 5G', '203oppo-reno6-pro-grey-600x600.jpg', 1, 'Snapdragon 870 5G', 4500, 6.55, 1, 11, 'Chính 50 MP & Phụ 16 MP, 13 MP, 2 MP', '32 MP', 24, 5, 4, 0, 1),
(12, ' OPPO A95', '555oppo-a95-4g-bac-2-600x600.jpg', 1, 'Snapdragon 662', 5000, 6.43, 1, 11, 'Chính 48 MP & Phụ 2 MP, 2 MP', '16 MP', 24, 5, 1, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `manv` int(11) NOT NULL,
  `matkhau` varchar(255) NOT NULL,
  `manhomquyen` int(11) NOT NULL,
  `tendangnhap` varchar(50) NOT NULL DEFAULT '',
  `trangthai` int(11) NOT NULL,
  `otp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`manv`, `matkhau`, `manhomquyen`, `tendangnhap`, `trangthai`, `otp`) VALUES
(1, '$2a$12$6GSkiQ05XjTRvCW9MB6MNuf7hOJEbbeQx11Eb8oELil1OrCq6uBXm', 1, 'admin', 1, 'null');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `mathuonghieu` int(11) NOT NULL,
  `tenthuonghieu` varchar(255) NOT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thuonghieu`
--

INSERT INTO `thuonghieu` (`mathuonghieu`, `tenthuonghieu`, `trangthai`) VALUES
(1, 'Apple', 1),
(2, 'Xiaomi', 1),
(3, 'Samsung', 1),
(4, 'Vivo', 1),
(5, 'Oppo', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `xuatxu`
--

CREATE TABLE `xuatxu` (
  `maxuatxu` int(11) NOT NULL,
  `tenxuatxu` varchar(50) NOT NULL,
  `trangthai` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `xuatxu`
--

INSERT INTO `xuatxu` (`maxuatxu`, `tenxuatxu`, `trangthai`) VALUES
(1, 'Trung Quốc', 1),
(2, 'Hàn Quốc', 1),
(3, 'Việt Nam', 1),
(4, 'USA', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `ctkiemke`
--
ALTER TABLE `ctkiemke`
  ADD PRIMARY KEY (`maphieukiemmke`,`masanpham`);

--
-- Chỉ mục cho bảng `ctphieunhap`
--
ALTER TABLE `ctphieunhap`
  ADD PRIMARY KEY (`maphieunhap`,`maphienbansp`);

--
-- Chỉ mục cho bảng `ctphieuxuat`
--
ALTER TABLE `ctphieuxuat`
  ADD PRIMARY KEY (`maphieuxuat`,`maphienbansp`);

--
-- Chỉ mục cho bảng `ctquyen`
--
ALTER TABLE `ctquyen`
  ADD PRIMARY KEY (`manhomquyen`,`machucnang`,`hanhdong`) USING BTREE;

--
-- Chỉ mục cho bảng `ctsanpham`
--
ALTER TABLE `ctsanpham`
  ADD PRIMARY KEY (`maimei`) USING BTREE;

--
-- Chỉ mục cho bảng `danhmucchucnang`
--
ALTER TABLE `danhmucchucnang`
  ADD PRIMARY KEY (`machucnang`);

--
-- Chỉ mục cho bảng `dungluongram`
--
ALTER TABLE `dungluongram`
  ADD PRIMARY KEY (`madlram`);

--
-- Chỉ mục cho bảng `dungluongrom`
--
ALTER TABLE `dungluongrom`
  ADD PRIMARY KEY (`madlrom`);

--
-- Chỉ mục cho bảng `hedieuhanh`
--
ALTER TABLE `hedieuhanh`
  ADD PRIMARY KEY (`mahedieuhanh`) USING BTREE;

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makh`);

--
-- Chỉ mục cho bảng `khuvuckho`
--
ALTER TABLE `khuvuckho`
  ADD PRIMARY KEY (`makhuvuc`);

--
-- Chỉ mục cho bảng `mausac`
--
ALTER TABLE `mausac`
  ADD PRIMARY KEY (`mamau`),
  ADD UNIQUE KEY `tenmau` (`tenmau`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`manhacungcap`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`manv`);

--
-- Chỉ mục cho bảng `nhomquyen`
--
ALTER TABLE `nhomquyen`
  ADD PRIMARY KEY (`manhomquyen`);

--
-- Chỉ mục cho bảng `phienbansanpham`
--
ALTER TABLE `phienbansanpham`
  ADD PRIMARY KEY (`maphienbansp`) USING BTREE,
  ADD KEY `FK_phienbansanpham_sanpham` (`masp`);

--
-- Chỉ mục cho bảng `phieubaohanh`
--
ALTER TABLE `phieubaohanh`
  ADD PRIMARY KEY (`maphieubaohanh`);

--
-- Chỉ mục cho bảng `phieudoi`
--
ALTER TABLE `phieudoi`
  ADD PRIMARY KEY (`maphieudoi`),
  ADD KEY `FK_phieudoi_ctsanpham` (`maimei`),
  ADD KEY `FK_phieudoi_taikhoan` (`nguoitao`);

--
-- Chỉ mục cho bảng `phieukiemke`
--
ALTER TABLE `phieukiemke`
  ADD PRIMARY KEY (`maphieu`),
  ADD KEY `FK_phieukiemke_taikhoan` (`nguoitaophieukiemke`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`maphieunhap`),
  ADD KEY `FK_phieunhap_nhacungcap` (`manhacungcap`),
  ADD KEY `FK_phieunhap_taikhoan` (`nguoitao`);

--
-- Chỉ mục cho bảng `phieutra`
--
ALTER TABLE `phieutra`
  ADD PRIMARY KEY (`maphieutra`),
  ADD KEY `FK_phieutra_ctsanpham` (`maimei`),
  ADD KEY `FK_phieutra_taikhoan` (`nguoitao`);

--
-- Chỉ mục cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD PRIMARY KEY (`maphieuxuat`),
  ADD KEY `FK_phieuxuat_khachhang` (`makh`),
  ADD KEY `FK_phieuxuat_taikhoan` (`nguoitaophieuxuat`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`) USING BTREE;

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`manv`),
  ADD UNIQUE KEY `tendangnhap` (`tendangnhap`),
  ADD KEY `FK_taikhoan_nhomquyen` (`manhomquyen`);

--
-- Chỉ mục cho bảng `thuonghieu`
--
ALTER TABLE `thuonghieu`
  ADD PRIMARY KEY (`mathuonghieu`) USING BTREE;

--
-- Chỉ mục cho bảng `xuatxu`
--
ALTER TABLE `xuatxu`
  ADD PRIMARY KEY (`maxuatxu`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `dungluongram`
--
ALTER TABLE `dungluongram`
  MODIFY `madlram` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `dungluongrom`
--
ALTER TABLE `dungluongrom`
  MODIFY `madlrom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `hedieuhanh`
--
ALTER TABLE `hedieuhanh`
  MODIFY `mahedieuhanh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `makh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `khuvuckho`
--
ALTER TABLE `khuvuckho`
  MODIFY `makhuvuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `mausac`
--
ALTER TABLE `mausac`
  MODIFY `mamau` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `manhacungcap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `manv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `nhomquyen`
--
ALTER TABLE `nhomquyen`
  MODIFY `manhomquyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `phienbansanpham`
--
ALTER TABLE `phienbansanpham`
  MODIFY `maphienbansp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `phieubaohanh`
--
ALTER TABLE `phieubaohanh`
  MODIFY `maphieubaohanh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phieukiemke`
--
ALTER TABLE `phieukiemke`
  MODIFY `maphieu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `maphieunhap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `phieutra`
--
ALTER TABLE `phieutra`
  MODIFY `maphieutra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  MODIFY `maphieuxuat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `masp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `thuonghieu`
--
ALTER TABLE `thuonghieu`
  MODIFY `mathuonghieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `xuatxu`
--
ALTER TABLE `xuatxu`
  MODIFY `maxuatxu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `ctkiemke`
--
ALTER TABLE `ctkiemke`
  ADD CONSTRAINT `FK_ctkiemke_phieukiemke` FOREIGN KEY (`maphieukiemmke`) REFERENCES `phieukiemke` (`maphieu`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `ctphieuxuat`
--
ALTER TABLE `ctphieuxuat`
  ADD CONSTRAINT `FK__phieuxuat` FOREIGN KEY (`maphieuxuat`) REFERENCES `phieuxuat` (`maphieuxuat`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `ctquyen`
--
ALTER TABLE `ctquyen`
  ADD CONSTRAINT `FK__nhomquyen` FOREIGN KEY (`manhomquyen`) REFERENCES `nhomquyen` (`manhomquyen`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `phienbansanpham`
--
ALTER TABLE `phienbansanpham`
  ADD CONSTRAINT `FK_phienbansanpham_sanpham` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `phieudoi`
--
ALTER TABLE `phieudoi`
  ADD CONSTRAINT `FK_phieudoi_ctsanpham` FOREIGN KEY (`maimei`) REFERENCES `ctsanpham` (`maimei`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_phieudoi_taikhoan` FOREIGN KEY (`nguoitao`) REFERENCES `taikhoan` (`manv`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `phieukiemke`
--
ALTER TABLE `phieukiemke`
  ADD CONSTRAINT `FK_phieukiemke_taikhoan` FOREIGN KEY (`nguoitaophieukiemke`) REFERENCES `taikhoan` (`manv`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `FK_phieunhap_nhacungcap` FOREIGN KEY (`manhacungcap`) REFERENCES `nhacungcap` (`manhacungcap`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_phieunhap_taikhoan` FOREIGN KEY (`nguoitao`) REFERENCES `taikhoan` (`manv`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `phieutra`
--
ALTER TABLE `phieutra`
  ADD CONSTRAINT `FK_phieutra_ctsanpham` FOREIGN KEY (`maimei`) REFERENCES `ctsanpham` (`maimei`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_phieutra_taikhoan` FOREIGN KEY (`nguoitao`) REFERENCES `taikhoan` (`manv`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD CONSTRAINT `FK_phieuxuat_khachhang` FOREIGN KEY (`makh`) REFERENCES `khachhang` (`makh`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_phieuxuat_taikhoan` FOREIGN KEY (`nguoitaophieuxuat`) REFERENCES `taikhoan` (`manv`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `FK_taikhoan_nhanvien` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_taikhoan_nhomquyen` FOREIGN KEY (`manhomquyen`) REFERENCES `nhomquyen` (`manhomquyen`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
