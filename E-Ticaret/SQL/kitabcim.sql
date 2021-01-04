-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 01 Tem 2019, 06:26:57
-- Sunucu sürümü: 10.2.22-MariaDB
-- PHP Sürümü: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `hayaligr_tic`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayar`
--

CREATE TABLE `ayar` (
  `ayar_id` int(11) NOT NULL,
  `ayar_logo` varchar(250) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ayar_url` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ayar_title` varchar(250) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ayar_description` varchar(250) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ayar_keywords` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ayar_author` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ayar_tel` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ayar_gsm` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ayar_faks` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ayar_mail` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ayar_ilce` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ayar_il` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ayar_adres` varchar(250) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ayar_mesai` varchar(250) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ayar_maps` varchar(250) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ayar_analystic` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ayar_zopim` varchar(250) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ayar_facebook` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ayar_twitter` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ayar_google` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ayar_youtube` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ayar_smtphost` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ayar_smtpuser` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ayar_smtppassword` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ayar_smtpport` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ayar_bakim` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ayar`
--

INSERT INTO `ayar` (`ayar_id`, `ayar_logo`, `ayar_url`, `ayar_title`, `ayar_description`, `ayar_keywords`, `ayar_author`, `ayar_tel`, `ayar_gsm`, `ayar_faks`, `ayar_mail`, `ayar_ilce`, `ayar_il`, `ayar_adres`, `ayar_mesai`, `ayar_maps`, `ayar_analystic`, `ayar_zopim`, `ayar_facebook`, `ayar_twitter`, `ayar_google`, `ayar_youtube`, `ayar_smtphost`, `ayar_smtpuser`, `ayar_smtppassword`, `ayar_smtpport`, `ayar_bakim`) VALUES
(0, 'dimg/26750logo.jpg', 'http://www.kitapcim.com', 'Kitapçım', 'Kitapçım', 'eticaret, shopping, php, kitapcim, student php', 'kitapcim.com', '0000 000 00 00', '0000 000 00 00', '0000 000 00 00', 'info@kitapcim.com', 'SANCAKTEPE', 'İSTANBUL', 'Kitapcim A.Ş.. Ebubekir Cad. No: 73 ', '09:00-21:00', 'ayar_maps_api_kodu', 'ayar_analystic_kodu', 'ayar_zopima_kodu', 'www.facebook.com/kitabcim', 'www.twitter.com/kitabcim', 'www.google.com/kitabcim', 'www.youtube.com/ktabcim', 'mail.kitapcim.com.tr', 'info@kitapcim.com.tr', '1234', '25', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `banka`
--

CREATE TABLE `banka` (
  `banka_id` int(11) NOT NULL,
  `banka_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `banka_iban` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `banka_hesapadsoyad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `banka_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `banka`
--

INSERT INTO `banka` (`banka_id`, `banka_ad`, `banka_iban`, `banka_hesapadsoyad`, `banka_durum`) VALUES
(1, 'Garanti Bankası', 'TR98755656564564546788784554', 'Habibe BIYIKLI', '1'),
(2, 'Yapı Kredi', 'TR45646545646545646465546', 'Habibe BIYIKLI', '1'),
(3, 'Vakıfbank', 'TR455645645646546465465545545', 'Habibe BIYIKLI', '1'),
(5, 'Ziraat Bankası', 'TR1425645545445645645656', 'Habibe BIYIKLI', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `hakkimizda_id` int(11) NOT NULL,
  `hakkimizda_baslik` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_icerik` text COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_video` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_vizyon` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_misyon` varchar(500) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`hakkimizda_id`, `hakkimizda_baslik`, `hakkimizda_icerik`, `hakkimizda_video`, `hakkimizda_vizyon`, `hakkimizda_misyon`) VALUES
