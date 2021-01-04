<?php
if (!empty($_POST["adminguncelle"])) {
    AdminBilgiGuncelle($_POST["nick"], $_POST["sifre"]);
    header("Location: /?sayfa=ayarlar");
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
    <?php
    $admin = AdminBilgi();
    ?>
    <div class="row">
        <div class="col-12 text-center">
            <h3 class="text-muted">Ayarlar</h3>
            <hr>
        </div>
    </div>
    <div class="row">
        <div class="col"></div>
        <div class="col">
            <form action="" method="post">
                <div class="form-group">
                    <label>Kullanıcı Adı:</label>
                    <input type="text" name="nick" class="form-control" placeholder="Yeni Kullanıcı Adı.."
                           value="<?php echo $admin["nick"]; ?>" maxlength="50">
                </div>
                <div class="form-group">
                    <label>Şifre:</label>
                    <input type="text" name="sifre" class="form-control" placeholder="Yeni Şifre.."
                           value="<?php echo $admin["sifre"]; ?>" maxlength="50">
                </div>
                <button class="btn btn-primary" type="submit" name="adminguncelle" value="guncelle">Güncelle</button>
            </form>
        </div>
        <div class="col"></div>
    </div>
    <?php include "footer.php"; ?>
</div>
</body>
</html>
