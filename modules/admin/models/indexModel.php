<?php

/**
 * Lấy Loại sản phẩm (tên)
 */
function get_product_type_admin()
{
   $list_product_type = db_fetch_array_PDO("SELECT * FROM loaihanghoa ORDER BY MaLoaiHang DESC");
   return $list_product_type;
}

function get_product_type_by_Id_admin($maLoaiHang)
{
   $list_product_type = db_fetch_array_PDO("SELECT * FROM loaihanghoa WHERE MaLoaiHang = '$maLoaiHang'");
   return $list_product_type;
}

function create_cate($tenDanhMuc)
{
   global $pdo;
   $query = "INSERT INTO loaihanghoa (TenLoaiHang)
                VALUES (?)";
   try {
      $result = $pdo->prepare($query);
      $result->execute([
         $tenDanhMuc
      ]);
      return 1;
   } catch (PDOException $ex) {
      $pdo_error = $ex->getMessage();
      echo $pdo_error;
   }
}

function update_cate()
{
   $updateCate = "CALL edit_cate('" . $_POST["maDanhMuc"] . "',  '" . $_POST["tenDanhMuc"] . "')";
   call_procedure_PDO($updateCate);
}
