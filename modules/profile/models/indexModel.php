<?php

/**
 * Lấy chi tiết đơn hàng
 */
function product_detail($email){
     $chitietdathang  = db_fetch_array_PDO("SELECT d.SoDonDH, h.TenHH, h.MSHH, c.GiaDatHang, c.SoLuong, d.TongTien , h.Hinh1 FROM khachhang k join dondathang d on k.MSKH = d.MSKH join chitietdathang c on c.SoDonDH = d.SoDonDH join hanghoa h on h.MSHH = c.MSHH WHERE Email = '$email' ORDER BY d.SoDonDH DESC");

     return $chitietdathang;
}

/**
 * Lấy tất cả đơn hàng của User theo Email
 */
function order($email){
     $dondathang  = db_fetch_array_PDO("SELECT * FROM dondathang d join khachhang k on d.MSKH = k.MSKH WHERE Email = '$email' ORDER BY SoDonDH DESC ");

     return $dondathang;
}

/**
 * Lấy chi tiết đơn hàng theo Id
 */
function order_detail($id){
     $dondathang  = db_fetch_array_PDO("SELECT d.SoDonDH,d.NgayDH, h.TenHH, h.MSHH, c.GiaDatHang, c.SoLuong, d.TongTien ,d.DiaChi, h.Hinh1, k.HoTenKH, k.SoDienThoai FROM khachhang k join dondathang d on k.MSKH = d.MSKH join chitietdathang c on c.SoDonDH = d.SoDonDH join hanghoa h on h.MSHH = c.MSHH WHERE d.SoDonDH = '$id'");

     return $dondathang;
}

/**
 * Cập nhật thông tin user
 * Gọi Hàm thủ tục edit_kh để cập nhật
 */
function update_profile(){
     $updateInfo = "CALL edit_kh('" . $_POST["MSKH"] . "',  '" . $_POST["HoTenKH"] . "' ,'" . $_POST["DiaChi"] . "', '" . $_POST["SoDienThoai"] . "' )";
     call_procedure_PDO($updateInfo);
}