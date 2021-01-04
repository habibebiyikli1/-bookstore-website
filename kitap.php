<?php
if (empty($_GET["id"])) {
    exit(0);
}
$id = $_GET["id"];

if (!empty($_POST["kitapver"])) {
    $alanad = $_POST["alanad"];
    $kimlikno = $_POST["kimlikno"];
    $tarih = $_POST["tarih"];
    AlinanKitapEkle($id, $alanad, $kimlikno, $tarih);
    header("Location: /?sayfa=kitap&id=$id");
}

if (!empty($_POST["kitapbirak"])) {
    AlinanKitapSil($id);
    header("Location: /?sayfa=kitap&id=$id");
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
    $satir = KitapGetir($id);
    $resim = "resim.png";
    if ($satir["resim"] != "") {
        $resim = $satir["resim"];
    }
    $kitapalindi = false;
    $durum = "";
    $renk = "";
    $alinankitap = AlinanKitapGetir($id);
    if ($alinankitap == null) {
        $durum = "Müsait";
        $renk = "#01608c";
    } else {
        $kitapalindi = true;
        $durum = "Alınmış";
        $renk = "#a62c23";
    }
    ?>
    <div class="row">
        <div class="col-4">
            <h4 class="text-muted">Kitap ID: <?php echo $satir["id"]; ?></h4>
            <img src="/resim/<?php echo $resim; ?>" style="width: 300px;height: 400px;border-radius: 7px;"/>
        </div>
        <div class="col-8">
            <h4 class="text-muted">Kitap Özellikleri</h4>
            <br/>
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th scope="col">Ad</th>
                    <th scope="col">Yazar</th>
                    <th scope="col">Özellik</th>
                    <th scope="col">Basım Tarihi</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><?php echo $satir["ad"]; ?></td>
                    <td><?php echo $satir["yazar"]; ?></td>
                    <td><?php echo $satir["ozellik"]; ?></td>
                    <td><?php echo $satir["basimtarih"]; ?></td>
                </tr>
                </tbody>
            </table>
            <br/>
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th scope="col">Salon</th>
                    <th scope="col">Raf Numarası</th>
                    <th scope="col">Sayfa Sayısı</th>
                    <th scope="col">Durum</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><?php echo $satir["salon"]; ?></td>
                    <td><?php echo $satir["rafno"]; ?></td>
                    <td><?php echo $satir["sayfa"]; ?></td>
                    <td style="color: <?php echo $renk; ?>"><?php echo $durum; ?></td>
                </tr>
                </tbody>
            </table>
            <?php if (isset($_SESSION["admin"])) { ?>
                <div class="row">
                    <div class="col-12">
                        <a href="/?sayfa=kitapguncelle&id=<?php echo $satir["id"]; ?>">
                            <button type="button" class="btn btn-dark">Güncelle</button>
                        </a>
                    </div>
                </div>
                <hr/>
                <?php
                if ($kitapalindi) {
                    ?>
                    <div class="row">
                        <div class="col-12">
                            <form action="#" method="post">
                                <div class="form-row">
                                    <div class="form-group col">
                                        <label>Alan Kişinin Adı</label>
                                        <p class="lead"
                                           style="background-color: #f5f5f5;padding: 5px;border-radius: 7px;">
                                            <?php echo $alinankitap["alanad"]; ?>
                                        </p>
                                    </div>
                                    <div class="form-group col">
                                        <label>Kimlik Numarası</label>
                                        <p class="lead"
                                           style="background-color: #f5f5f5;padding: 5px;border-radius: 7px;">
                                            <?php echo $alinankitap["alankimlik"]; ?>
                                        </p>
                                    </div>
                                    <div class="form-group col">
                                        <label>Tarih</label>
                                        <p class="lead"
                                           style="background-color: #f5f5f5;padding: 5px;border-radius: 7px;">
                                            <?php echo explode(" ", $alinankitap["tarih"])[0]; ?>
                                        </p>
                                    </div>
                                    <div class="form-group col text-center">
                                        <label style="visibility: hidden;">Buton</label><br/>
                                        <button type="submit" name="kitapbirak" value="birak" class="btn btn-dark">
                                            Kitabı Serbest Bırak
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                <?php } else { ?>
                    <div class="row">
                        <div class="col-12">
                            <form action="" method="post">
                                <div class="form-row">
                                    <div class="form-group col">
                                        <label>Alan Kişinin Adı</label>
                                        <input type="text" class="form-control" placeholder="Ad.." maxlength="50"
                                               name="alanad"
                                               required>
                                    </div>
                                    <div class="form-group col">
                                        <label>Kimlik Numarası</label>
                                        <input type="number" class="form-control" placeholder="Numara.." max="999999999"
                                               name="kimlikno"
                                               required>
                                    </div>
                                    <div class="form-group col">
                                        <label>Tarih</label>
                                        <input type="date" class="form-control" name="tarih" required>
                                    </div>
                                    <div class="form-group col text-center">
                                        <label style="visibility: hidden;">Buton</label><br/>
                                        <button type="submit" name="kitapver" value="ver" class="btn btn-dark">Kitabı
                                            Ver
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                <?php } ?>
            <?php } ?>
        </div>
    </div>
    <?php include "footer.php"; ?>
</div>
</body>
</html>