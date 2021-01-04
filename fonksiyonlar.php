<?php

function Baglan()
{
    try {
        $db = new PDO("mysql:host=localhost;dbname=kutuphane;charset=utf8", "root", "");
        return $db;
    } catch (PDOException $e) {
        print $e->getMessage();
        return null;
    }
}

function AdminBilgi()
{
    $db = Baglan();
    $query = $db->prepare("SELECT * FROM admin WHERE id = 1");
    $query->execute();
    $satir = $query->fetch(PDO::FETCH_ASSOC);
    return $satir;
}

function AdminBilgiGuncelle($nick, $sifre)
{
    $db = Baglan();
    $query = $db->prepare("UPDATE admin SET nick=?,sifre=? WHERE id = 1");
    $query->execute(array($nick, $sifre));
}

function KitapEkle($ad, $yazar, $basimtarih, $sayfa, $salon, $rafno, $ozellik, $resim)
{
    $db = baglan();
    $query = $db->prepare("INSERT INTO kitaplar (ad,yazar,basimtarih,sayfa,salon,rafno,ozellik,resim) VALUES (?,?,?,?,?,?,?,?)");
    $query->execute(array(
        $ad, $yazar, $basimtarih, $sayfa, $salon, $rafno, $ozellik, $resim
    ));
}

function KitapGuncelle($id, $ad, $yazar, $basimtarih, $sayfa, $salon, $rafno, $ozellik, $resim)
{
    $db = Baglan();
    $query = $db->prepare("UPDATE kitaplar SET ad=?,yazar=?,basimtarih=?,sayfa=?,salon=?,rafno=?,ozellik=?,resim=? WHERE id = ?");
    $query->execute(array(
        $ad, $yazar, $basimtarih, $sayfa, $salon, $rafno, $ozellik, $resim, $id
    ));
}

function AlinanKitapEkle($kitapid, $alanad, $alankimlik, $tarih)
{
    $db = baglan();
    $query = $db->prepare("INSERT INTO alinankitaplar (kitapid,alanad,alankimlik,tarih) VALUES (?,?,?,?)");
    $query->execute(array(
        $kitapid, $alanad, $alankimlik, $tarih
    ));
}

function AlinanKitapSil($kitapid)
{
    $db = Baglan();
    $query = $db->prepare("DELETE FROM alinankitaplar WHERE kitapid = ?");
    $query->execute(array($kitapid));
}

function AlinanKitapGetir($kitapid)
{
    $db = Baglan();
    $query = $db->prepare("SELECT * FROM alinankitaplar WHERE kitapid = ?");
    $query->execute(array($kitapid));
    $satir = $query->fetch(PDO::FETCH_ASSOC);
    return $satir;
}

function KitapSil($id)
{
    $db = Baglan();
    $query = $db->prepare("DELETE FROM kitaplar WHERE id = ?");
    $query->execute(array($id));
}

function KitapGetir($id)
{
    $db = Baglan();
    $query = $db->prepare("SELECT * FROM kitaplar WHERE id = ?");
    $query->execute(array($id));
    $satir = $query->fetch(PDO::FETCH_ASSOC);
    return $satir;
}

function KitaplarGetir()
{
    $db = Baglan();
    $query = $db->prepare("SELECT * FROM kitaplar ORDER BY id DESC");
    $query->execute();
    $satir = $query->fetch(PDO::FETCH_ASSOC);
    $satirlar = [];
    while ($satir) {
        array_push($satirlar, $satir);
        $satir = $query->fetch(PDO::FETCH_ASSOC);
    }
    return $satirlar;
}

function KitapAra($ad, $yazar)
{
    $sorgu = "select * from kitaplar";
    $filtre = false;
    if ($ad != "") {
        $sorgu .= " where ad like '%" . $ad . "%'";
        $filtre = true;
    }
    if ($yazar != "") {
        if ($filtre) {
            $sorgu .= " or yazar like '%" . $yazar . "%'";
        } else {
            $sorgu .= " where yazar like '%" . $yazar . "%'";
        }
    }
    $db = Baglan();
    $query = $db->prepare($sorgu);
    $query->execute();
    $satir = $query->fetch(PDO::FETCH_ASSOC);
    $satirlar = [];
    while ($satir) {
        array_push($satirlar, $satir);
        $satir = $query->fetch(PDO::FETCH_ASSOC);
    }
    return $satirlar;
}


?>