<?php
/**
 * Kiểm tra user có tồn tại hay không?
 */
function checkUserExits($Email){
     $user = db_num_rows_PDO("SELECT * FROM khachhang WHERE Email = '$Email'");
    return $user;
}

function signUp($HoTenKH, $DiaChi, $phone, $Email, $password) {
    global $pdo;
    $query = "INSERT INTO khachhang (HoTenKH, DiaChi, SoDienThoai, Email, password)
                VALUES (?, ?, ?, ?, ?)";
    try {
        $result = $pdo->prepare($query);
        $result->execute([
            $HoTenKH,
            $DiaChi,
            $phone,
            $Email,
            md5($password)
        ]);
        return true;
    } catch (PDOException $ex) {
        $pdo_error = $ex->getMessage();
        echo $pdo_error;
    }
}