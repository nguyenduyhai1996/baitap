
<?php
session_start()

?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Đăng nhập admin</title>
        <link rel="stylesheet" href="style/style.css">
		<link rel="shortcut icon" href="image/logodh.png">
    </head>
    <body>
        <header> 
            <div class="container"> 
                    <h1 align="center">ĐĂNG NHẬP </h1>
            </div>
        </header>
        <div class="body">
            <div class="container"> 
                <div id="formlogin">
                    <form method="post" name="login-form">
                            <h3>Đăng nhập vào ứng dụng</h3>
							<br>
								<table>
									<tr height="50px">
									   <td>
										   Tài khoản
									   </td>
									   <td>
										   <input type="text" name="taikhoan">
									   </td> 
									</tr>
									<tr>
										<td>
											Mật khẩu
										</td>
										<td>
											<input id="submit" type="password" name="password">
										</td> 
									</tr>
								</table>
								<input id="btndangnhap" type="submit" name="login" value="Đăng nhập">
					 </form>
								<?php
									//kết nối dl
									$link = new mysqli('localhost','root','','sinhvien') or die('kết nối thất bại '); 
									//bản mã
									mysqli_query($link, 'SET NAMES UTF8');
									if(isset($_POST['login'])){
										if ( empty($_POST['taikhoan']) or empty($_POST['password'])) { echo ' </br> <p style="color:red"> vui lòng nhập đầy đủ username và password !</p>';}
										else
										{
											//lấy dl từ form
											$tk= $_POST['taikhoan'];
											$mk= $_POST['password'];
											//lay dl
											$query="SELECT * FROM dangnhap where account = '$tk' and password = '$mk'";
											$result = mysqli_query($link, $query);
											$num = mysqli_num_rows($result);
											//kt đăng nhập
											if($num==0)
												{
													echo'</br> <p style="color:red"> Sai tên đăng nhập hoặc mật khẩu ! </p>';
												}
											else {

												$_SESSION['username']= $tk;
												header('location:index.php');
												
												}
										}
										
									}

								?>
                </div>
            </div>
        </div>
        <footer>
            <div class="container"> 
              <div id="ftcontent">Đại học Quy Nhơn v.1</div>
            </div>
        </footer>
    </body>
</html>
