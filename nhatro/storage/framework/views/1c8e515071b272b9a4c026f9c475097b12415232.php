<nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #cccccc;">
    <div class="container">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03"
            aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-center" id="navbarTogglerDemo03">

            <form action="" method="get" class="form-search">
                <ul class="navbar-nav mr-auto">

                    <li class="nav-item dropdown mr-2">
                        <select class="form-control" name="type">
                            <option value="" <?php if (isset($_GET['type']) && $_GET['type'] == '') {
                                echo 'selected';
                            } ?>>Loại nhà</option>
                            <option value="0" <?php if (isset($_GET['type']) && $_GET['type'] == 0) {
                                echo 'selected';
                            } ?>>Nhà trọ</option>
                            <option value="1" <?php if (isset($_GET['type']) && $_GET['type'] == 1) {
                                echo 'selected';
                            } ?>>CCMN</option>
                            <option value="2" <?php if (isset($_GET['type']) && $_GET['type'] == 2) {
                                echo 'selected';
                            } ?>>Nguyên căn</option>
                        </select>
                    </li>
                    <li class="nav-item dropdown mr-2">
                        <select class="form-control" name="dien_tich">
                            <option value="">Diện tích</option>
                            <option value="under20" <?php if (isset($_GET['dien_tich']) && $_GET['dien_tich'] == 'under20') {
                                echo 'selected';
                            } ?>>Dưới 20m²</option>
                            <option value="20-50" <?php if (isset($_GET['dien_tich']) && $_GET['dien_tich'] == '20-50') {
                                echo 'selected';
                            } ?>>20m² - 50m²</option>
                            <option value="50-100" <?php if (isset($_GET['dien_tich']) && $_GET['dien_tich'] == '50-100') {
                                echo 'selected';
                            } ?>>50m² - 100m²</option>
                            <option value="over100" <?php if (isset($_GET['dien_tich']) && $_GET['dien_tich'] == 'over100') {
                                echo 'selected';
                            } ?>>Trên 100m²</option>
                        </select>
                    </li>
                    <li class="nav-item dropdown mr-2">
                        <select class="form-control" name="gia_tien">
                            <option value="">Giá tiền</option>
                            <option value="under3000" <?php if (isset($_GET['gia_tien']) && $_GET['gia_tien'] == 'under3000') {
                                echo 'selected';
                            } ?>>Dưới 3.000.000</option>
                            <option value="3000-5000" <?php if (isset($_GET['gia_tien']) && $_GET['gia_tien'] == '3000-5000') {
                                echo 'selected';
                            } ?>>3.000.000 - 5.000.000</option>
                            <option value="over5000" <?php if (isset($_GET['gia_tien']) && $_GET['gia_tien'] == 'over5000') {
                                echo 'selected';
                            } ?>>Trên 5.000.000</option>
                        </select>
                    </li>


                    
                    
                    <button class="btn btn-info">Tìm kiếm</button>
                </ul>
            </form>
        </div>
    </div>
</nav>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
    $(document).ready(function() {

        $('#tinh_thanhpho').on('change', function() {
            var idTinhThanhPho = $(this).val();

            $.ajax({
                url: '<?php echo e(route('baiviet.ajax_quanhuyen')); ?>' + '/?idtinhthanhpho=' +
                    idTinhThanhPho,
                type: 'GET',
                success: function(data) {
                    console.log(data);
                    $('#quan_huyen').empty();
                    // Cập nhật dữ liệu quận/huyện
                    $.each(data, function(index, item) {
                        $('#quan_huyen').append($('<option>', {
                            value: item.id,
                            text: item.name
                        }));
                    });
                }
            });
        });


        $('#quan_huyen').on('change', function() {
            var idQuanHuyen = $(this).val();

            $.ajax({
                url: '<?php echo e(route('baiviet.ajax_phuongxa')); ?>' + '/?idquanhuyen=' +
                    idQuanHuyen,
                type: 'GET',
                success: function(data) {
                    console.log(data);
                    $('#phuong_xa').empty();

                    // Cập nhật dữ liệu quận/huyện
                    $.each(data, function(index, item) {
                        $('#phuong_xa').append($('<option>', {
                            value: item.id,
                            text: item.name
                        }));
                    });
                }
            });
        });
    });
</script>
<?php /**PATH C:\xampp\htdocs\nhatro\resources\views/layouts/nav.blade.php ENDPATH**/ ?>