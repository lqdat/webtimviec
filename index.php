<?php
session_start();
if(isset($_SESSION['$UserName'])){
	header('location:Admin/index.php');
} 
if(isset($_SESSION['$UserName_job'])){
	header('location:JobSeeker/index.php');
} 
if(isset($_SESSION['$UserName_emp'])){
	header('location:Employer/index.php');
} 
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="cs" lang="cs">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta http-equiv="content-language" content="cs" />
    <meta name="robots" content="all,follow" />

    
    <title>Cổng Thông tin tìm việc làm</title>
    <meta name="description" content="..." />
    <meta name="keywords" content="..." />
    
    <link rel="index" href="./" title="Home" />
    <link rel="stylesheet" media="screen,projection" type="text/css" href="./css/main.css" />
    <link rel="stylesheet" media="print" type="text/css" href="./css/print.css" />
    <link rel="stylesheet" media="aural" type="text/css" href="./css/aural.css" />
    <style type="text/css">
<!--
.style1 {
	color: #000066;
	font-weight: bold;
}
.style2 {
	font-size: medium;
	font-weight: bold;
}
-->
    </style>
</head>

<body id="www-url-cz">
<!-- Main -->
<div id="main" class="box">
<?php 
include "Header.php"
?>
<?php 
include "menu.php"
?>   
<!-- Page (2 columns) -->
    <div id="page" class="box">
    <div id="page-in" class="box">

        <div id="strip" class="box noprint">

            <!-- RSS feeds -->
            <hr class="noscreen" />

            <!-- Breadcrumbs -->
            <p id="breadcrumbs">&nbsp;</p>
          <hr class="noscreen" />
            
        </div> <!-- /strip -->

        <!-- Content -->
        <div id="content">
            <div class="article">
                <h2><span><a href="#">Chào Mừng đến với Công thông tin việc làm</a></span></h2>
				<h3><marquee>Chào Mừng đến với Công thông tin việc làm</marquee></h3>
               

                <p> <span class="style2">C</span>hào mừng bạn đến với Cổng thông tin việc làm trực tuyến. Nó cung cấp cơ sở cho Người tìm việc để tìm kiếm các công việc khác nhau theo trình độ của mình. Tại đây Người tìm việc có thể tự đăng ký trên cổng thông tin điện tử và tạo hồ sơ cùng với thông tin giáo dục của mình. Người tìm việc có thể tìm kiếm các công việc khác nhau và nộp đơn cho Công việc.</p>
              <p>Cổng thông tin này cũng được thiết kế cho các nhà tuyển dụng khác nhau, những người yêu cầu tuyển dụng nhân viên trong tổ chức của họ. Nhà tuyển dụng có thể tự đăng ký trên cổng thông tin điện tử và sau đó anh ta có thể tải lên thông tin về các vị trí tuyển dụng khác nhau trong tổ chức của họ. Nhà tuyển dụng có thể xem các đơn đăng ký của Người tìm việc và gửi cuộc gọi sau cho người tìm việc.</p>
              <p align="right"> <img src="design/banner-4.jpg" alt="" width="510" height="300" /></p>
              <p class="btn-more box noprint">&nbsp;</p>
          </div> <!-- /article -->

            <hr class="noscreen" />
            
        </div> <!-- /content -->

<?php
include "right.php"
?>

    </div> <!-- /page-in -->
    </div> <!-- /page -->

 
<?php
include "footer.php"
?>
</div> <!-- /main -->

</body>
</html>
