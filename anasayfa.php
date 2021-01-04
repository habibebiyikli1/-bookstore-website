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
            <h3 class="text-muted">Son Eklenen Kitaplar</h3>
            <hr>
            <?php
            $satirlar = KitaplarGetir();
            for ($i = 0; $i < count($satirlar); $i++) {
                if ($i % 3 == 0) {
                    echo "<div class='row'>";
                }
                $satir = $satirlar[$i];
                $resim = "resim.png";
                if ($satir["resim"] != "") {
                    $resim = $satir["resim"];
                }
                ?>
                <div class="col-4 text-center">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="/resim/<?php echo $resim; ?>"
                             style="width: 286px;height: 180px;">
                        <div class="card-body">
                            <h5 class="card-title"><?php echo $satir["ad"]; ?></h5>
                            <p class="card-text">
                            <p>Yazar: <?php echo $satir["yazar"]; ?></p>
                            <p>Özellik: <?php echo $satir["ozellik"]; ?></p>
                            </p>
                            <a href="/?sayfa=kitap&id=<?php echo $satir["id"]; ?>" class="btn btn-primary">Kitabı
                                Görüntüle</a>
                        </div>
                    </div>
                </div>
                <?php
                if ($i % 3 == 2 || $i == count($satirlar) - 1) {
                    echo "</div>";
                }
            }
            ?>
        </div>
    </div>
    <?php include "footer.php"; ?>
</div>
</body>
</html>
