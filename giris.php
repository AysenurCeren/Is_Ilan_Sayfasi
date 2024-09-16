<?php
$gmail = $_POST["eposta"];
$gsifre = $_POST["parola"];
include("baglanti.php");
$query = "SELECT * FROM uyeler WHERE email='" . $gmail . "'";
$result = mysqli_query($baglanti, $query) or die("sorgu hatası");
$num_row = mysqli_num_rows($result);
$row = mysqli_fetch_array($result);
if ($num_row >= 1) {

    if ($gsifre == $row['sifre']) {
        session_start();
        $_SESSION["ad"] = $row['ad'];
        $_SESSION["soyad"] = $row['soyad'];
        $_SESSION["mail"] = $gmail;
        $_SESSION["uye_id"] = $row['id']; // "uye_id" olarak değiştirildi
        header("Location:index.php");
    } else {
        echo '<br><br><br><br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp';
        echo "Yanlış şifre girişi. Kullanıcı girişine yönlendiriliyorsunuz";
        header("Refresh:5;url=index1.php?id=giris");
    }
} else {
    echo '<br><br><br><br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp';
    echo "Mailiniz hatalı. Kullanıcı girişine yönlendiriliyorsunuz";
    header("Refresh:5;url=index1.php?id=giris");
}
?>
