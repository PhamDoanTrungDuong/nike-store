<?php

/**
 *  Hàm kết nối dữ liệu
 */
function db_connect_PDO()
{
    global $pdo;

    try {
        $pdo = new PDO('mysql:host=localhost;dbname=nikestore', 'root', '');
        $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
        $reason = $e->getMessage();
        echo $reason;
        exit();
    }
}

/**
 * Thực thi chuổi truy vấn
 */
function db_query_PDO($query_string)
{
    global $pdo;
    $result = $pdo->query($query_string);
    if (!$result) {
        $pdo->errorInfo();
        // db_sql_error('Query Error', $query_string);
    }
    return $result;
}
/**
 * PDO::FETCH_ASSOC
 *[Array] => Array
 *(
 *    [MSKH] => 3
 *    [HoTenKH] => Phạm Đoàn Trùng Dương
 *    ...
 *)
 *-----------------------------------------
 * PDO::FETCH_BOTH
 *[userLogin] => Array
 *(
 *    [0] => value
 *    [HoTenKH] => value
 *    ...
 *)
 *-----------------------------------------
 * PDO::FETCH_NUM
 *[userLogin] => Array
 *(
 *    [0] => value
 *    [1] => value
 *    ...
 *)
 */

/**
 * Lấy một bản ghi trong CSDL
 */
function db_fetch_row_PDO($query_string)
{
    $result = array();
    $pdo_result = db_query_PDO($query_string);
    $result = $pdo_result->fetch();
    // $pdo_result->closeCursor();
    return $result;
}

/**
 * Lấy mảng dữ liệu trong CSDL
 */
function db_fetch_array_PDO($query_string)
{
    global $pdo;
    $result = array();
    $pdo_result = db_query_PDO($query_string);
    while ($row = $pdo_result->fetch()) {
        $result[] = $row;
    }
    // $pdo_result->closeCursor();
    return $result;
}

/**
 * Lấy số bản ghi
 */
function db_num_rows_PDO($query_string)
{
    global $pdo;
    $mysqli_result = db_query_PDO($query_string);
    return $mysqli_result->fetchColumn();
}

/**
 * Thêm bản ghi
 */
function db_insert_PDO($table, $data)
{
    global $pdo;
    $fields = "(" . implode(", ", array_keys($data)) . ")";
    $values = "";
    $valuesPDO = [];
    foreach ($data as $field => $value) {
        if ($value === NULL)
            $values .= "NULL, ";
        else
            $values .= "" . '?' . ", ";
        array_push($valuesPDO, $value);
    }

    $values = substr($values, 0, -2);
    $query = "INSERT INTO $table $fields VALUES ($values)";
    $pdo->prepare($query)->execute($valuesPDO);
    return $pdo->lastInsertId();
}

/**
 * Cập nhật dữ liệu
 */
function db_update_PDO($table, $data, $idStringName, $id)
{
    global $pdo;
    $fields = "";
    $fieldsPDO = [];
    foreach ($data as $field => $value) {
        if ($value === NULL)
            $fields .= "$field=NULL, ";
        else
            $fields .= "$field='" . '?' . "', ";
            array_push($fieldsPDO, $value);
    }

    array_push($fieldsPDO, $id);
    $query = "UPDATE $table SET $fields WHERE $idStringName=?";
    $pdo->prepare($query)->execute($fieldsPDO);
    return $pdo->lastInsertId();
}

/**
 * Xóa bản ghi
 */
function db_delete_PDO($table, $where)
{
    global $pdo;
    $query_string = " DELETE FROM " . $table . " WHERE MaLoaiHang=" . $where . " LIMIT 1 ";
    $result = db_query_PDO($query_string);
    return $result->rowCount();
}

/**
 * Auto Increament Id
 */
function mysqli_last_id_PDO()
{
    global $pdo;
    return $pdo->lastInsertId();
}

/**
 * Gọi hàm thủ tục
 */
function call_procedure_PDO($updateInfo)
{
    global $pdo;
    return $pdo->query($updateInfo);
}
