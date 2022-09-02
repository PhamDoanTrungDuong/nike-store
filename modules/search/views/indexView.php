<?php
get_header();
?>
<?php
$key = $_SESSION['key'];
$key = trim($key);
$data = "";
if (isset($key)) {
     $sql  = "SELECT * FROM `hanghoa` WHERE TENHH LIKE '%$key%'";

     if (db_fetch_array($sql)) {
          $data = db_fetch_array($sql);
     }
}

?>
<section class="trending trending-bottom">
     <div class="container p-80">
          <div class="trending-product">
               <h3 class="mt-5">Kết quả tìm kiếm cho: "<?= isset($key) ? $key : "" ?>"</h3>
               <?php if (isset($data) && is_array($data)) : ?>
                    <div class="category-product">
                         <div class="listProduct row" id="category-product">
                              <?php foreach ($data as $key => $product) : ?>
                                   <div class="col-6 col-md-4 col-xl-3">
                                        <div class="category-product__item" data-id=<?php echo $product['MSHH'] ?> id="dataID">
                                             <div class="category-product__item__image">
                                                  <a href="?page=home&action=detail&id=<?php echo $product['MSHH'] ?>">
                                                       <img src="./public/uploads/product-images/<?php echo $product['Hinh1'] ?>" alt="">
                                                  </a>
                                                  <a href="?page=home&action=add&id=<?php echo $product['MSHH'] ?>">
                                                       <button class="btn btn--primary align-items-center d-flex addCartItem">
                                                            <i class="bi bi-handbag"></i> Thêm vào giỏ
                                                       </button>
                                                  </a>
                                             </div>
                                             <div class="category-product__item__title">
                                                  <?php echo $product['TenHH'] ?>
                                             </div>
                                             <div class="category-product__item__price">
                                                  <?php echo currency_format($product['Gia']) ?>
                                             </div>
                                        </div>
                                   </div>
                              <?php endforeach; ?>
                         </div>
                    </div>
               <?php elseif (isset($data) && is_string($data)) : ?>
                    <div class="d-flex flex-column align-items-center">
                         <div><img src="./public/img/404.svg" display="block" alt="Not Found" style="display: block; max-width: 400px; width: 100%; margin-bottom: 1.5rem; "></div>
                         <h6 class="mt-3">Không tìm thấy kết quả liên quan nào</h6>
                         <button class="btn btn--primary align-items-center mt-3"><a class="text-white" href="?page=home">Quay trở lại trang chủ</a></button>
                    </div>
               <?php endif; ?>
          </div>
     </div>
</section>

<?php
get_footer();
?>