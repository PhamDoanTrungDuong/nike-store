<?php
   
    ?>

 <!DOCTYPE html>
 <html lang="en">

 <head>
     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>Document</title>
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" />

     <link rel="icon" href="./public/img/logo-nike.svg" sizes="16x16">
     <link rel="icon" href="./public/img/logo-nike.svg" sizes="192x192">

     <link rel="stylesheet" href="./public/css/sass/main.css">

 </head>

 <body>
     <div class="signup__background">
         <div class="signup__img">
             <img src="./public/img/banner.png" alt="banner">
         </div>
         <form id="signupForm" class="signup__form" action="" method="post">
             <img class="signup__form__logo" src="./public/img/logo-nike.svg" alt="logo">
             <h1 class="signup__form__title">Đăng ký tài khoản <br> <span style="padding:10px 0">Nike's</span></h1>

             <div class="d-flex">
                 <div class="signup__form__input mr-2">
                     <label for="HoTenKH">Họ tên <span style="color:red; font-weight: normal;">(*)</span></label>
                     <input value="" id="HoTenKH" type="text" name="HoTenKH">
                 </div>
                 <div class="signup__form__input">
                     <label for="phone">Số điện thoại <span style="color:red; font-weight: normal;">(*)</span></label>
                     <input value="" id="phone" type="text" name="phone">
                 </div>
             </div>

             <div class="signup__form__input">
                 <label for="Email">Email <span style="color:red; font-weight: normal;">(*)</span></label>
                 <input value="" id="Email" type="email" name="Email">

             </div>

             <div class="signup__form__input">
                 <label for="password">Mật khẩu <span style="color:red; font-weight: normal;">(*)</span></label>
                 <input value="" id="password" type="password" name="password">


             </div>
             <div class="signup__form__input">
                 <label for="confirm_password">Nhập lại mật khẩu <span style="color:red; font-weight: normal;">(*)</span></label>
                 <input value="" id="confirm_password" type="password" name="confirm_password">


             </div>

             <div class="signup__form__input">
                 <label for="DiaChi">Địa chỉ <span style="color:red; font-weight: normal;">(*)</span></label>
                 <input value="" id="DiaChi" type="text" name="DiaChi">


             </div>

             <button type="submit" class="btn btn--primary" name="btn-signup">Đăng ký</button>
             <div style="margin-left:auto; margin-top: 10px; text-align:center; width:100%">Đã có tài khoản? <a href=" ?page=login" style="font-weight: bold; color: red; margin-left: 10px;">Đăng nhập</a></div>
         </form>
     </div>

     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
     <script type="text/javascript" src="./public/js/jquery.validate.js"></script>

     <script type="text/javascript">
         $.validator.setDefaults({
             submitHandler: function() {
                 form.submit();
             }
         })
         $(document).ready(function() {
             $("#signupForm").validate({
                 rules: {
                     Email: {
                         required: true,
                         email: true
                     },
                     HoTenKH: "required",
                     password: {
                         required: true,
                         minlength: 8
                     },
                     confirm_password: {
                         required: true,
                         minlength: 8,
                         equalTo: "#password"
                     },
                     phone: {
                         required: true,
                         minlength: 10,
                         maxlength: 10,
                     },
                     DiaChi: "required",
                 },
                 messages: {
                     HoTenKH: "*Vui lòng nhập họ tên!",
                     Email: "*Email không hợp lệ!",
                     password: {
                         required: "*Vui lòng nhập mật khẩu!",
                         minlength: "Mật khẩu phải có ít nhất 8 ký tự"
                     },
                     confirm_password: {
                         required: "*Vui lòng nhập mật khẩu!",
                         minlength: "*Mật khẩu phải có ít nhất 8 ký tự",
                         equalTo: "*Mật khẩu và mật khẩu xác phải trùng khớp!"
                     },
                     phone: {
                         required: "*Vui lòng nhập số điện thoại!",
                         minlength: "*Số điện thoại phải gồm 10 số!",
                         maxlength: "*Số điện thoại phải gồm 10 số!",
                     },
                     DiaChi: "*Vui lòng nhập địa chỉ!"
                 },
                 errorElement: "div",
                 errorPlacement: function(error, element) {
                     error.addClass("invalid-feedback");
                     $(".invalid-feedback").css("font-style", "italic")
                         error.insertAfter(element)
                 },
                 highlight: function(element, errorClass, validClass) {
                     $(element).addClass("is-invalid").removeClass("is-valid")

                 },
                 unhighlight: function(element, errorClass, validClass) {
                     $(element).addClass("is-valid").removeClass("is-invalid")
                 },
             })
         })
     </script>

     <!-- SWEETALERT2 JS -->
     <script src="public/js/sweetalert2.min.js"></script>

     <?php
        if (isset($_SESSION['signupStatusCode']) && $_SESSION['signupStatusCode'] == 'error') {
        ?>
         <script>
             Swal.fire({
                 icon: '<?php echo $_SESSION['signupStatusCode'] ?>',
                 title: '<?php echo $_SESSION['signupStatusMessage'] ?>',
                 showConfirmButton: false,
                 timer: 2000
             })
         </script>
     <?php
            unset($_SESSION['signupStatusMessage']);
            unset($_SESSION['signupStatusCode']);
        }
        ?>
 </body>

 </html>