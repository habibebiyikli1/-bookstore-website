<br/>
<div class="row">
    <div class="col-12">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="/">Kütüphane</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="/">Anasayfa <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="/?sayfa=kitaplar">Kitaplar</a>
                    </li>
                    <?php if (isset($_SESSION["admin"])) { ?>
                        <li class="nav-item active">
                            <a class="nav-link" href="/?sayfa=kitapekle">Kitap Ekle</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="/?sayfa=ayarlar">Ayarlar</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="/?sayfa=cikisyap">Çıkış Yap</a>
                        </li>
                    <?php } ?>
                </ul>
                <form class="form-inline my-2 my-lg-0" action="" method="get">
                    <input class="form-control mr-sm-2" type="search" placeholder="Kitap Ara.." name="ara">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit" name="sayfa" value="kitapara">Ara
                    </button>
                </form>
            </div>
        </nav>
    </div>
</div>
<br/>