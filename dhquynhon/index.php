<?php 
  session_start();
  if(isset($_SESSION['username'])){

    // echo $_SESSION['username'];
  $link = new mysqli('localhost','root','','sinhvien') or die('failed');
  mysqli_query($link, 'SET NAMES UTF8');
  $query = 'SELECT * FROM tintuc';
  $result = mysqli_query($link, $query);
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>SM - Trang chủ</title>
        <link rel="stylesheet" href="style/style.css">
		<link rel="stylesheet" href="style/fontawesome/css/all.css">
		<link rel="shortcut icon" href="image/logodh.png">

    </head>
    <body>
        <header> 
            <div class="container"> 
                 <div id="logo">
            <div id="logoImg">
               <img src="image/logodh.png " width="30px">
            </div>
          <a href="index.php">TRƯỜNG ĐẠI HỌC QUY NHƠN</a>
         </div>
         <div id="accountName">
          <p> Xin chào ! </p>
          <a href="dangxuat.php" alt="Đăng xuất"> <img src="image/logout.png" width="25px"> </a>
         </div>
            </div>
        </header>
        <!--endheader-->
        <div class="body">
      <div class="container"> 
        <div id="menu">
                  <ul>
                      <li><a  id="current" href="#"><i class="fas fa-home"></i>Trang chủ</a></li>
                      <li><a href="lop.php"><i class="fas fa-users"></i>LỚP</a></li>
                      <li><a href="sinhvien.php" ><i class="fas fa-graduation-cap"></i>SINH VIÊN</a></li>
                      <li><a href="giangvien.php"><i class="fas fa-chalkboard-teacher"></i>GIẢNG VIÊN</a></li>
                      <li><a href="diemthi.php"><i class="fas fa-check"></i>ĐIỂM THI</a></li>
                      <li><a href="contact.php"><i class="fas fa-address-book"></i>Contact</a></li>
                      

                  </ul>
          </br>
              </div>
        <div id="cthome">
			<div>
				
 
			</div>
            <img src="image/tc.png" width= "700px"> </br></br>
            <h3> Phiên bản số: 1 </h3> </br>
        </div>
            </div>
        </div>
        <!--endbody-->
    <footer>
      <div class="container">
          Phiên bản beta 
      </div>
    </footer>
    </body>
</html>

<?php
  
}
else {
  header('location: login.php');
}
?>