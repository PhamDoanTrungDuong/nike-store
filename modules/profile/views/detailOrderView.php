<?php
get_header();
// show_array($data)
?>
<div class="main-content-products">

    <div class="container">
        <h3 class="title mt-5">Chi tiết đơn hàng #<?= $data['dondathang'][0]['SoDonDH'] ?>
        </h3>
        <p class="text-right"><b>Ngày đặt hàng:</b> <?= $currentDate ?></p>
        <div class="products-cart">
            <div class="products-cart__product">
                <table class="table mb-0">
                    <thead>
                        <tr>
                            <th>Sản phẩm</th>
                            <th>Đơn giá</th>
                            <th>Số lượng</th>
                            <th>Thành tiền</th>
                        </tr>
                    </thead>

                    <tbody id="product-item">
                        <?php
                        foreach ($data['dondathang'] as $key => $item) :
                        ?>
                            <tr class="product-item-cart" data-id="<?= $item['MSHH'] ?>">
                                <td>
                                    <div class="product-item-cart__name">
                                        <a href="?mod=home&action=detail&id=<?= $item['MSHH'] ?>">
                                            <img class="product-item-cart__image" src="./public/uploads/product-images/<?= $item['Hinh1'] ?>" alt="">
                                        </a>
                                        <a href="?mod=home&action=detail&id=<?= $item['MSHH'] ?>" class="heading-product">
                                            <?= $item['TenHH'] ?>
                                        </a>
                                    </div>
                                </td>
                                <td>
                                    <?= currency_format($item['GiaDatHang']) ?>
                                </td>
                                <td>
                                    <div class="text-center">
                                        <span><?= $item['SoLuong'] ?></span>
                                    </div>
                                </td>
                                <td class=" product-item-cart__total-price"> <?= currency_format($item['SoLuong'] * $item['GiaDatHang']) ?>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    <tfoot>
                        <tr>
                            <td></td>
                            <td></td>
                            <td style=" white-space: nowrap"><b>Tổng cộng: </b></td>
                            <td style="color:#666666; font-weight:bold; font-size:18px"><?= currency_format($item['TongTien']) ?></td>
                        </tr>
                    </tfoot>
                    </tbody>
                </table>
                <hr class="mt-0">
                <div class="products-cart__product__update">
                    <a href="?mod=profile" class="products-cart__product__update__back"><i class="fa fa-angle-left mr-2"></i>Quay lại đơn hàng của tôi</a>
                </div>
            </div>
            <div class="cart-detail__order">
                <div class="cart-detail__order__title">Thông tin nhận hàng</div>
                <div class="cart-detail__order__detail">
                    <input hidden type="text" name="MSKH" value="<?= $_SESSION['userDetail']['MSKH'] ?>">
                    <p><b>Tên người nhận:</b></p>
                    <p class="ml-3"><?= $item['HoTenKH'] ?></p>
                    <p><b>Số điện thoại:</b></p>
                    <p class="ml-3"><?= $item['SoDienThoai'] ?></p>

                    <div class="cart-detail__order__detail__address">
                        <b>Địa chỉ nhận hàng:</b>
                        <p class="mt-3"><?= $item['DiaChi'] ?></p>

                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
</div>


<?php
get_footer();
?>