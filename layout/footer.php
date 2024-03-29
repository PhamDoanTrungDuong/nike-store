<footer id="footer" class="footer container-fluid">
    <h5 class="footer__about">About me</h5>
    <!-- <img class="footer__avatar" src="./public/img/duong.png"> -->
    <div class="footer__info">
        <div>Phạm Đoàn Trùng Dương - B1910202
            <br>
            Đồ án Công nghệ web - CT275 Nhóm 01
        </div>
        <ul class="footer__info__social">
            <li><a href="https://github.com/thienanga075" target="_blank"><img src="./public/img/icon-github.svg"></a></li>
            <li><a href="https://www.facebook.com/trungduong212/" target="_blank"><img src="./public/img/icon-facebook.svg" alt="Facebook icon"></a></li>
            <li><a href="" target="_blank"><img src="./public/img/icon-linked.svg" alt="Linked icon"></a></li>
        </ul>
        <div class="footer__copyright">
            Copyright © 2022 Phạm Đoàn Trùng Dương
        </div>
    </div>

    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script> -->

    <script src="public/js/jquery-3.6.0.min.js" type="text/javascript"></script>

    <script src="public/js/main.js" type="text/javascript"></script>
    <script src="https://code.iconify.design/2/2.1.2/iconify.min.js"></script>

    <!-- SWEETALERT2 JS -->
    <script src="public/js/sweetalert2.min.js"></script>
    <?php
    if (isset($_SESSION['loginStatusMessage']) && $_SESSION['loginStatusMessage'] != "") {
    ?>
        <script>
            Swal.fire({
                icon: '<?php echo $_SESSION['loginStatusCode'] ?>',
                title: '<?php echo $_SESSION['loginStatusMessage'] ?>',
                showConfirmButton: false,
                timer: 1500
            })
        </script>
    <?php
        unset($_SESSION['loginStatusMessage']);
        unset($_SESSION['loginStatusCode']);
    }
    if (isset($_SESSION['deleteCartStatusMessage']) && $_SESSION['deleteCartStatusMessage'] != "") {
    ?>
        <script>
            Swal.fire({
                icon: '<?php echo $_SESSION['deleteCartStatusCode'] ?>',
                text: '<?php echo $_SESSION['deleteCartStatusMessage'] ?>',
                showConfirmButton: false,
                timer: 2000,
                position: 'top-right',
                customClass: 'swal2-toast',
                backdrop: false
            })
        </script>
    <?php
        unset($_SESSION['deleteCartStatusMessage']);
        unset($_SESSION['deleteCartStatusCode']);
    }

    if (isset($_SESSION['updateProfileStatusMessage']) && $_SESSION['updateProfileStatusMessage'] != "") {
    ?>
        <script>
            Swal.fire({
                icon: '<?php echo $_SESSION['updateProfileStatusCode'] ?>',
                text: '<?php echo $_SESSION['updateProfileStatusMessage'] ?>',
                showConfirmButton: false,
                timer: 2000,
                position: 'top-right',
                customClass: 'swal2-toast',
                backdrop: false
            })
        </script>
    <?php
        unset($_SESSION['updateProfileStatusMessage']);
        unset($_SESSION['updateProfileStatusCode']);
    }

    if (isset($_SESSION['addCartStatusMessage']) && $_SESSION['addCartStatusMessage'] != "") {
    ?>
        <script>
            Swal.fire({
                icon: '<?php echo $_SESSION['addCartStatusCode'] ?>',
                text: '<?php echo $_SESSION['addCartStatusMessage'] ?>',
                showConfirmButton: false,
                timer: 2000,
                position: 'top-right',
                customClass: 'swal2-toast',
                backdrop: false
            })
        </script>
    <?php
        unset($_SESSION['addCartStatusMessage']);
        unset($_SESSION['addCartStatusCode']);
    }

    if (isset($_SESSION['notifyStatusMessage']) && $_SESSION['notifyStatusMessage'] != "") {
    ?>
        <script>
            Swal.fire({
                icon: '<?php echo $_SESSION['notifyCartStatusCode'] ?>',
                text: '<?php echo $_SESSION['notifyStatusMessage'] ?>',
                showConfirmButton: false,
                timer: 3500,
                position: 'bottom',
                customClass: 'swal2-toast',
                backdrop: false
            })
        </script>
    <?php
        unset($_SESSION['notifyStatusMessage']);
        unset($_SESSION['notifyCartStatusCode']);
    }
    ?>

    <!-- JJquery Validate -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="./public/js/jquery.validate.js"></script>

    <script type="text/javascript">
        $.validator.setDefaults({
            submitHandler: function() {
                form.submit();
            }
        })
        $(document).ready(function() {
            $("#checkout").validate({
                rules: {
                    DiaChi: "required",
                },
                messages: {
                    DiaChi: "*Vui lòng nhập địa chỉ giao hàng!"
                },
                errorElement: "div",
                errorPlacement: function(error, element) {
                    error.addClass("invalid-feedback");
                    $(".invalid-feedback").css("font-style", "italic")
                    if (element.prop("type") === "checkbox") {
                        error.insertAfter(element.siblings("label"))
                    } else {
                        error.insertAfter(element)
                    }
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

</footer>