<!doctype html>
<html>
    <head>
        <title>İş ilan Sitesi Giriş Formu</title>
        <meta charset="utf-8" />
        <style type="text/css">
            body{
                background-color: #63b8ff;
                font-size:15px;
                font-family:Helvetica ;
            }
            #Form{
                
                border-radius:30px;
                background:#ffffff;
                width:360px;
                margin:auto;
                margin-top:80px;
                padding:15px;
                text-align:center;
            }
            input, button
            {
                border-radius:15px;
                border:none;
                width:300px;
                height:50px;
                margin:20px 20px 20px 20px;
                background:rgba(240,240,240,.5);
                padding-left:10px;
                font-style:italic,bold;
                
            }
            
            .btn{
                background:#76b852;
                color:white;
            }
            h3{
                color:#333;
                text-transform:uppercase;
                font-size:20px;
            }
            .form-container {
    display: flex;
    flex-direction: column;
}

.radio-group {
    display: flex;
    align-items: center; /* Düğmeleri dikey olarak hizalar */
}

.radio-group label {
    margin-right: 10px; /* Label'lar arasında boşluk bırakır */
}



            
        </style>
    </head>
    <body>
        <?php
        if(empty($_GET["id"]))
            $gid="giris";
        else
          $gid=$_GET["id"];

        if($gid=="giris")
        {
         // giriş formu   
         echo'<br><br><br><br>';
         echo '<div id="Form">
         <form action="giris.php" method="POST">
             <h3>Giriş Formu</h3>
             <input type="email" name="eposta" placeholder="Epostanızı giriniz" required />                 
             <input type="password" name="parola" placeholder="Şifrenizi giriniz" required pattern="[0-9a-zA-Z]{5}"/>
             <input class="btn" type="submit" value="GİRİŞ" />
         </form>            
         <p class="mesaj">Üye olmak için ? <a href="index1.php?id=kayit">Kayıt Olun</a></p> 
         <p class="mesaj">Şifrenizi mi unuttunuz ? <a href="index1.php?id=Unuttum">Tıkla</a></p> 
         </div>'; 
        }
        else if($gid=="kayit")
        {
        //kayit  
        echo'
        <div id="Form">
        <form action="kayit.php" method="POST">
        <h3>Kullanıcı Kayıt Formu</h3>
        <input type="text" name="ad" placeholder="Adınız" required maxlength="15" /> 
        <input type="text" name="soyad" placeholder="Soyadınız" required maxlength="25" />                 
        <input type="email" name="eposta" placeholder="Epostanızı giriniz" required />                 
        <input type="password" name="parola" placeholder="Şifrenizi giriniz" required pattern="[0-9a-zA-Z]{5}"/>
    <input class="btn" type="submit" value="KAYIT OL" />
    </form>
    <p class="mesaj"> Üye Misiniz ? <a href="/isilan/index1.php?id=giris">Giriş Yap</a></p> 

    </div>';

    


       
        
         
        }
        else if($gid=="Unuttum")
        {
            //şifremi unuttum 
            echo'<br><br><br><br><br><br><br>';
            echo '<div id="Form">
            <form action="unuttum.php" method="POST">
                <h3>Giriş Formu</h3>
                <input type="email" name="eposta" placeholder="Epostanızı giriniz" required />                 
               <input class="btn" type="submit" value="GÖNDER" />
            </form>            
            <p class="mesaj">Üye olmak için ? <a href="index1.php?id=kayit">Kayıt Olun</a></p> 
            </div>'; 
        }
        ?>       
             
       
           
    
    </body>
</html>