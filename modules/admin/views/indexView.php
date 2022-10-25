<?php
get_header();
?>
<div class="main-admin-category">
   <div class="container">
      </h3>
      <div class="admin-category">
         <a href="?mod=admin&action=form" class="btn btn--primary" style="border-radius: 0px">Thêm Danh Mục</a>
         <div class="admin-category__cate">
            <table class="table mb-0">
               <thead>
                  <tr>
                     <th>Mã Loại Hàng</th>
                     <th>Tên Loại Hàng</th>
                     <th></th>
                  </tr>
               </thead>

               <tbody id="category-item">
                  <?php
                  foreach ($data['list_product_type_admin'] as $key => $item) :
                  ?>
                     <tr class="category-item-admin" data-id="<?= $item['MSHH'] ?>">
                        <td>
                           <div>
                              <span>#<?= $item['MaLoaiHang'] ?></span>
                           </div>
                        </td>
                        <td>
                           <div>
                              <span><?= $item['TenLoaiHang'] ?></span>
                           </div>
                        </td>
                        <td>
                           <a href="?mod=admin&action=form&id=<?php echo $item['MaLoaiHang'] ?>">
                              <div class="trash">
                                 <span class="iconify" data-icon="akar-icons:edit" style="color: #637381;" data-width="22" data-height="22"></span>
                              </div>
                           </a>
                           <a href="?mod=admin&action=delete&id=<?php echo $item['MaLoaiHang'] ?>">
                              <div class="trash">
                                 <span class="iconify" data-icon="eva:trash-2-outline" style="color: #637381;" data-width="22" data-height="22"></span>
                              </div>
                           </a>
                        </td>
                     </tr>
                  <?php endforeach; ?>
               </tbody>
            </table>
            <hr class="mt-0">
         </div>
      </div>
   </div>

</div>
<?php
get_footer();
?>