(0, 'Kitapçım', '', '8Ptu7qUQM6A', 'Her kitap ayrı bir dünyadır. Bu dünyaları keşifte sizin yolunuz olmak istiyorum.', 'Her kitap ayrı bir dünyadır. Bu dünyaları keşifte sizin yolunuz olmak istiyorum.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_ad` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_ust` int(2) DEFAULT 0,
  `kategori_seourl` varchar(250) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_sira` int(2) DEFAULT NULL,
  `kategori_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_ad`, `kategori_ust`, `kategori_seourl`, `kategori_sira`, `kategori_durum`) VALUES
(13, 'Psikoloji', 0, 'psikoloji', 1, '1'),
(14, 'Sanat', 0, 'sanat', 2, '1'),
(15, 'Tarih', 0, 'tarih', 3, '1'),
(16, 'Turizm Gezi', 0, 'turizm-gezi', 4, '1'),
(17, 'Siyaset', 0, 'siyaset', 5, '1'),
(18, 'İslam', 0, 'islam', 6, '1'),
(19, 'Hobi', 0, 'hobi', 7, '1'),
(21, 'Kültür', 0, 'kultur', 8, '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `kullanici_id` int(11) NOT NULL,
  `kullanici_zaman` datetime NOT NULL DEFAULT current_timestamp(),
  `kullanici_resim` varchar(250) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kullanici_tc` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kullanici_ad` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kullanici_mail` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kullanici_gsm` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kullanici_password` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kullanici_adsoyad` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kullanici_adres` varchar(250) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kullanici_il` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kullanici_ilce` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kullanici_unvan` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kullanici_yetki` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kullanici_durum` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`kullanici_id`, `kullanici_zaman`, `kullanici_resim`, `kullanici_tc`, `kullanici_ad`, `kullanici_mail`, `kullanici_gsm`, `kullanici_password`, `kullanici_adsoyad`, `kullanici_adres`, `kullanici_il`, `kullanici_ilce`, `kullanici_unvan`, `kullanici_yetki`, `kullanici_durum`) VALUES
(157, '2019-05-31 18:01:03', 'Berkay_Ceylan.png', '1234', NULL, 'habibe', NULL, '123456', 'Habibe', NULL, NULL, NULL, NULL, '5', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_ust` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `menu_ad` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `menu_detay` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `menu_url` varchar(250) COLLATE utf8_turkish_ci DEFAULT NULL,
  `menu_sira` int(2) DEFAULT NULL,
  `menu_durum` enum('0','1') COLLATE utf8_turkish_ci DEFAULT NULL,
  `menu_seourl` varchar(250) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_ust`, `menu_ad`, `menu_detay`, `menu_url`, `menu_sira`, `menu_durum`, `menu_seourl`) VALUES
(1, '0', 'Hakkımızda', '', 'hakkimizda', 1, '1', 'hakkimizda'),
(2, '0', 'İletişim', '', 'iletisim', 5, '1', 'iletisim'),
(4, '0', 'Kategoriler', '', 'kategoriler', 2, '1', 'kategoriler'),
(6, '', 'Gizlilik Koşullarımız', '<p>KİŞİSEL VERİLERİN İŞLENMESİ AYDINLATMA METNİ</p>\r\n\r\n<p>Kitap&ccedil;ım A.Ş. olarak kişiler verilerinizin gizliliği ve g&uuml;venliğine b&uuml;y&uuml;k &ouml;nem vermekteyiz. G&ouml;stermiş olduğumuz bu &ouml;nem şirket politikamızın bir yansıması olmasının yanı sıra ilgili yasal mevzuat uyarınca da yasal bir y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;m&uuml;zd&uuml;r. Kitap&ccedil;ım A.Ş. olarak m&uuml;şterilerimizin bilgilerini koruma ve yasal mevzuata uyma adına gerekli her t&uuml;rl&uuml; idari ve teknik tedbiri almakta ve t&uuml;m &ccedil;alışanlarımızın bu konuda gereken hassasiyeti g&ouml;stermeleri i&ccedil;in gerekli bildirimleri ve uyarıları yaparak m&uuml;şteri bilgilerinin korunması hususunu &ouml;nemle g&ouml;z &ouml;n&uuml;nde bulundurmaktayız.</p>\r\n\r\n<p>a) Veri Sorumlusunun Kimliği</p>\r\n\r\n<p>6698 sayılı Kişisel Verilerin Korunması Kanunu (&ldquo;6698 sayılı Kanun&rdquo;) uyarınca, kişisel verileriniz; veri sorumlusu olarak BİM Birleşik Mağazalar A.Ş. tarafından aşağıda a&ccedil;ıklanan kapsamda işlenebilecektir.</p>\r\n\r\n<p>b) Kişisel Verilerin Hangi Ama&ccedil;la İşleneceği</p>\r\n\r\n<p>Otomatik olan ve otomatik olmayan y&ouml;ntemlerle internet sitemiz, &ccedil;ağrı merkezimiz ve benzeri vasıtalar &uuml;zerinden topladığımız ve bizimle paylaştığınız kişisel verileriniz, sizlere daha iyi hizmet verilebilmesi, satışa sunulan &uuml;r&uuml;nlerle ilgili bilgi verilmesi, şirketimiz ve şirketimizle iş ilişkisi i&ccedil;erisinde olan kişilerin hukuki ve ticari g&uuml;venliğinin temini, şirketimiz tarafından sunulan &uuml;r&uuml;n ve hizmetlerden m&uuml;şterilerimizi faydalandırmak i&ccedil;in gerekli &ccedil;alışmaların iş birimlerimiz tarafından yapılması, şirketimizin ticari ve iş stratejilerinin belirlenmesi ve uygulanması ile taleplerinizin yerine getirilmesi, ger&ccedil;ekleştirilen iş başvuru bilgilerinin anlaşmalı insan kaynakları sitesine aktarımı ve mağaza yeri potansiyeli taşıyan gayrimenkule ilişkin bilgi edinilmesi ama&ccedil;larıyla 6698 sayılı Kanun&rsquo;un 5. ve 6. maddelerinde belirtilen kişisel veri işleme şartları ve ama&ccedil;ları dahilinde işlenecektir</p>\r\n\r\n<p>c) İşlenen Kişisel Verilerin Kimlere ve Hangi Ama&ccedil;la Aktarılabileceği</p>\r\n\r\n<p>Toplanan kişisel verileriniz; yukarıda belirtilen ama&ccedil;ların ger&ccedil;ekleştirilmesi ile sınırlı olmak &uuml;zere iş ortaklarımıza, hissedarlarımıza, iştiraklerimize, kanunen yetkili kamu kurumları ve &ouml;zel hukuk kişilerine, 6698 sayılı Kanun&rsquo;un 8. ve 9. maddelerinde belirtilen kişisel veri işleme şartları ve ama&ccedil;ları &ccedil;er&ccedil;evesinde aktarılabilecektir.</p>\r\n\r\n<p>d) Kişisel Veri Toplamanın Y&ouml;ntemi ve Hukuki Sebepleri</p>\r\n\r\n<p>Kişisel verileriniz, Şirketimiz tarafından yukarıda belirtilen ama&ccedil;larla kullanılmak &uuml;zere &ccedil;eşitli kanallarla ve hukuki sebeplere dayanarak toplanabilmektedir. Kişisel verileriniz 6698 sayılı Kanun&rsquo;un 5. ve 6. maddelerinde belirtilen kişisel veri işleme şartları ve ama&ccedil;ları kapsamında işbu metnin (b) ve (c) başlıklı maddelerinde belirtilen ama&ccedil;larla işlenebilmekte ve aktarılabilmektedir.</p>\r\n\r\n<p>e) 6698 sayılı Kanun Kapsamındaki Haklarınız</p>\r\n\r\n<p>Kişisel veri sahipleri olarak, 6698 sayılı Kanun&rsquo;un 11. Maddesi uyarınca:</p>\r\n\r\n<p>a) Kişisel veri işlenip işlenmediğini &ouml;ğrenme,</p>\r\n\r\n<p>b) Kişisel verileri işlenmişse buna ilişkin bilgi talep etme,</p>\r\n\r\n<p>c) Kişisel verilerin işlenme amacını ve bunların amacına uygun kullanılıp kullanılmadığını &ouml;ğrenme,</p>\r\n\r\n<p>&ccedil;) Yurt i&ccedil;inde veya yurt dışında kişisel verilerin aktarıldığı &uuml;&ccedil;&uuml;nc&uuml; kişileri bilme,</p>\r\n\r\n<p>d) Kişisel verilerin eksik veya yanlış işlenmiş olması h&acirc;linde bunların d&uuml;zeltilmesini isteme,</p>\r\n\r\n<p>e) Kişisel verilerin eksik veya yanlış işlenmiş olması h&acirc;linde bunların d&uuml;zeltilmesini isteme ve bu kapsamda yapılan işlemin kişisel verilerin aktarıldığı &uuml;&ccedil;&uuml;nc&uuml; kişilere bildirilmesini isteme,</p>\r\n\r\n<p>f) 6698 sayılı Kanun ve ilgili diğer kanun h&uuml;k&uuml;mlerine uygun olarak işlenmiş olmasına rağmen, işlenmesini gerektiren sebeplerin ortadan kalkması h&acirc;linde kişisel verilerin silinmesini veya yok edilmesini isteme ve bu kapsamda yapılan işlemin kişisel verilerin aktarıldığı &uuml;&ccedil;&uuml;nc&uuml; kişilere bildirilmesini isteme,</p>\r\n\r\n<p>g) İşlenen verilerin m&uuml;nhasıran otomatik sistemler vasıtasıyla analiz edilmesi suretiyle kişinin kendisi aleyhine bir sonucun ortaya &ccedil;ıkmasına itiraz etme,</p>\r\n\r\n<p>ğ) Kişisel verilerin kanuna aykırı olarak işlenmesi sebebiyle zarara uğraması h&acirc;linde zararın giderilmesini talep etme</p>\r\n\r\n<p>haklarına sahip olduğunuzu belirtmek isteriz.</p>\r\n\r\n<p>Kişisel veri sahipleri olarak, haklarınıza ilişkin taleplerinizi yazılı bir şekilde şirketimize Abdurrahmangazi Mah. Ebubekir Cad. No:73 Sancaktepe İSTANBUL/T&Uuml;RKİYE adresine iadeli taahh&uuml;tl&uuml; mektupla iletmeniz durumunda şirketimiz talebin niteliğine g&ouml;re talebi en kısa s&uuml;rede ve en ge&ccedil; 30 (otuz) g&uuml;n i&ccedil;inde &uuml;cretsiz olarak sonu&ccedil;landıracaktır. Ancak, işlemin ayrıca bir maliyeti gerektirmesi halinde, şirketimiz tarafından Kişisel Verileri Koruma Kurulunca belirlenen tarifedeki &uuml;cret alınacaktır.</p>\r\n', 'sayfa-gizlilik-kosullarimiz', 3, '1', 'gizlilik-kosullarimiz'),
(11, '', 'Mesafeli satış sözleşmesi', '<p>MESAFELİ S&Ouml;ZLEŞMELER Y&Ouml;NETMELİĞİ</p>\r\n\r\n<p>BİRİNCİ B&Ouml;L&Uuml;M</p>\r\n\r\n<p>Ama&ccedil;, Kapsam, Dayanak ve Tanımlar</p>\r\n\r\n<p><strong>Ama&ccedil;</strong></p>\r\n\r\n<p><strong>MADDE 1 &ndash;</strong>&nbsp;(1) Bu Y&ouml;netmeliğin amacı, mesafeli s&ouml;zleşmelere ilişkin uygulama usul ve esaslarını d&uuml;zenlemektir.</p>\r\n\r\n<p><strong>Kapsam</strong></p>\r\n\r\n<p><strong>MADDE 2 &ndash;</strong>&nbsp;(1) Bu Y&ouml;netmelik, mesafeli s&ouml;zleşmelere uygulanır.</p>\r\n\r\n<p>(2) Bu Y&ouml;netmelik h&uuml;k&uuml;mleri;</p>\r\n\r\n<p>a) Finansal hizmetler,</p>\r\n\r\n<p>b) Otomatik makineler aracılığıyla yapılan satışlar,</p>\r\n\r\n<p>c) Halka a&ccedil;ık telefon vasıtasıyla telekom&uuml;nikasyon operat&ouml;rleriyle bu telefonun kullanımı,</p>\r\n\r\n<p>&ccedil;) Bahis, &ccedil;ekiliş, piyango ve benzeri şans oyunlarına ilişkin hizmetler,</p>\r\n\r\n<p>d) Taşınmaz malların veya bu mallara ilişkin hakların oluşumu, devri veya kazanımı,</p>\r\n\r\n<p>e) Konut kiralama,</p>\r\n\r\n<p>f) Paket turlar,</p>\r\n\r\n<p>g) Devre m&uuml;lk, devre tatil, uzun s&uuml;reli tatil hizmeti ve bunların yeniden satımı veya değişimi,</p>\r\n\r\n<p>ğ) Yiyecek ve i&ccedil;ecekler gibi g&uuml;nl&uuml;k t&uuml;ketim maddelerinin, satıcının d&uuml;zenli teslimatları &ccedil;er&ccedil;evesinde t&uuml;keticinin meskenine veya işyerine g&ouml;t&uuml;r&uuml;lmesi,</p>\r\n\r\n<p>h) 5 inci maddenin birinci fıkrasının (a), (b) ve (d) bentlerindeki bilgi verme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; ile 18 inci ve 19 uncu maddelerde yer alan y&uuml;k&uuml;ml&uuml;l&uuml;kler saklı kalmak koşuluyla yolcu taşıma hizmetleri,</p>\r\n\r\n<p>ı) Malların montaj, bakım ve onarımı,</p>\r\n\r\n<p>i) Bakımevi hizmetleri, &ccedil;ocuk, yaşlı ya da hasta bakımı gibi ailelerin ve kişilerin desteklenmesine y&ouml;nelik sosyal hizmetler</p>\r\n\r\n<p>ile&nbsp;ilgili s&ouml;zleşmelere uygulanmaz.</p>\r\n\r\n<p><strong>Dayanak</strong></p>\r\n\r\n<p><strong>MADDE 3 &ndash;</strong>&nbsp;(1) Bu Y&ouml;netmelik,&nbsp;7/11/2013&nbsp;tarihli ve 6502 sayılı T&uuml;keticinin Korunması Hakkında Kanunun 48 inci ve 84 &uuml;nc&uuml; maddelerine dayanılarak hazırlanmıştır.</p>\r\n\r\n<p><strong>Tanımlar</strong></p>\r\n\r\n<p><strong>MADDE 4 &ndash;</strong>&nbsp;(1) Bu Y&ouml;netmeliğin uygulanmasında;</p>\r\n\r\n<p>a) Dijital i&ccedil;erik: Bilgisayar programı, uygulama, oyun, m&uuml;zik, video ve metin gibi dijital şekilde sunulan her t&uuml;rl&uuml; veriyi,</p>\r\n\r\n<p>b) Hizmet: Bir &uuml;cret veya menfaat karşılığında yapılan ya da yapılması taahh&uuml;t edilen mal sağlama dışındaki her t&uuml;rl&uuml; t&uuml;ketici işleminin konusunu,</p>\r\n\r\n<p>c) Kalıcı veri saklayıcısı: T&uuml;keticinin g&ouml;nderdiği veya kendisine g&ouml;nderilen bilgiyi, bu bilginin amacına uygun olarak makul bir s&uuml;re incelemesine elverecek şekilde kaydedilmesini ve değiştirilmeden kopyalanmasını sağlayan ve bu bilgiye aynen ulaşılmasına&nbsp;imkan&nbsp;veren kısa mesaj, elektronik posta, internet, disk, CD, DVD, hafıza kartı ve benzeri her t&uuml;rl&uuml; ara&ccedil; veya ortamı,</p>\r\n\r\n<p>&ccedil;) Kanun: 6502 sayılı T&uuml;keticinin Korunması Hakkında Kanunu,</p>\r\n\r\n<p>d) Mal: Alışverişe konu olan; taşınır eşya, konut veya tatil ama&ccedil;lı taşınmaz mallar ile elektronik ortamda kullanılmak &uuml;zere hazırlanan yazılım, ses, g&ouml;r&uuml;nt&uuml; ve benzeri her t&uuml;rl&uuml; gayri maddi malları,</p>\r\n\r\n<p>e) Mesafeli s&ouml;zleşme: Satıcı veya sağlayıcı ile t&uuml;keticinin eş zamanlı fiziksel varlığı olmaksızın, mal veya hizmetlerin uzaktan pazarlanmasına y&ouml;nelik olarak oluşturulmuş bir sistem &ccedil;er&ccedil;evesinde, taraflar arasında s&ouml;zleşmenin kurulduğu ana kadar ve kurulduğu an da&nbsp;dahil&nbsp;olmak &uuml;zere uzaktan iletişim ara&ccedil;larının kullanılması suretiyle kurulan s&ouml;zleşmeleri,</p>\r\n\r\n<p>f) Sağlayıcı: Kamu t&uuml;zel kişileri de&nbsp;dahil&nbsp;olmak &uuml;zere ticari veya mesleki ama&ccedil;larla t&uuml;keticiye hizmet sunan ya da hizmet sunanın adına ya da hesabına hareket eden ger&ccedil;ek veya t&uuml;zel kişiyi,</p>\r\n\r\n<p>g) Satıcı: Kamu t&uuml;zel kişileri de&nbsp;dahil&nbsp;olmak &uuml;zere ticari veya mesleki ama&ccedil;larla t&uuml;keticiye mal sunan ya da mal sunanın adına ya da hesabına hareket eden ger&ccedil;ek veya t&uuml;zel kişiyi,</p>\r\n\r\n<p>ğ) T&uuml;ketici: Ticari veya mesleki olmayan ama&ccedil;larla hareket eden ger&ccedil;ek veya t&uuml;zel kişiyi,</p>\r\n\r\n<p>h) Uzaktan iletişim aracı: Mektup, katalog, telefon, faks, radyo, televizyon, elektronik posta mesajı, kısa mesaj, internet gibi fiziksel olarak karşı karşıya gelinmeksizin s&ouml;zleşme kurulmasına&nbsp;imkan&nbsp;veren her t&uuml;rl&uuml; ara&ccedil; veya ortamı,</p>\r\n\r\n<p>ı) Yan s&ouml;zleşme: Bir mesafeli s&ouml;zleşme ile ilişkili olarak satıcı, sağlayıcı ya da &uuml;&ccedil;&uuml;nc&uuml; bir kişi tarafından s&ouml;zleşme konusu mal ya da hizmete ilave olarak t&uuml;keticiye sağlanan mal veya hizmete ilişkin s&ouml;zleşmeyi</p>\r\n\r\n<p>ifade&nbsp;eder.</p>\r\n\r\n<p>İKİNCİ B&Ouml;L&Uuml;M</p>\r\n\r\n<p>&Ouml;n Bilgilendirme Y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;</p>\r\n\r\n<p><strong>&Ouml;n bilgilendirme</strong></p>\r\n\r\n<p><strong>MADDE 5 &ndash;</strong>&nbsp;(1) T&uuml;ketici, mesafeli s&ouml;zleşmenin kurulmasından ya da buna karşılık gelen herhangi bir teklifi kabul etmeden &ouml;nce, aşağıdaki hususların tamamını i&ccedil;erecek şekilde satıcı veya sağlayıcı tarafından bilgilendirilmek zorundadır.</p>\r\n\r\n<p>a) S&ouml;zleşme konusu mal veya hizmetin temel nitelikleri,</p>\r\n\r\n<p>b) Satıcı veya sağlayıcının adı veya unvanı, varsa MERSİS numarası,</p>\r\n\r\n<p>c) T&uuml;keticinin satıcı veya sağlayıcı ile hızlı bir şekilde irtibat kurmasına&nbsp;imkan&nbsp;veren, satıcı veya sağlayıcının a&ccedil;ık adresi, telefon numarası ve benzeri iletişim bilgileri ile varsa satıcı veya sağlayıcının adına ya da hesabına hareket edenin kimliği ve adresi,</p>\r\n\r\n<p>&ccedil;) Satıcı veya sağlayıcının t&uuml;keticinin&nbsp;şikayetlerini&nbsp;iletmesi i&ccedil;in (c) bendinde belirtilenden farklı iletişim bilgileri var ise, bunlara ilişkin bilgi,</p>\r\n\r\n<p>d) Mal veya hizmetin t&uuml;m vergiler&nbsp;dahil&nbsp;toplam fiyatı, niteliği itibariyle &ouml;nceden hesaplanamıyorsa fiyatın hesaplanma usul&uuml;, varsa t&uuml;m nakliye, teslim ve benzeri ek masraflar ile bunların &ouml;nceden hesaplanamaması halinde ek masrafların &ouml;denebileceği bilgisi,</p>\r\n\r\n<p>e) S&ouml;zleşmenin kurulması aşamasında uzaktan iletişim aracının kullanım bedelinin olağan &uuml;cret tarifesi &uuml;zerinden hesaplanamadığı durumlarda, t&uuml;keticilere y&uuml;klenen ilave maliyet,</p>\r\n\r\n<p>f) &Ouml;deme, teslimat, ifaya ilişkin bilgiler ile varsa bunlara ilişkin taahh&uuml;tler ve satıcı veya sağlayıcının&nbsp;şikayetlere&nbsp;ilişkin &ccedil;&ouml;z&uuml;m y&ouml;ntemleri,</p>\r\n\r\n<p>g) Cayma hakkının olduğu durumlarda, bu hakkın kullanılma şartları, s&uuml;resi, usul&uuml; ve satıcının iade i&ccedil;in &ouml;ng&ouml;rd&uuml;ğ&uuml; taşıyıcıya ilişkin bilgiler,</p>\r\n\r\n<p>ğ) Cayma bildiriminin yapılacağı a&ccedil;ık adres, faks numarası veya elektronik posta bilgileri,</p>\r\n\r\n<p>h) 15 inci madde uyarınca cayma hakkının kullanılamadığı durumlarda, t&uuml;keticinin cayma hakkından faydalanamayacağına ya da hangi koşullarda cayma hakkını kaybedeceğine ilişkin bilgi,</p>\r\n\r\n<p>ı) Satıcı veya sağlayıcının talebi &uuml;zerine, varsa t&uuml;ketici tarafından &ouml;denmesi veya sağlanması gereken depozitolar ya da diğer mali teminatlar ve bunlara ilişkin şartlar,</p>\r\n\r\n<p>i) Varsa dijital i&ccedil;eriklerin işlevselliğini etkileyebilecek teknik koruma &ouml;nlemleri,</p>\r\n\r\n<p>j) Satıcı veya sağlayıcının bildiği ya da makul olarak bilmesinin beklendiği, dijital i&ccedil;eriğin hangi donanım ya da yazılımla birlikte &ccedil;alışabileceğine ilişkin bilgi,</p>\r\n\r\n<p>k) T&uuml;keticilerin uyuşmazlık konusundaki başvurularını T&uuml;ketici Mahkemesine veya T&uuml;ketici Hakem Heyetine yapabileceklerine dair bilgi.</p>\r\n\r\n<p>(2) Birinci fıkrada belirtilen bilgiler, mesafeli s&ouml;zleşmenin ayrılmaz bir par&ccedil;asıdır ve taraflar aksini a&ccedil;ık&ccedil;a kararlaştırmadık&ccedil;a bu bilgiler değiştirilemez.</p>\r\n\r\n<p>(3) Satıcı veya sağlayıcı, birinci fıkranın (d) bendinde yer alan ek masraflara ilişkin bilgilendirme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;n&uuml; yerine getirmezse, t&uuml;ketici bunları karşılamakla y&uuml;k&uuml;ml&uuml; değildir.</p>\r\n\r\n<p>(4) Birinci fıkranın (d) bendinde yer alan toplam fiyatın, belirsiz s&uuml;reli s&ouml;zleşmelerde veya belirli s&uuml;reli abonelik s&ouml;zleşmelerinde, her faturalama d&ouml;nemi bazında toplam masrafları i&ccedil;ermesi zorunludur.</p>\r\n\r\n<p>(5) A&ccedil;ık artırma veya eksiltme yoluyla kurulan s&ouml;zleşmelerde, birinci fıkranın (b), (c) ve (&ccedil;) bentlerinde yer alan bilgilerin yerine a&ccedil;ık artırmayı yapan ile ilgili bilgilere yer verilebilir.</p>\r\n\r\n<p>(6) &Ouml;n bilgilendirme yapıldığına ilişkin ispat y&uuml;k&uuml; satıcı veya sağlayıcıya aittir.</p>\r\n\r\n<p><strong>&Ouml;n bilgilendirme y&ouml;ntemi</strong></p>\r\n\r\n<p><strong>MADDE 6 &ndash;</strong>&nbsp;(1) T&uuml;ketici, 5 inci maddenin birinci fıkrasında belirtilen t&uuml;m hususlarda, kullanılan uzaktan iletişim aracına uygun olarak en az on iki punto b&uuml;y&uuml;kl&uuml;ğ&uuml;nde, anlaşılabilir bir dilde, a&ccedil;ık, sade ve okunabilir bir şekilde satıcı veya sağlayıcı tarafından yazılı olarak veya kalıcı veri saklayıcısı ile bilgilendirilmek zorundadır.</p>\r\n\r\n<p>(2) Mesafeli s&ouml;zleşmenin internet yoluyla kurulması halinde, satıcı veya sağlayıcı;</p>\r\n\r\n<p>a) 5 inci maddenin birinci fıkrasında yer alan bilgilendirme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; saklı kalmak kaydıyla, aynı fıkranın (a), (d), (g) ve (h) bentlerinde yer alan bilgileri bir b&uuml;t&uuml;n olarak, t&uuml;keticinin &ouml;deme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; altına girmesinden hemen &ouml;nce a&ccedil;ık bir şekilde ayrıca g&ouml;stermek,</p>\r\n\r\n<p>b) Herhangi bir g&ouml;nderim kısıtlamasının uygulanıp uygulanmadığını ve hangi &ouml;deme ara&ccedil;larının kabul edildiğini, en ge&ccedil; t&uuml;ketici siparişini vermeden &ouml;nce, a&ccedil;ık ve anlaşılabilir bir şekilde belirtmek</p>\r\n\r\n<p>zorundadır.</p>\r\n\r\n<p>(3) Mesafeli s&ouml;zleşmenin sesli iletişim yoluyla kurulması halinde, satıcı veya sağlayıcı 5 inci maddenin birinci fıkrasının (a), (d), (g) ve (h) bentlerinde yer alan hususlarda, t&uuml;keticiyi sipariş vermeden hemen &ouml;nce a&ccedil;ık ve anlaşılır bir şekilde s&ouml;z konusu ortamda bilgilendirmek ve 5 inci maddenin birinci fıkrasında yer alan bilgilerin tamamını en ge&ccedil; mal teslimine veya hizmet ifasına kadar yazılı olarak g&ouml;ndermek zorundadır.</p>\r\n\r\n<p>(4) Siparişe ilişkin bilgilerin sınırlı alanda ya da zamanda sunulduğu bir ortam yoluyla mesafeli s&ouml;zleşmenin kurulması halinde, satıcı veya sağlayıcı 5 inci maddenin birinci fıkrasının (a), (b), (d), (g) ve (h) bentlerinde yer alan hususlarda, t&uuml;keticiyi sipariş vermeden hemen &ouml;nce a&ccedil;ık ve anlaşılabilir bir şekilde s&ouml;z konusu ortamda bilgilendirmek ve 5 inci maddenin birinci fıkrasında yer alan bilgilerin tamamını en ge&ccedil; mal teslimine veya hizmet ifasına kadar yazılı olarak g&ouml;ndermek zorundadır.</p>\r\n\r\n<p>(5) &Uuml;&ccedil;&uuml;nc&uuml; ve d&ouml;rd&uuml;nc&uuml; fıkralarda belirtilen y&ouml;ntemlerle kurulan ve anında ifa edilen hizmet satışlarına ilişkin s&ouml;zleşmelerde t&uuml;keticinin, sipariş vermeden hemen &ouml;nce s&ouml;z konusu ortamda 5 inci maddenin birinci fıkrasının sadece (a), (b), (d) ve (h) bentlerinde yer alan hususlarda a&ccedil;ık ve anlaşılır bir şekilde bilgilendirilmesi yeterlidir.</p>\r\n\r\n<p><strong>&Ouml;n bilgilerin teyidi</strong></p>\r\n\r\n<p><strong>MADDE 7 &ndash;</strong>&nbsp;(1) Satıcı veya sağlayıcı, t&uuml;keticinin 6&nbsp;ncı&nbsp;maddede belirtilen y&ouml;ntemlerle &ouml;n bilgileri edindiğini kullanılan uzaktan iletişim aracına uygun olarak teyit etmesini sağlamak zorundadır. Aksi halde s&ouml;zleşme kurulmamış sayılır.</p>\r\n\r\n<p><strong>&Ouml;n bilgilendirmeye ilişkin diğer y&uuml;k&uuml;ml&uuml;l&uuml;kler</strong></p>\r\n\r\n<p><strong>MADDE 8 &ndash;</strong>&nbsp;(1) Satıcı veya sağlayıcı, t&uuml;ketici siparişi onaylamadan hemen &ouml;nce, verilen siparişin &ouml;deme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; anlamına geldiği hususunda t&uuml;keticiyi a&ccedil;ık ve anlaşılır bir şekilde bilgilendirmek zorundadır. Aksi halde t&uuml;ketici siparişi ile bağlı değildir.</p>\r\n\r\n<p>(2) T&uuml;keticinin mesafeli s&ouml;zleşme kurulması amacıyla satıcı veya sağlayıcı tarafından telefonla aranması durumunda, her g&ouml;r&uuml;şmenin başında satıcı veya sağlayıcı kimliğini, eğer bir başkası adına veya hesabına arıyorsa bu kişinin kimliğini ve g&ouml;r&uuml;şmenin ticari amacını a&ccedil;ıklamalıdır.</p>\r\n\r\n<p>&Uuml;&Ccedil;&Uuml;NC&Uuml; B&Ouml;L&Uuml;M</p>\r\n\r\n<p>Cayma Hakkının Kullanımı ve Tarafların Y&uuml;k&uuml;ml&uuml;l&uuml;kleri</p>\r\n\r\n<p><strong>Cayma hakkı</strong></p>\r\n\r\n<p><strong>MADDE 9 &ndash;</strong>&nbsp;(1) T&uuml;ketici, on d&ouml;rt g&uuml;n i&ccedil;inde herhangi bir gerek&ccedil;e g&ouml;stermeksizin ve cezai şart &ouml;demeksizin s&ouml;zleşmeden cayma hakkına sahiptir.</p>\r\n\r\n<p>(2) Cayma hakkı s&uuml;resi, hizmet ifasına ilişkin s&ouml;zleşmelerde s&ouml;zleşmenin kurulduğu g&uuml;n; mal teslimine ilişkin s&ouml;zleşmelerde ise t&uuml;keticinin veya t&uuml;ketici tarafından belirlenen &uuml;&ccedil;&uuml;nc&uuml; kişinin malı teslim aldığı g&uuml;n başlar. Ancak t&uuml;ketici, s&ouml;zleşmenin kurulmasından malın teslimine kadar olan s&uuml;re i&ccedil;inde de cayma hakkını kullanabilir.</p>\r\n\r\n<p>(3) Cayma hakkı s&uuml;resinin belirlenmesinde;</p>\r\n\r\n<p>a) Tek sipariş konusu olup ayrı&nbsp;ayrı&nbsp;teslim edilen mallarda, t&uuml;keticinin veya t&uuml;ketici tarafından belirlenen &uuml;&ccedil;&uuml;nc&uuml; kişinin son malı teslim aldığı g&uuml;n,</p>\r\n\r\n<p>b) Birden fazla par&ccedil;adan oluşan mallarda, t&uuml;keticinin veya t&uuml;ketici tarafından belirlenen &uuml;&ccedil;&uuml;nc&uuml; kişinin son par&ccedil;ayı teslim aldığı g&uuml;n,</p>\r\n\r\n<p>c) Belirli bir s&uuml;re boyunca malın d&uuml;zenli tesliminin yapıldığı s&ouml;zleşmelerde, t&uuml;keticinin veya t&uuml;ketici tarafından belirlenen &uuml;&ccedil;&uuml;nc&uuml; kişinin ilk malı teslim aldığı g&uuml;n</p>\r\n\r\n<p>esas&nbsp;alınır.</p>\r\n\r\n<p>(4) Malın satıcı tarafından taşıyıcıya teslimi, t&uuml;keticiye yapılan teslim olarak kabul edilmez.</p>\r\n\r\n<p>(5) Mal teslimi ile hizmet ifasının birlikte yapıldığı s&ouml;zleşmelerde, mal teslimine ilişkin cayma hakkı h&uuml;k&uuml;mleri uygulanır.</p>\r\n\r\n<p><strong>Eksik bilgilendirme</strong></p>\r\n\r\n<p><strong>MADDE 10 &ndash;</strong>&nbsp;(1) Satıcı veya sağlayıcı, cayma hakkı konusunda t&uuml;keticinin bilgilendirildiğini ispat etmekle y&uuml;k&uuml;ml&uuml;d&uuml;r. T&uuml;ketici, cayma hakkı konusunda gerektiği şekilde bilgilendirilmezse, cayma hakkını kullanmak i&ccedil;in on d&ouml;rt g&uuml;nl&uuml;k s&uuml;reyle bağlı değildir. Bu s&uuml;re her hal&uuml;karda cayma s&uuml;resinin bittiği tarihten itibaren bir yıl sonra sona erer.</p>\r\n\r\n<p>(2) Cayma hakkı konusunda gerektiği şekilde bilgilendirmenin bir yıllık s&uuml;re i&ccedil;inde yapılması halinde, on d&ouml;rt g&uuml;nl&uuml;k cayma hakkı s&uuml;resi, bu bilgilendirmenin gereği gibi yapıldığı g&uuml;nden itibaren işlemeye başlar.</p>\r\n\r\n<p><strong>Cayma hakkının kullanımı</strong></p>\r\n\r\n<p><strong>MADDE 11 &ndash;</strong>&nbsp;(1) Cayma hakkının kullanıldığına dair bildirimin cayma hakkı s&uuml;resi dolmadan, yazılı olarak veya kalıcı veri saklayıcısı ile satıcı veya sağlayıcıya y&ouml;neltilmesi yeterlidir.</p>\r\n\r\n<p>(2) Cayma hakkının kullanılmasında t&uuml;ketici,&nbsp;EK&rsquo;te&nbsp;yer alan formu kullanabileceği gibi cayma kararını bildiren a&ccedil;ık bir beyanda da bulunabilir. Satıcı veya sağlayıcı, t&uuml;keticinin bu formu doldurabilmesi veya cayma beyanını g&ouml;nderebilmesi i&ccedil;in internet sitesi &uuml;zerinden se&ccedil;enek de sunabilir.&nbsp;&nbsp;İnternet sitesi &uuml;zerinden t&uuml;keticilere cayma hakkı sunulması durumunda satıcı veya sağlayıcı, t&uuml;keticilerin iletmiş olduğu cayma taleplerinin kendilerine ulaştığına ilişkin teyit bilgisini t&uuml;keticiye derhal iletmek zorundadır.</p>\r\n\r\n<p>(3) Sesli iletişim yoluyla yapılan satışlarda, satıcı veya sağlayıcı,&nbsp;EK&rsquo;te&nbsp;yer alan formu en ge&ccedil; mal teslimine veya hizmet ifasına kadar t&uuml;keticiye g&ouml;ndermek zorundadır. T&uuml;ketici bu t&uuml;r satışlarda da cayma hakkını kullanmak i&ccedil;in bu formu kullanabileceği gibi, ikinci fıkradaki y&ouml;ntemleri de kullanabilir.</p>\r\n\r\n<p>(4) Bu maddede ge&ccedil;en cayma hakkının kullanımına ilişkin ispat y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; t&uuml;keticiye aittir.</p>\r\n\r\n<p><strong>Satıcı veya sağlayıcının y&uuml;k&uuml;ml&uuml;l&uuml;kleri</strong></p>\r\n\r\n<p><strong>MADDE 12 &ndash;</strong>&nbsp;(1) Satıcı veya sağlayıcı, t&uuml;keticinin cayma hakkını kullandığına ilişkin bildirimin kendisine ulaştığı tarihten itibaren on d&ouml;rt g&uuml;n i&ccedil;inde, varsa malın t&uuml;keticiye teslim masrafları da&nbsp;dahil&nbsp;olmak &uuml;zere tahsil edilen t&uuml;m &ouml;demeleri iade etmekle y&uuml;k&uuml;ml&uuml;d&uuml;r.</p>\r\n\r\n<p>(2) Satıcı veya sağlayıcı, birinci fıkrada belirtilen t&uuml;m geri &ouml;demeleri, t&uuml;keticinin satın alırken kullandığı &ouml;deme aracına uygun bir şekilde ve t&uuml;keticiye herhangi bir masraf veya y&uuml;k&uuml;ml&uuml;l&uuml;k getirmeden tek seferde yapmak zorundadır.</p>\r\n\r\n<p>(3) Cayma hakkının kullanımında, 5 inci maddenin birinci fıkrasının (g) bendi kapsamında, satıcının iade i&ccedil;in belirttiği taşıyıcı aracılığıyla malın geri g&ouml;nderilmesi halinde, t&uuml;ketici iadeye ilişkin masraflardan sorumlu tutulamaz. Satıcının &ouml;n bilgilendirmede iade i&ccedil;in herhangi bir taşıyıcıyı belirtmediği durumda ise, t&uuml;keticiden iade masrafına ilişkin herhangi bir bedel talep edilemez. İade i&ccedil;in &ouml;n bilgilendirmede belirtilen taşıyıcının, t&uuml;keticinin bulunduğu yerde şubesinin olmaması durumunda satıcı, ilave hi&ccedil;bir masraf talep etmeksizin iade edilmek istenen malın t&uuml;keticiden alınmasını sağlamakla y&uuml;k&uuml;ml&uuml;d&uuml;r.</p>\r\n\r\n<p><strong>T&uuml;keticinin y&uuml;k&uuml;ml&uuml;l&uuml;kleri</strong></p>\r\n\r\n<p><strong>MADDE 13 &ndash;</strong>&nbsp;(1) Satıcı veya sağlayıcı malı kendisinin geri alacağına dair bir teklifte bulunmadık&ccedil;a, t&uuml;ketici cayma hakkını kullandığına ilişkin bildirimi y&ouml;nelttiği tarihten itibaren on g&uuml;n i&ccedil;inde malı satıcı veya sağlayıcıya ya da yetkilendirmiş olduğu kişiye geri g&ouml;ndermek zorundadır.</p>\r\n\r\n<p>(2) T&uuml;ketici, cayma s&uuml;resi i&ccedil;inde malı, işleyişine, teknik &ouml;zelliklerine ve kullanım talimatlarına uygun bir şekilde kullandığı takdirde meydana gelen değişiklik ve bozulmalardan sorumlu değildir.</p>\r\n\r\n<p><strong>Cayma hakkının kullanımının yan s&ouml;zleşmelere etkisi</strong></p>\r\n\r\n<p><strong>MADDE 14 &ndash;</strong>&nbsp;(1) Kanunun 30 uncu maddesi h&uuml;k&uuml;mleri saklı kalmak koşuluyla, t&uuml;keticinin cayma hakkını kullanması durumunda yan s&ouml;zleşmeler de kendiliğinden sona erer. Bu durumda t&uuml;ketici, 13 &uuml;nc&uuml; maddenin ikinci fıkrasında belirtilen haller dışında herhangi bir masraf, tazminat veya cezai şart &ouml;demekle y&uuml;k&uuml;ml&uuml; değildir.</p>\r\n\r\n<p>(2) Satıcı veya sağlayıcı, t&uuml;keticinin cayma hakkını kullandığını yan s&ouml;zleşmenin tarafı olan &uuml;&ccedil;&uuml;nc&uuml; kişiye derhal bildirmelidir.</p>\r\n\r\n<p><strong>Cayma hakkının istisnaları</strong></p>\r\n\r\n<p><strong>MADDE 15 &ndash;</strong>&nbsp;(1) Taraflarca aksi kararlaştırılmadık&ccedil;a, t&uuml;ketici aşağıdaki s&ouml;zleşmelerde cayma hakkını kullanamaz:</p>\r\n\r\n<p>a) Fiyatı finansal piyasalardaki dalgalanmalara bağlı olarak değişen ve satıcı veya sağlayıcının kontrol&uuml;nde olmayan mal veya hizmetlere ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>b) T&uuml;keticinin istekleri veya kişisel ihtiya&ccedil;ları doğrultusunda hazırlanan mallara ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>c) &Ccedil;abuk bozulabilen veya son kullanma tarihi ge&ccedil;ebilecek malların teslimine ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>&ccedil;) Tesliminden sonra ambalaj, bant, m&uuml;h&uuml;r, paket gibi koruyucu unsurları a&ccedil;ılmış olan mallardan; iadesi sağlık ve&nbsp;hijyen&nbsp;a&ccedil;ısından uygun olmayanların teslimine ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>d) Tesliminden sonra başka &uuml;r&uuml;nlerle karışan ve doğası gereği ayrıştırılması m&uuml;mk&uuml;n olmayan mallara ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>e) Malın tesliminden sonra ambalaj, bant, m&uuml;h&uuml;r, paket gibi koruyucu unsurları a&ccedil;ılmış olması halinde maddi ortamda sunulan kitap, dijital i&ccedil;erik ve bilgisayar sarf malzemelerine ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>f) Abonelik s&ouml;zleşmesi kapsamında sağlananlar dışında, gazete ve dergi gibi s&uuml;reli yayınların teslimine ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>g) Belirli bir tarihte veya d&ouml;nemde yapılması gereken, konaklama, eşya taşıma, araba kiralama, yiyecek-i&ccedil;ecek tedariki ve eğlence veya dinlenme amacıyla yapılan boş zamanın değerlendirilmesine ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>ğ) Elektronik ortamda anında ifa edilen hizmetler veya t&uuml;keticiye anında teslim edilen&nbsp;gayrimaddi&nbsp;mallara ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>h) Cayma hakkı s&uuml;resi sona ermeden &ouml;nce, t&uuml;keticinin onayı ile ifasına başlanan hizmetlere ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>D&Ouml;RD&Uuml;NC&Uuml; B&Ouml;L&Uuml;M</p>\r\n\r\n<p>Diğer H&uuml;k&uuml;mler</p>\r\n\r\n<p><strong>S&ouml;zleşmenin ifası ve teslimat</strong></p>\r\n\r\n<p><strong>MADDE 16 &ndash;</strong>&nbsp;(1) Satıcı veya sağlayıcı, t&uuml;keticinin siparişinin kendisine ulaştığı tarihten itibaren taahh&uuml;t ettiği s&uuml;re i&ccedil;inde edimini yerine getirmek zorundadır. Mal satışlarında bu s&uuml;re her hal&uuml;karda otuz g&uuml;n&uuml; ge&ccedil;emez.</p>\r\n\r\n<p>(2) Satıcı veya sağlayıcının birinci fıkrada yer alan y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;n&uuml; yerine getirmemesi durumunda, t&uuml;ketici s&ouml;zleşmeyi feshedebilir.</p>\r\n\r\n<p>(3) S&ouml;zleşmenin feshi durumunda, satıcı veya sağlayıcı, varsa teslimat masrafları da d&acirc;hil olmak &uuml;zere tahsil edilen t&uuml;m &ouml;demeleri fesih bildiriminin kendisine ulaştığı tarihten itibaren on d&ouml;rt g&uuml;n i&ccedil;inde t&uuml;keticiye&nbsp;4/12/1984tarihli ve 3095 sayılı Kanuni Faiz ve Temerr&uuml;t Faizine İlişkin Kanunun 1 inci maddesine g&ouml;re belirlenen kanuni faiziyle birlikte geri &ouml;demek ve varsa t&uuml;keticiyi bor&ccedil; altına sokan t&uuml;m kıymetli evrak ve benzeri belgeleri iade etmek zorundadır.</p>\r\n\r\n<p>(4) Sipariş konusu mal ya da hizmet ediminin yerine getirilmesinin&nbsp;imkansızlaştığı&nbsp;hallerde satıcı veya sağlayıcının bu durumu &ouml;ğrendiği tarihten itibaren &uuml;&ccedil; g&uuml;n i&ccedil;inde t&uuml;keticiye yazılı olarak veya kalıcı veri saklayıcısı ile bildirmesi ve varsa teslimat masrafları da d&acirc;hil olmak &uuml;zere tahsil edilen t&uuml;m &ouml;demeleri bildirim tarihinden itibaren en ge&ccedil; on d&ouml;rt g&uuml;n i&ccedil;inde iade etmesi zorunludur. Malın stokta bulunmaması durumu, mal ediminin yerine getirilmesinin imk&acirc;nsızlaşması olarak kabul edilmez.</p>\r\n\r\n<p><strong>Zarardan sorumluluk</strong></p>\r\n\r\n<p><strong>MADDE 17 &ndash;</strong>&nbsp;(1) Satıcı, malın t&uuml;ketici ya da t&uuml;keticinin taşıyıcı dışında belirleyeceği &uuml;&ccedil;&uuml;nc&uuml; bir kişiye teslimine kadar oluşan kayıp ve hasarlardan sorumludur.</p>\r\n\r\n<p>(2) T&uuml;keticinin, satıcının belirlediği taşıyıcı dışında başka bir taşıyıcı ile malın g&ouml;nderilmesini talep etmesi durumunda, malın ilgili taşıyıcıya tesliminden itibaren oluşabilecek kayıp ya da hasardan satıcı sorumlu değildir.</p>\r\n\r\n<p><strong>Telefon kullanım &uuml;creti</strong></p>\r\n\r\n<p><strong>MADDE 18 &ndash;</strong>&nbsp;(1) Kurulmuş olan s&ouml;zleşmeye ilişkin olarak t&uuml;keticilerin iletişime ge&ccedil;ebilmesi i&ccedil;in satıcı veya sağlayıcı tarafından bir telefon hattı tahsis edilmesi durumunda, bu hat ile ilgili olarak satıcı veya sağlayıcı olağan &uuml;cret tarifesinden daha y&uuml;ksek bir tarife se&ccedil;emez.</p>\r\n\r\n<p><strong>İlave &ouml;demeler</strong></p>\r\n\r\n<p><strong>MADDE 19 &ndash;</strong>&nbsp;(1) S&ouml;zleşme kurulmadan &ouml;nce, s&ouml;zleşme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;nden kaynaklanan ve &uuml;zerinde anlaşılmış esas bedel dışında herhangi bir ilave bedel talep edilebilmesi i&ccedil;in t&uuml;keticinin a&ccedil;ık onayının ayrıca alınması zorunludur.</p>\r\n\r\n<p>(2) T&uuml;keticinin a&ccedil;ık onayı alınmadan ilave &ouml;deme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; doğuran se&ccedil;eneklerin kendiliğinden se&ccedil;ili olarak sunulmuş olmasından dolayı t&uuml;ketici bir &ouml;demede bulunmuş ise, satıcı veya sağlayıcı bu &ouml;demelerin iadesini derhal yapmak zorundadır.</p>\r\n\r\n<p><strong>Bilgilerin saklanması ve ispat y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;</strong></p>\r\n\r\n<p><strong>MADDE 20 &minus;</strong>&nbsp;(1) Satıcı veya sağlayıcı, bu Y&ouml;netmelik kapsamında d&uuml;zenlenen cayma hakkı, bilgilendirme, teslimat ve diğer hususlardaki y&uuml;k&uuml;ml&uuml;l&uuml;klerine dair her bir işleme ilişkin bilgi ve belgeyi &uuml;&ccedil; yıl boyunca saklamak zorundadır.</p>\r\n\r\n<p>(2) Oluşturdukları sistem &ccedil;er&ccedil;evesinde, uzaktan iletişim ara&ccedil;larını kullanmak veya kullandırmak suretiyle satıcı veya sağlayıcı adına mesafeli s&ouml;zleşme kurulmasına aracılık edenler, bu Y&ouml;netmelikte yer alan hususlardan dolayı satıcı veya sağlayıcı ile yapılan işlemlere ilişkin kayıtları &uuml;&ccedil; yıl boyunca tutmak ve istenilmesi halinde bu bilgileri ilgili kurum, kuruluş ve t&uuml;keticilere vermekle y&uuml;k&uuml;ml&uuml;d&uuml;r.</p>\r\n\r\n<p>(3) Satıcı veya sağlayıcı elektronik ortamda t&uuml;keticiye teslim edilen&nbsp;gayrimaddi&nbsp;malların veya ifa edilen hizmetlerin ayıpsız olduğunu ispatla y&uuml;k&uuml;ml&uuml;d&uuml;r.</p>\r\n\r\n<p>BEŞİNCİ B&Ouml;L&Uuml;M</p>\r\n\r\n<p>&Ccedil;eşitli ve Son H&uuml;k&uuml;mler</p>\r\n\r\n<p><strong>Y&uuml;r&uuml;rl&uuml;kten kaldırılan y&ouml;netmelik</strong></p>\r\n\r\n<p><strong>MADDE 21 &ndash;</strong>&nbsp;(1)&nbsp;6/3/2011&nbsp;tarihli ve 27866 sayılı Resm&icirc; Gazete&rsquo;de yayımlanan Mesafeli S&ouml;zleşmelere Dair Y&ouml;netmelik y&uuml;r&uuml;rl&uuml;kten kaldırılmıştır.</p>\r\n\r\n<p><strong>Y&uuml;r&uuml;rl&uuml;k</strong></p>\r\n\r\n<p><strong>MADDE 22 &ndash;</strong>&nbsp;(1) Bu Y&ouml;netmelik yayımı tarihinden itibaren &uuml;&ccedil; ay sonra y&uuml;r&uuml;rl&uuml;ğe girer.</p>\r\n\r\n<p><strong>Y&uuml;r&uuml;tme</strong></p>\r\n\r\n<p><strong>MADDE 23 &ndash;</strong>&nbsp;(1) Bu Y&ouml;netmelik h&uuml;k&uuml;mlerini G&uuml;mr&uuml;k ve Ticaret Bakanı y&uuml;r&uuml;t&uuml;r.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>EK</p>\r\n\r\n<p>&Ouml;RNEK CAYMA FORMU</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>(Bu form, sadece s&ouml;zleşmeden cayma hakkı kullanılmak istenildiğinde doldurup</p>\r\n\r\n<p>g&ouml;nderilecektir.)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-Kime:</strong>&nbsp;(Satıcı veya sağlayıcı tarafından doldurulacak olan bu kısımda satıcı veya sağlayıcının ismi, unvanı, adresi varsa faks numarası ve e-posta adresi yer alacaktır.)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>-Bu formla aşağıdaki malların satışına veya hizmetlerin sunulmasına ilişkin s&ouml;zleşmeden cayma hakkımı kullandığımı beyan ederim.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-Sipariş tarihi veya teslim tarihi:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-Cayma hakkına konu mal veya hizmet:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-Cayma hakkına konu mal veya hizmetin bedeli:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-T&uuml;keticinin adı ve soyadı:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-T&uuml;keticinin adresi:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-T&uuml;keticinin imzası:</strong>&nbsp;(Sadece&nbsp;kağıt&nbsp;&uuml;zerinde g&ouml;nderilmesi halinde)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-Tarih:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'sayfa-mesafeli-satis-sozlesmesi', 4, '1', 'mesafeli-satis-sozlesmesi');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sepet`
--

CREATE TABLE `sepet` (
  `sepet_id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urun_adet` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis`
--

CREATE TABLE `siparis` (
  `siparis_id` int(11) NOT NULL,
  `siparis_zaman` timestamp NOT NULL DEFAULT current_timestamp(),
  `siparis_no` int(11) DEFAULT NULL,
  `kullanici_id` int(11) NOT NULL,
  `siparis_toplam` float(9,2) NOT NULL,
  `siparis_tip` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `siparis_banka` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `siparis_odeme` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siparis`
--

INSERT INTO `siparis` (`siparis_id`, `siparis_zaman`, `siparis_no`, `kullanici_id`, `siparis_toplam`, `siparis_tip`, `siparis_banka`, `siparis_odeme`) VALUES
(1, '2019-06-15 16:34:42', NULL, 156, 17.90, 'Banka Havalesi', 'Garanti Bankası', '0'),
(2, '2019-06-15 16:58:33', NULL, 156, 14.85, 'Banka Havalesi', 'Vakıfbank', '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis_detay`
--

CREATE TABLE `siparis_detay` (
  `siparisdetay_id` int(11) NOT NULL,
  `siparis_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urun_fiyat` float(9,2) NOT NULL,
  `urun_adet` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siparis_detay`
--

INSERT INTO `siparis_detay` (`siparisdetay_id`, `siparis_id`, `urun_id`, `urun_fiyat`, `urun_adet`) VALUES
(1, 1, 4, 17.90, 1),
(2, 2, 6, 3.95, 1),
(3, 2, 8, 4.95, 1),
(4, 2, 15, 5.95, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `slider_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `slider_resimyol` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `slider_sira` int(2) NOT NULL,
  `slider_link` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `slider_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_ad`, `slider_resimyol`, `slider_sira`, `slider_link`, `slider_durum`) VALUES
(2, 'Slider 1', 'dimg/slider/27154226172650724707034e3f26e339ffb7072d73d91eeb344b.png', 1, '', '1'),
(4, 'Slider 2', 'dimg/slider/31195207422347628347slider-kelepir-12.png', 2, '', '1'),
(5, 'Slider 3', 'dimg/slider/3058324487287842150058d2b8fb8abeff9d9380210a0495fd0b.png', 3, '', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun`
--

CREATE TABLE `urun` (
  `urun_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `urun_zaman` timestamp NOT NULL DEFAULT current_timestamp(),
  `urun_ad` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_seourl` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `urun_fiyat` float(9,2) NOT NULL,
  `urun_video` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `urun_keyword` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_stok` int(11) NOT NULL,
  `urun_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL,
  `urun_onecikar` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urun`
--

INSERT INTO `urun` (`urun_id`, `kategori_id`, `urun_zaman`, `urun_ad`, `urun_seourl`, `urun_detay`, `urun_fiyat`, `urun_video`, `urun_keyword`, `urun_stok`, `urun_durum`, `urun_onecikar`) VALUES
(18, 13, '2019-07-01 02:42:51', 'Çocuk Psikolojisi', 'cocuk-psikolojisi', '<p><strong>Jean Piaget&nbsp;, Barbel Inhelder</strong></p>\r\n\r\n<p><strong>PİNHAN YAYINCILIK&nbsp;</strong></p>\r\n\r\n<p>İsvi&ccedil;reli psikolog Jean Piaget, psikoloji alanına derin katkılar yapmıştır. Bilişsel gelişim üzerine yürüttüğü araştırmaları ve ürettiği teorileri &ccedil;ocuk psikolojisini &ccedil;ok farklı yönlere taşımıştır. &Ccedil;alışmaları diğer psikologlar i&ccedil;in ilham kaynağı olmuş, düşünceleri üzerine bir&ccedil;ok kitap ve makale yazılmıştır. Eserlerinin etkisi kültürün diğer alanlarını da sarmıştır. Piaget&rsquo;nin yaklaşık 40 yılını verdiği gelişim psikolojisi araştırmaları bu kitapta kendisi ve sadık asistanı Bärbel Inhelder tarafından a&ccedil;ık bir şekilde sunulur. Bu sentez &ccedil;alışma, &ccedil;ocuğun bilişsel gelişiminin her evresine ışık tutar.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&Ccedil;evirmen:Or&ccedil;un T&uuml;rkay</p>\r\n\r\n<p>Yayın Tarihi2016-05-24</p>\r\n\r\n<p>ISBN6055302849</p>\r\n\r\n<p>Baskı Sayısı2. Baskı</p>\r\n\r\n<p>DilT&Uuml;RK&Ccedil;E</p>\r\n\r\n<p>Sayfa Sayısı144</p>\r\n\r\n<p>Cilt TipiKarton Kapak</p>\r\n\r\n<p>Kağıt CinsiKitap Kağıdı</p>\r\n\r\n<p>Boyut13.5 x 21.5 cm</p>\r\n', 11.00, '', 'Jean Piaget , Barbel Inhelder, PİNHAN YAYINCILIK ', 20, '1', '1'),
(19, 15, '2019-07-01 02:52:26', 'Roma İmparatorluğu\'nun Gerileyiş ve Çöküş Tarihi (1. Cilt)', 'roma-imparatorlugu-nun-gerileyis-ve-cokus-tarihi-1-cilt', '<p><strong>Edward Gibbon&nbsp;</strong></p>\r\n\r\n<p><strong>İNDİE YAYINLARI</strong>&nbsp;</p>\r\n\r\n<p>&ldquo;Değerli bayım, tarih kitabınızı heyecanla ve yutarcasına okurken bu heyecanımı, zarif armağanınızdan dolayı teşekk&uuml;r etmek ve eserinizin bende uyandırdığı memnuniyeti size iletmek i&ccedil;in kesintiye uğratma gereksinimine karşı koyamadım. &Uuml;slubunuzun değeri, konunuzun derinliği, bilginizin genişliği bakımlarından kitabınız takdire değer, itiraf ederim ki, sizi tanımak onuruna erişmemiş olsaydım, b&ouml;yle bir eserin, zamanımızda bir İngiliz tarafından yazılmış olmasını yadırgardım. Buna g&uuml;lebilirsiniz ama bana &ouml;yle geliyor ki zamanımızdaki yurttaşlarımız akıl almaz ve sa&ccedil;ma bir barbarlık i&ccedil;erisine dalmışlar, g&uuml;zel sanatları t&uuml;m&uuml;yle ihmal etmişlerdir. Onlardan hi&ccedil;bir değerli &uuml;r&uuml;n beklememekteyim. Bu kentteki b&uuml;t&uuml;n aydınların, eserinize hayran olmakta ve devamını &ouml;zlemle beklemekte birleştiklerini &ouml;ğrenmekle, benim gibi, sizin de memnun olacağınızdan eminim.&rdquo;<br />\r\n&nbsp;<br />\r\nDavid Hume</p>\r\n\r\n<p>&Ccedil;evirmen:Asım Baltacıgil</p>\r\n\r\n<p>Yayın Tarihi2019-06-24</p>\r\n\r\n<p>ISBN6058195394</p>\r\n\r\n<p>Baskı Sayısı1. Baskı</p>\r\n\r\n<p>DilT&Uuml;RK&Ccedil;E</p>\r\n\r\n<p>Sayfa Sayısı736</p>\r\n\r\n<p>Cilt TipiKarton Kapak</p>\r\n\r\n<p>Kağıt CinsiKitap Kağıdı</p>\r\n\r\n<p>Boyut13 x 19.5 cm</p>\r\n', 51.00, '', 'Edward Gibbon,  İNDİE YAYINLARI,', 20, '1', '1'),
(20, 21, '2019-07-01 02:58:02', 'Beş Şehir', 'bes-sehir', '<p><strong>Ahmet Hamdi Tanpınar&nbsp;</strong></p>\r\n\r\n<p><strong>DERGAH YAYINLARI&nbsp;</strong></p>\r\n\r\n<p>Beş Şehir&#39;in asıl konusu hayatımızda kaybolan şeylerin ardından duyulan &uuml;z&uuml;nt&uuml; ile yeniye karşı beslenen iştiyaktır. İlk bakışta birbiriyle &ccedil;atışır g&ouml;r&uuml;nen bu iki duyguyu sevgi kelimesinde birleştirebiliriz. Bu sevginin kendisine &ccedil;er&ccedil;eve olarak se&ccedil;tiği şehirler, benim hayatımın tesad&uuml;fleridir. Bu itibarla onların arkasında kendi insanımıza ve hayatımızı, vatanın manevi &ccedil;ehresi olan k&uuml;lt&uuml;r&uuml;m&uuml;z&uuml; g&ouml;rmek daha da doğru olur.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Yayın Tarihi2017-09-15</p>\r\n\r\n<p>ISBN9759955694</p>\r\n\r\n<p>Baskı Sayısı40. Baskı</p>\r\n\r\n<p>DilT&Uuml;RK&Ccedil;E</p>\r\n\r\n<p>Sayfa Sayısı224</p>\r\n\r\n<p>Cilt TipiKarton Kapak</p>\r\n\r\n<p>Kağıt CinsiKitap Kağıdı</p>\r\n\r\n<p>Boyut13.5 x 21 cm</p>\r\n', 16.00, '', 'Ahmet Hamdi Tanpınar, DERGAH YAYINLARI,', 20, '1', '1'),
(21, 17, '2019-07-01 03:01:38', 'Mustafa Kemal', 'mustafa-kemal', '<p><strong>Yılmaz &Ouml;zdil&nbsp;</strong></p>\r\n\r\n<p><strong>KIRMIZI KEDİ YAYINEVİ&nbsp;</strong></p>\r\n\r\n<p>&ldquo;Ey T&uuml;rk gen&ccedil;liği!<br />\r\nBirinci vazifen...&rdquo;</p>\r\n\r\n<p>Yayın Tarihi2018-12-17</p>\r\n\r\n<p>ISBN6052983690</p>\r\n\r\n<p>Baskı Sayısı12. Baskı</p>\r\n\r\n<p>DilT&Uuml;RK&Ccedil;E</p>\r\n\r\n<p>Sayfa Sayısı520</p>\r\n\r\n<p>Cilt TipiKarton Kapak</p>\r\n\r\n<p>Kağıt CinsiKitap Kağıdı</p>\r\n\r\n<p>Boyut13.7 x 23 cm</p>\r\n', 15.00, '', 'Yılmaz Özdil, KIRMIZI KEDİ YAYINEVİ,', 20, '1', '1'),
(22, 19, '2019-07-01 03:03:51', 'Masal Tadında Bebek Yemekleri', 'masal-tadinda-bebek-yemekleri', '<p><strong>Ayşeg&uuml;l Bayındır&nbsp;</strong></p>\r\n\r\n<p><strong>YEDİVEREN YAYINLARI&nbsp;</strong></p>\r\n\r\n<p>&Ccedil;ocuğun beslenmesi aynı zamanda sosyal bir etkinliktir. Anne-baba ve &ccedil;ocuk arasında bir&ccedil;ok duygunun, davranışın paylaşılmasını sağlar. &Ccedil;ocuğun duygusal gelişiminin desteklenmesi; beslenme saatlerinin huzurlu ve olumlu ge&ccedil;mesi i&ccedil;in doğru bilinen yanlışları d&uuml;zeltmek gerekir. Bu kitap size yol g&ouml;sterecektir.<br />\r\nDr. Herdem Aslan Gen&ccedil; / &Ccedil;ocuk ve Ergen Psikiyatristi<br />\r\nEk gıda zamanı yaklaştığında her annenin kafası soru işaretleriyle doludur. Bu kitap sayesinde strese kapılmadan, hangi ayda ne yedirebileceğinizi ve bebeğinizi sıkmayacak &ccedil;eşitlilikteki tariflerle neler yapabileceğinizi bileceksiniz. T&uuml;m annelere şiddetle tavsiye ederim.<br />\r\nDr. G&ouml;rkem Astarcıoğlu / &Ccedil;ocuk Sağlığı ve Hastalıkları Uzmanı<br />\r\nSon yapılan bilimsel araştırmalar, bağırsaklarımızın ikinci bir beyin gibi &ccedil;alıştığını bizlere g&ouml;stermektedir. Bu a&ccedil;ıdan bakıldığında bebeklerimizin ek gıdaya ge&ccedil;iş d&ouml;nemleri &ccedil;ok &ouml;nemlidir. Takip ettiğim bebişler 180 g&uuml;n&uuml; doldurduklarında, annelerinde tatlı bir heyecan başlar. Bazen poliklinik yoğunluğunda aileler ile ek gıda konusunu yeterince konuşamadığımızı d&uuml;ş&uuml;nd&uuml;ğ&uuml;m olmakta idi. Bu değerli kitap, hastalarıma g&ouml;n&uuml;l rahatlığı ile &ouml;nerebileceğim bir başucu kaynağı niteliğinde.<br />\r\n&nbsp;<br />\r\nDr. Ahmet &Ouml;zcan / &Ccedil;ocuk Sağlığı ve Hastalıkları Uzmanı<br />\r\n&nbsp;<br />\r\nSağlıklı beslenme, b&uuml;y&uuml;menin temel taşıdır. Bu kitabın beslenmeyle ilgili sizlere ışık tutacağından hi&ccedil; ş&uuml;phem yok!<br />\r\n&nbsp;<br />\r\nDr. Ali Kızıldemir / &Ccedil;ocuk Sağlığı ve Hastalıkları</p>\r\n\r\n<p>Yayın Tarihi2019-03-07</p>\r\n\r\n<p>ISBN6052690574</p>\r\n\r\n<p>Baskı Sayısı1. Baskı</p>\r\n\r\n<p>DilT&Uuml;RK&Ccedil;E</p>\r\n\r\n<p>Sayfa Sayısı160</p>\r\n\r\n<p>Cilt TipiKarton Kapak</p>\r\n\r\n<p>Kağıt CinsiKitap Kağıdı</p>\r\n\r\n<p>Boyut17 x 21 cm</p>\r\n', 30.00, '', 'Masal Tadında Bebek Yemekleri,', 20, '1', '1'),
(23, 18, '2019-07-01 03:06:31', 'Ol Der ve Olur', 'ol-der-ve-olur', '<p><strong>Tuğ&ccedil;e Işınsu&nbsp;</strong></p>\r\n\r\n<p><strong>FENİKS KİTAP&nbsp;</strong></p>\r\n\r\n<p>EY HAYAT!<br />\r\nDemek dileğimi bana vermemek i&ccedil;in direniyorsun&hellip;<br />\r\nGe&ccedil;mişi serbest bırakarak, arınarak, olumlamaların g&uuml;c&uuml;yle, sezgilerimi doğru kullanarak, en y&uuml;ce dualarla, bilin&ccedil;altımın yardımıyla, neden direndiğini ve hangi yaşam dersimi almam gerektiğini de bularak, o yolla olmuyorsa başka yolla, hi&ccedil; yolu yoksa kendi yolumu yaratarak yine de dileğimi senden alacağım. Ve onu ger&ccedil;ek yapacağım.<br />\r\n(VE &Ouml;YLE DE OLDU)<br />\r\n&nbsp;<br />\r\nDİLEĞİN, &Ccedil;OK İSTEDİĞİNDE DEĞİL<br />\r\n&Ccedil;OK İNANDIĞINDA GER&Ccedil;EKLEŞİR.<br />\r\n&nbsp;<br />\r\n&ldquo;OL&rdquo; der ve OLUR b&ouml;l&uuml;mler:<br />\r\n&nbsp;<br />\r\n1.&nbsp;&nbsp; Spirit&uuml;el Enerji Yasaları<br />\r\n2. Bereket ve Aşk Senin Doğuştan Hakkın<br />\r\n3. Yaşanmış Mucizeler<br />\r\n4. Hastalıkların Spirit&uuml;el ve Duygusal Sebepleri<br />\r\n5. İlişki Şifalandırması<br />\r\n6. Telepatik Bağ Kurma<br />\r\n7. Duaların G&uuml;c&uuml; ve Işığa Yolculuk<br />\r\n8. VE &Ouml;YLE DE OLDU</p>\r\n\r\n<p>Yayın Tarihi2017-10-01</p>\r\n\r\n<p>ISBN6054726714</p>\r\n\r\n<p>Baskı Sayısı2. Baskı</p>\r\n\r\n<p>DilT&Uuml;RK&Ccedil;E</p>\r\n\r\n<p>Sayfa Sayısı304</p>\r\n\r\n<p>Cilt TipiKarton Kapak</p>\r\n\r\n<p>Kağıt CinsiKitap Kağıdı</p>\r\n\r\n<p>Boyut13.5 x 21 cm</p>\r\n', 17.00, '', 'Ol Der ve Olur,', 20, '1', '1'),
(24, 16, '2019-07-01 03:13:53', 'Bir Dinozorun Gezileri', 'bir-dinozorun-gezileri', '<p><strong>Prof.Dr. Mina Urgan&nbsp;</strong></p>\r\n\r\n<p><strong>YAPI KREDİ YAYINLARI&nbsp;</strong></p>\r\n\r\n<p>Mina Urgan Bir Dinozorun Anıları&#39;nı yazarken kitabının bu kadar &ccedil;ok okunacağını hi&ccedil; beklemiyor, &quot;Benim gibi bir kocakarının hayatını kim merak eder ki...&quot; diyordu. Ama &ouml;yle olmadı. Y&uuml;zbinlerce kişi bu ufak tefek, beyaz sa&ccedil;lı, sigara i&ccedil;en, cesur, kom&uuml;nist ve ateist olduğunu televizyon ekranlarında s&ouml;yleyen İngiliz Edebiyatı profes&ouml;r&uuml;n&uuml;n anılarını okudu ve kendiyle alay etmeyi bilen bu zeki kadını &ccedil;ok sevdi. &Ccedil;&uuml;nk&uuml; o, T&uuml;rkiye aydınını sıcak ve zeki dilidir. Samimi bir d&uuml;ş&uuml;nce sahibinin, aykırı da olsa, t&uuml;m kesimler tarafından kucaklanacağının kanıtıdır.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Yayın Tarihi2019-04-08</p>\r\n\r\n<p>ISBN9750801389</p>\r\n\r\n<p>Baskı Sayısı84. Baskı</p>\r\n\r\n<p>DilT&Uuml;RK&Ccedil;E</p>\r\n\r\n<p>Sayfa Sayısı280</p>\r\n\r\n<p>Cilt TipiKarton Kapak</p>\r\n\r\n<p>Kağıt Cinsi2. Hm. Kağıt</p>\r\n\r\n<p>Boyut13.5 x 21 cm</p>\r\n', 27.00, '', 'Bir Dinozorun Gezileri,', 20, '1', '1'),
(25, 14, '2019-07-01 03:15:24', 'Mimar Sinan  Mimarideki Osmanlı Mührü', 'mimar-sinan-mimarideki-osmanli-muhru', '<p><strong>Yavuz Bahadıroğlu&nbsp;</strong></p>\r\n\r\n<p><strong>PANAMA YAYINCILIK-KAMPANYA&nbsp;</strong></p>\r\n\r\n<p>Sinan camileri b&ouml;ylesine bir b&uuml;t&uuml;nsellik i&ccedil;erir: Mermeri sanatla, sanatı hayatla buluşturur. Daha avluda şaşırıp b&uuml;y&uuml;lenmeye başlarsınız. O şaşkınlık ve hayranlık deminde, kapıya ve pencerelere bakın: Pencerelerle duvarların b&uuml;y&uuml;leyici uyumunu, k&uuml;ndek&acirc;rı kapının kubbelere y&uuml;kselişini, kudret eliyle serpiştirilmiş hissini veren &ldquo;&ccedil;il &ccedil;il kubbe&rdquo;lerin yer yer minareleşip g&ouml;z&uuml; hi&ccedil; rahatsız etmeden sonsuzluğa ulaşımını seyredin&hellip;<br />\r\n<br />\r\nSonra, Yahya Kemal&rsquo;in şiirinin i&ccedil;ine girer gibi, camiye girin, k&uuml;rs&uuml;n&uuml;n mihrapla, mihrabın minberle, hem birbirinden bu kadar farklı ve bağımsız, hem birbirine bu kadar yakın, b&ouml;ylesine derin ve huzurlu bir i&ccedil; i&ccedil;eliğin nasıl sağlandığını d&uuml;ş&uuml;n&uuml;n&hellip; Kubbelerdeki sadelikle duvarlardaki renk c&uuml;mb&uuml;ş&uuml;n&uuml;n zıt gibi duran karakterlerinde Sinan&rsquo;ın ruh halini &ccedil;&ouml;zmeye &ccedil;alışın: İmk&acirc;nsıza &acirc;şık olan deh&acirc;, her eserinde &ldquo;imk&acirc;nsız&rdquo;ı denemiş ve ger&ccedil;ek hayatta yapamadığını yapıp &ldquo;zıtların estetik uyumu&rdquo;nu yakalamıştır!<br />\r\n&ldquo;Ve minel aşk!&rdquo;<br />\r\nUnutmayın: Sanat, &ldquo;sonsuz&rdquo;un ve &ldquo;aşk&rdquo;ın adıdır.</p>\r\n\r\n<p>gizle</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Yayın Tarihi2014-12-18</p>\r\n\r\n<p>ISBN6055143879</p>\r\n\r\n<p>Baskı Sayısı1. Baskı</p>\r\n\r\n<p>DilT&Uuml;RK&Ccedil;E</p>\r\n\r\n<p>Sayfa Sayısı208</p>\r\n\r\n<p>Cilt TipiKarton Kapak</p>\r\n\r\n<p>Kağıt CinsiKitap Kağıdı</p>\r\n\r\n<p>Boyut13.5 x 21 cm</p>\r\n', 7.00, '', 'Mimar Sinan  Mimarideki Osmanlı Mührü,', 20, '1', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunfoto`
--

CREATE TABLE `urunfoto` (
  `urunfoto_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urunfoto_resimyol` varchar(255) NOT NULL,
  `urunfoto_sira` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `urunfoto`
--

INSERT INTO `urunfoto` (`urunfoto_id`, `urun_id`, `urunfoto_resimyol`, `urunfoto_sira`) VALUES
(3, 3, 'dimg/urun/27060308462126425045dostayran.jpg', NULL),
(4, 4, 'dimg/urun/24641249792212030267eminızgara.jpg', NULL),
(5, 5, 'dimg/urun/31419258822142529730cizi.jpg', NULL),
(6, 6, 'dimg/urun/26347288132997420918delitesincir.jpg', NULL),
(7, 7, 'dimg/urun/26824306742436824088dido.jpg', NULL),
(8, 8, 'dimg/urun/26650216873153431602dostino6lı.jpg', NULL),
(9, 9, 'dimg/urun/30341305582870827737dostyogurt.jpg', NULL),
(10, 10, 'dimg/urun/27982293512527926420icecoffee.jpg', NULL),
(11, 11, 'dimg/urun/26109270282523329475macarsalam.jpg', NULL),
(12, 12, 'dimg/urun/29854315532757520198sutassuzme.jpg', NULL),
(13, 13, 'dimg/urun/30232230482675720727patito.jpg', NULL),
(14, 14, 'dimg/urun/22381308572593329668ciftcipirinc.jpg', NULL),
(15, 15, 'dimg/urun/30929256203144522494durubulgur.jpg', NULL),
(16, 16, 'dimg/urun/23679288112457724891yudumyag.jpg', NULL),
(17, 17, 'dimg/urun/29194270713129530302alodeterjan.jpg', NULL),
(18, 18, 'dimg/urun/30717240982168522730select.jpg', NULL),
(19, 18, 'dimg/urun/27243255752559220191select (1).jpg', NULL),
(21, 23, 'dimg/urun/30258254562703528831indir (1).jpg', NULL),
(22, 22, 'dimg/urun/293052586222382243540001799465001-1.jpg', NULL),
(23, 21, 'dimg/urun/24578276292097029834select (2).jpg', NULL),
(24, 20, 'dimg/urun/24652296692275022108indir (2).jpg', NULL),
(25, 19, 'dimg/urun/23212284362404024769select (1).jpg', NULL),
(26, 24, 'dimg/urun/21285296692028631949select (3).jpg', NULL),
(27, 25, 'dimg/urun/26793219072195321763select (4).jpg', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `yorum_id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `yorum_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `yorum_zaman` timestamp NOT NULL DEFAULT current_timestamp(),
  `yorum_onay` enum('0','1') COLLATE utf8_turkish_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayar`
--
ALTER TABLE `ayar`
  ADD PRIMARY KEY (`ayar_id`);

--
-- Tablo için indeksler `banka`
--
ALTER TABLE `banka`
  ADD PRIMARY KEY (`banka_id`);

--
-- Tablo için indeksler `hakkimizda`
--
ALTER TABLE `hakkimizda`
  ADD PRIMARY KEY (`hakkimizda_id`);

--
-- Tablo için indeksler `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`kullanici_id`);

--
-- Tablo için indeksler `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Tablo için indeksler `sepet`
--
ALTER TABLE `sepet`
  ADD PRIMARY KEY (`sepet_id`);

--
-- Tablo için indeksler `siparis`
--
ALTER TABLE `siparis`
  ADD PRIMARY KEY (`siparis_id`);

--
-- Tablo için indeksler `siparis_detay`
--
ALTER TABLE `siparis_detay`
  ADD PRIMARY KEY (`siparisdetay_id`);

--
-- Tablo için indeksler `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Tablo için indeksler `urun`
--
ALTER TABLE `urun`
  ADD PRIMARY KEY (`urun_id`);

--
-- Tablo için indeksler `urunfoto`
--
ALTER TABLE `urunfoto`
  ADD PRIMARY KEY (`urunfoto_id`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`yorum_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `banka`
--
ALTER TABLE `banka`
  MODIFY `banka_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `kullanici_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- Tablo için AUTO_INCREMENT değeri `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `sepet`
--
ALTER TABLE `sepet`
  MODIFY `sepet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `siparis`
--
ALTER TABLE `siparis`
  MODIFY `siparis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `siparis_detay`
--
ALTER TABLE `siparis_detay`
  MODIFY `siparisdetay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `urun`
--
ALTER TABLE `urun`
  MODIFY `urun_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Tablo için AUTO_INCREMENT değeri `urunfoto`
--
ALTER TABLE `urunfoto`
  MODIFY `urunfoto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Tablo için AUTO_INCREMENT değeri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `yorum_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
