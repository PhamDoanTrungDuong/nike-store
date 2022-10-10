<?php
get_header();
?>

<?php
while ($item = mysqli_fetch_array($data['detail'])) {
?>
    <section class="main-details-products">
        <div class="container">
            <h3 class="title mt-5">Chi tiết sản phẩm</h3>
            <div class="product-detail">
                <img src="./public/uploads/product-images/<?php echo $item['Hinh1'] ?>" alt="">
                <div class="product-detail__info">
                    <div class="product-detail__info__title"><?= $item['TenHH'] ?></div>
                    <div class="product-detail__info__rate">
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <p class="product-detail__info__reviews">
                            <span>(Xem 258 đánh giá)</span>
                            <span> | Đã bán 1000+</span>
                        </p>

                    </div>
                    <div class="product-detail__info__price"><?= currency_format($item['Gia']) ?></div>
                    <div class="product-detail__info__detail">
                        <p class="product-detail__info__detail__title">Mã sản phẩm:</p>
                        <p class="product-detail__info__detail__title">Thể loại:</p>
                        <p><?= $item['MSHH'] ?></p>
                        <p><?= $item['TenLoaiHang'] ?></p>
                    </div>
                    <a href="?page=home&action=add&id=<?php echo $item['MSHH'] ?>">
                        <button class="btn btn--primary product-detail__button">
                            <i class="bi bi-handbag"></i> Thêm vào giỏ +
                        </button>
                    </a>
                    <div class="product-detail__content">
                        <p class="product-detail__content__title">Sơ lược sản phẩm</p>
                        <p class="product-detail__content__content"><?= $item['GhiChu'] ?></p>
                    </div>
                </div>
            </div>
        </div>
    </section>
<?php
}
?>

<?php
get_footer();
?>