<?php
if (!isset($_SESSION["admin"])) {
    exit(0);
}

if (!empty($_POST["kitapekle"])) {
    KitapEkle($_POST["ad"], $_POST["yazar"], $_POST["basimtarih"], $_POST["sayfa"], $_POST["salon"], $_POST["rafno"], $_POST["ozellik"],
        $_POST["resim"]);
    header("Location: /?sayfa=kitaplar");
}

?>
<!doctype html>
<html>
<head>
    <title>Kütüphane</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width-device-width, initial-scale=1, maximum-scale=1"/>
    <link rel="shortcut icon" href="/resim/ico.ico"/>
    <link rel="stylesheet" href="/css/bootstrap.min.css"/>
    <script src="/js/jquery-3.3.1.slim.min.js"></script>
    <script src="/js/popper.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <?php include "navbar.php"; ?>
    <div class="row">
        <div class="col-12 text-center">
            <h3 class="text-muted">Kitap Ekleme</h3>
            <hr>
        </div>
    </div>
    <div class="row">
        <div class="col-12">
            <form action="" method="post">
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label>Ad</label>
                        <input type="text" class="form-control" name="ad" placeholder="Ad..">
                    </div>
                    <div class="form-group col-md-4">
                        <label>Yazar</label>
                        <input type="text" class="form-control" name="yazar" placeholder="Yazar..">
                    </div>
                    <div class="form-group col-md-4">
                        <label>Özellik</label>
                        <input type="text" class="form-control" name="ozellik" placeholder="Özellik..">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label>Salon</label>
                        <input type="text" class="form-control" name="salon" placeholder="Salon..">
                    </div>
                    <div class="form-group col-md-4">
                        <label>Raf No</label>
                        <input type="text" class="form-control" name="rafno" placeholder="Raf No..">
                    </div>
                    <div class="form-group col-md-4">
                        <label>Sayfa Sayısı</label>
                        <input type="number" min="0" step="1" class="form-control" name="sayfa">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label>Basım Tarihi</label>
                        <input type="number" class="form-control" name="basimtarih" min="1900" max="2099" step="1">
                    </div>
                    <div class="form-group col-md-4">
                        <label>Resim</label>
                        <input type="text" class="form-control" name="resim" placeholder="Resim yolu..">
                    </div>
                    <div class="form-group col-md-4 text-right">
                        <label style="visibility: hidden">Ekle</label><br/>
                        <button type="submit" class="btn btn-primary" name="kitapekle" value="Ekle">Kitabı Ekle</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <?php include "footer.php"; ?>
</div>
</body>
</html>
