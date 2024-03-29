<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nike's Store</title>

    <link rel="icon" href="./public/img/logo-nike.svg" sizes="16x16">
    <link rel="icon" href="./public/img/logo-nike.svg" sizes="192x192">

    <!-- SWEETALERT2 CSS -->
    <link rel="stylesheet" href="./public/css/sweetalert2.min.css">

    <!-- MAIN CSS -->
    <link rel="stylesheet" href="./public/css/sass/main.css">
</head>

<body>
    <div class="login__background">
        <form id="loginForm" class="login__form" action="" method="POST">
            <img class="login__form__logo" src="./public/img/logo-nike.svg" alt="logo">
            <h1 class="login__form__title">Đăng nhập <br> <span class="py-2">Nike's Store</span></h1>
            <p class="login__form__message">
                <span style="color: red;">

                </span>
                <span style="color: green;">

                </span>
            </p>
            <div class="login__form__input">
                <label for="email">Email (duongb1910202@student.ctu.edu.vn)</label>
                <input id="email" type="text" name="email" placeholder="Nhập email của bạn...">
                <?php if (!empty($error['email'])) { ?>
                    <p class="error"><?php echo $error['email'] ?></p>
                <?php } ?>
            </div>
            <div class="login__form__input">
                <label for="password">Mật khẩu (Admin@123)</label>
                <input id="password" type="password" name="password" placeholder="Nhập mật khẩu...">
                <?php if (!empty($error['password'])) { ?>
                    <p class="error"><?php echo $error['password'] ?></p>
                <?php } ?>
            </div>
            <input type="submit" name="btn-login" class="btn btn--primary" value="Đăng nhập" style="padding:13px 0; border-radius: 0px; margin-top: 15px">
            <div style="margin-left:auto; margin-top: 10px; text-align:center; width:100%">Chưa có tài khoản? <a href="?mod=signup" style="font-weight: bold; color: red; margin-left: 5px;">Đăng ký</a></div>

        </form>
    </div>
</body>

<!-- SWEETALERT2 JS -->
<script src="public/js/sweetalert2.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="./public/js/jquery.validate.js"></script>



<script type="text/javascript">
    $.validator.setDefaults({
        submitHandler: function() {
            form.submit();
        }
    })
    $(document).ready(function() {
        $("#loginForm").validate({
            rules: {
                email: {
                    required: true,
                    email: true
                },
                password: {
                    required: true,
                },
            },
            messages: {
                email: "*Email không hợp lệ!",
                password: {
                    required: "*Vui lòng nhập mật khẩu!",
                },
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

<?php
if (isset($_SESSION['loginStatusCode']) && $_SESSION['loginStatusCode'] == 'error') {
?>
    <script>
        Swal.fire({
            icon: '<?php echo $_SESSION['loginStatusCode'] ?>',
            title: '<?php echo $_SESSION['loginStatusMessage'] ?>',
            showConfirmButton: false,
            timer: 2000
        })
    </script>
    <?php
    unset($_SESSION['loginStatusMessage']);
    unset($_SESSION['loginStatusCode']);
} else {
    if (isset($_SESSION['signupStatusCode']) && $_SESSION['signupStatusCode'] == 'success') {
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
}
?>

</html>