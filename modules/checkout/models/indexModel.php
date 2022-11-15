<?php

function create_order($MSKH, $DiaChi, $TongTien) {
   global $pdo;
   $query = "INSERT INTO dondathang (MSKH, DiaChi, TongTien)
               VALUES (?, ?, ?)";
   try {
       $result = $pdo->prepare($query);
       $result->execute([
           $MSKH,
           $DiaChi,
           $TongTien
       ]);
       return 1;
   } catch (PDOException $ex) {
       $pdo_error = $ex->getMessage();
       echo $pdo_error;
   }
}

function create_order_detail($SoDonDH, $MSHH, $SoLuong, $Gia) {
   global $pdo;
   $query = "INSERT INTO chitietdathang (SoDonDH, MSHH, SoLuong, GiaDatHang)
               VALUES (?, ?, ?, ?)";
   try {
       $result = $pdo->prepare($query);
       $result->execute([
           $SoDonDH,
           $MSHH,
           $SoLuong,
           $Gia
       ]);
       return 1;
   } catch (PDOException $ex) {
       $pdo_error = $ex->getMessage();
       echo $pdo_error;
   }
}

