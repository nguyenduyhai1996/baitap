<!DOCTYPE html>
<html>
<?php
	session_start();
 	 if(isset($_SESSION['username'])){
?>

    <head>
        <meta charset="utf-8">
        <title>Sinh viên</title>
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
                     <li><a  href="index.php"><i class="fas fa-home"></i>Trang chủ</a></li>
                      <li><a href="lop.php"><i class="fas fa-users"></i>LỚP</a></li>
                      <li><a href="sinhvien.php" ><i class="fas fa-graduation-cap"></i>SINH VIÊN</a></li>
                      <li><a href="giangvien.php"><i class="fas fa-chalkboard-teacher"></i>GIẢNG VIÊN</a></li>
                      <li><a id="current" href="diemthi.php"><i class="fas fa-check"></i>ĐIỂM THI</a></li>
                      <li><a href="contact.php"><i class="fas fa-address-book"></i>Contact</a></li>
                  </ul>
             	</div>
             	 <div id="main-contain"> 
			  			<h2>BẢNG ĐIỂM </h2></br>
			  		<div id="listSV">
			
							  <table width = "70%">
								<tr>
									<th>STT</th>
									
									<th>Sinh viên</th>
									<th>Lập trình ứng dụng</th>
									<th>Toán logic</th>
									<th>Hệ thống thông tin</th>
									<th>Mạng máy tính</th>
									<th>TBC</th>
								</tr>
							 
							<?php
								$link = new mysqli('localhost','root','','sinhvien') or die('kết nối thất bại '); 
								mysqli_query($link, 'SET NAMES UTF8');
								$query = "SELECT sinhvien.name, diemthi.ltud, diemthi.toanlogic, diemthi.httt, diemthi.mmt FROM sinhvien, diemthi WHERE sinhvien.sinhvienID = diemthi.sinhvienID";
								$result = mysqli_query($link, $query);
								if(mysqli_num_rows($result) > 0){
									$i=0;
									while ($r = mysqli_fetch_assoc($result)){
										$i++;
										$ten= $r['name'];
										$ltud=$r['ltud'];
										$toanlogic = $r['toanlogic'];
										$httt = $r['httt'];
										$mmt = $r['mmt'];
										$TBC = ($ltud + $toanlogic +$httt + $mmt)/4;
										echo "<tr> ";
											echo "<td>$i</td>";	
											echo "<td>$ten</td>";
											echo "<td align= 'center'>$ltud</td>";	
											echo "<td align= 'center'>$toanlogic</td>";
											echo "<td align= 'center'>$httt</td>";
											echo "<td align= 'center'>$mmt</td>";
											echo "<td align= 'center'>$TBC</td>";
									}
								}
							?>
							</table>
					  </div>
						<form id="formChucnang">
							<a href="chucnang/themdiem.php" ><input  id="btnThemSV" type="button" value="THÊM ĐIỂM"> </a>
						</form>
              		</div>
            </div>
           
        </div>
        <!--endbody-->
		<footer>
			<div class="container">
				
			</div>
		</footer>
       
    </body>
</html>
<?php
	}
	else {
		header('location:login.php');
	}
?>