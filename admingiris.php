<?php
if (!empty($_POST["admingiris"])) {
    $nick = $_POST["nick"];
    $sifre = $_POST["sifre"];
    $adminbilgi = AdminBilgi();
    if ($adminbilgi["nick"] == $nick && $adminbilgi["sifre"] == $sifre) {
        $_SESSION["admin"] = "true";
    }
    header("Location: /");
}

if (isset($_SESSION["admin"])) {
    header("Location: /");
}

?>
<!doctype html>
<html>
<head>
    <title>Giriş</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width-device-width, initial-scale=1, maximum-scale=1"/>
    <link rel="shortcut icon" href="resim/ico.ico"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <script src="js/jquery-3.3.1.slim.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col"></div>
        <div class="col text-center" style="padding-top: 150px;">
            <div class="card bg-dark text-white" style="width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title">Admin Girişi</h5>
                    <hr/>
                    <form action="" method="post">
                        <div class="form-group">
                            <input type="text" name="nick" class="form-control" placeholder="Kullanıcı Adı"
                                   maxlength="50">
                        </div>
                        <div class="form-group">
                            <input type="password" name="sifre" class="form-control" placeholder="Şifre" maxlength="50">
                        </div>
                        <button type="submit" name="admingiris" value="giris" class="btn btn-light">Giriş</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="col"></div>
    </div>
</div>
</body>
</html>
