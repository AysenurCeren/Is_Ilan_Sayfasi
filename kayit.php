


<?php
include("baglanti.php");
$gad=$_POST["ad"];
$gsoyad=$_POST["soyad"];
$gmail=$_POST["eposta"];
$gsifre=$_POST["parola"];

$insert_row=$baglanti->query("INSERT INTO uyeler (id,ad,soyad,email,sifre)
VALUES ('','".$gad."','".$gsoyad."','".$gmail."','".$gsifre."')");
if($insert_row)
{
session_start();
$_SESSION["ad"]=$gad;
$_SESSION["soyad"]=$gsoyad;
$_SESSION["mail"]=$gmail;
$_SESSION["id"]=$baglanti->insert_id;
header("Location:index1.php");
}
else{
    echo'<br><br><br><br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp';
    echo "Kayıt gerçekleştirilemedi";
}
?>
  