<?php
    get_header();
?>

<div class="container pb-2">
    <div class="banner">
        <img src="./public/img/banner.png" alt="banner">
    </div>
    <div class="popular-book__title mt-5">
        <h3>Sản phẩm bán chạy trong tháng</h3>
    </div>
    <section class="popular-book">
        <?php foreach (show_popular() as $key => $popularBook) : ?>
            <div class="popular-book__item">
                <a href="?mod=home&action=detail&id=<?php echo $popularBook['MSHH'] ?>"> <img class="popular-book__item__image" src="./public/uploads/product-images/<?= $popularBook['Hinh1'] ?>" alt="Best Seller Book"></a>
                <div class="popular-book__item__info">
                    <div class="popular-book__item__info__title"><a href=""><?= $popularBook['TenHH'] ?></a></div>
                    <div class="popular-book__item__info__price"><?= number_format($popularBook['Gia'], 0, '', ',') ?>đ </div>
                    <div class="popular-book__item__info__content"><?= $popularBook['GhiChu'] ?></div>
                    <a href="?mod=home&action=add&id=<?php echo $popularBook['MSHH'] ?>">
                        <button class="btn btn--primary align-items-center d-flex btn--primary--hover ">
                            <i class="mr-1 bi bi-handbag"></i> Thêm vào giỏ
                        </button>
                    </a>
                </div>
            </div>
        <?php endforeach; ?>
    </section>
</div>


<section class="trending trending-bottom">
    <div class="container p-80">
        <div class="trending-product">
            <div class="title">
                <h3><span>Tất cả sản phẩm</span></h3>
            </div>
            <nav>
                <ul id="navCategory" class="nav">
                    <?php foreach ($data['list_product_type'] as $key => $category) : ?>
                        <?php if ($key + 1 <= 13) : ?>
                            <a href="?mod=home&id=<?= $category['MaLoaiHang'] ?>" class="nav__item" value="<?= $category['MaLoaiHang'] ?>"><?= $category['TenLoaiHang'] ?></a>
                        <?php endif; ?>
                        <?php if ($key + 1 == 14) : ?>
                            <li class="nav__item">...</li>
                        <?php endif; ?>
                    <?php endforeach; ?>
            </nav>
            <?php if (!empty($data['list_product']) && isset($_GET['id'])) {
            ?>
                <div class="category-book">
                    <div class="listProduct row" id="category-book">
                        <?php foreach ($data['list_product'] as $item) {
                        ?>
                            <div class="col-6 col-md-4 col-xl-3 ">
                                <div class="category-book__item" data-id=<?php echo $item['MSHH'] ?> id="dataID">
                                    <div class="category-book__item__image">
                                        <a href="?mod=home&action=detail&id=<?php echo $item['MSHH'] ?>">
                                            <img src="./public/uploads/product-images/<?php echo $item['Hinh1'] ?>" alt="">
                                        </a>
                                        <a href="?mod=home&action=add&id=<?php echo $item['MSHH'] ?>">
                                            <button class="btn btn--primary align-items-center d-flex addCartItem">
                                                <i class="bi bi-handbag"></i> Thêm vào giỏ
                                            </button>
                                        </a>
                                    </div>
                                    <div class="category-book__item__title">
                                        <?php echo $item['TenHH'] ?>
                                    </div>
                                    <div class="category-book__item__price">
                                        <?php echo currency_format($item['Gia']) ?>
                                    </div>
                                </div>
                            </div>
                        <?php } ?>

                    </div>
                </div>
            <?php
            } else {
            ?>
                <div class="category-book">
                    <div class="listProduct row" id="category-book">
                        <?php if (!empty($data['products'])) : foreach ($data['products'] as $book) : ?>
                                <div class="col-6 col-md-4 col-xl-3">
                                    <div class="category-book__item" data-id=<?php echo $book['MSHH'] ?> id="dataID">
                                        <div class="category-book__item__image">
                                            <a href="?mod=home&action=detail&id=<?php echo $book['MSHH'] ?>">
                                                <img src="./public/uploads/product-images/<?php echo $book['Hinh1'] ?>" alt="">
                                            </a>
                                            <a href="?mod=home&action=add&id=<?php echo $book['MSHH'] ?>">
                                                <button class="btn btn--primary align-items-center d-flex addCartItem">
                                                    <i class="bi bi-handbag"></i> Thêm vào giỏ
                                                </button>
                                            </a>
                                        </div>
                                        <div class="category-book__item__title">
                                            <?php echo $book['TenHH'] ?>
                                        </div>
                                        <div class="category-book__item__price">
                                            <?php echo currency_format($book['Gia']) ?>
                                        </div>
                                    </div>
                                </div>
                        <?php endforeach;
                        endif; ?>

                    </div>
                </div>
            <?php
            }
            ?>

        </div>
        <nav aria-label="Page navigation example ">
            <ul class="pagination justify-content-center mt-4">

                <?php if ($data['pages'] > 1) : ?>
                    <li class="page-item">
                        <a class="page-link" href="?mod=home&pagination=<?= $data['pages'] - 1 ?>" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                <?php endif; ?>

                <?php for ($i = 1; $i <= $data['totalPages']; $i++) : ?>
                    <?php if ($data['pages'] == $i) { ?>
                        <li class="page-item active"><a class="page-link" href="?mod=home&pagination=<?= $i ?>"><?= $i ?></a></li>
                    <?php } else { ?>
                        <li class="page-item"><a class="page-link" href="?mod=home&pagination=<?= $i ?>"><?= $i ?></a></li>
                <?php }
                endfor; ?>

                <?php if ($data['pages'] !=  $data['totalPages']) : ?>
                    <li class="page-item">
                        <a class="page-link" href="?mod=home&pagination=<?= $data['pages'] + 1 ?>" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                <?php endif; ?>
            </ul>
        </nav>
    </div>

</section>

<?php
    get_footer()
?>