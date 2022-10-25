<?php
get_header();
?>
<div class="main-admin-category">
   <div class="container">
      <div class="add-category">
         <div class="add-category__item">
            <?php if(!isset($data['id'])): ?>
               <form action="?mod=admin&action=create" method="post" class="profile__info">
                  <label for="name">Tên Danh Mục: </label>
                  <input type="text" name="tenDanhMuc" id="category" value="">
                  <button name="btn_add" class="btn btn--primary" style="border-radius: 0px">Thêm Danh Mục</button>
               </form>
            <?php else: ?>
               <form action="?mod=admin&action=update" method="post" class="profile__info">
                  <input hidden type="text" name="maDanhMuc" value="<?= $data['danhmuc'][0]['MaLoaiHang'] ?>">
                  <label for="name">Tên Danh Mục: </label>
                  <input type="text" name="tenDanhMuc" id="category" value="<?= $data['danhmuc'][0]['TenLoaiHang']?>">
                  <button name="btn_update" class="btn btn--primary" style="border-radius: 0px">Cập Nhật Danh Mục</button>
               </form>
            <?php endif; ?>
            <!-- <div class="add-category__item__back">
               <a href="?mod=admin" class="add-category__item__back__update"><i class="fa fa-angle-left mr-2"></i>Quay lại</a>
            </div> -->
            <div class="products-cart__product__update">
                  <a href="?mod=admin" class="products-cart__product__update__back"><i class="fa fa-angle-left mr-2"></i>Quay lại</a>
            </div>
         </div>
      </div>
   </div>
</div>
<?php
get_footer();
?>