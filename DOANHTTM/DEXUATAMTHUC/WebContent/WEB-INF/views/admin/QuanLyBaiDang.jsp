<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"> -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="shortcut icon" type="image/x-icon" href="https://cdn-icons-png.flaticon.com/512/561/561611.png">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script> -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap">
    <title>KITCHEN.com</title>
    <style>
        /* Reset CSS */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Header Styles */
        header {
            font-family: 'Montserrat', sans-serif;
            background-color: #ff6600;
            color: #fff;
            padding: 10px 0;
            text-decoration: none;
        }

        main {
            font-family: 'Montserrat', sans-serif;
            position: relative;
            width: 100%;
            margin-bottom: 50px;
            background-color: #fff;
            min-height: 100px;
            
        }

        footer {
            font-family: 'Montserrat', sans-serif;
            position: relative;
            width: 100%;
            background: #ff6600;
            min-height: 100px;
            padding: 20px 50px;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }

        .col-md-12 h1 {
           
            margin-left: 0.5em;
            margin-top: 1em;
            margin-bottom: 1em;
           
            margin-right: 0.5em;
        }

        
        /* .col-md-12 h1{

            margin-top: 1.5em;
            margin-left: 2em;
            margin-right: 0.5em;
            
            padding: 15px 0px 15px 15px;
            font-size: 25px;
            font-family: 'Times New Roman', Times, serif;
            font-weight: bold;
            background-color: rgb(198, 195, 195);
            text-align: start;
            
        } */

        h5 {
            font-size: 20px;
            margin-bottom: 1.5em;
        }
        
        .container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            /* max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px; */
        }

        .logo {
            font-size: 32px;
            font-weight: bold;
text-transform: uppercase;
        }

        nav ul {
            list-style: none;
            display: flex;
            margin-bottom: auto;
            
        }

        nav li {
            margin-right: 20px;
        }

        nav a {
            
            text-decoration: none;
            color: #fff;
            
            font-size: 18px;
        }
        nav a:hover {
            color: black;
            text-decoration: none;
        }

        .dropbtn {
            background-color: #ff6600;
            color: #fff;
            /* padding: 16px; */
            font-size: 18px;
            
            border: none;
            cursor: pointer;
        }

        .dropbtn:hover, .dropbtn:focus {
            background-color: #ff6600;
            color: #323232;
        }

        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f1f1f1;
            min-width: 200px;
            overflow: auto;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

        .dropdown-content a {
            color: #323232;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            border-bottom: 2px solid #323232;
        }

        .dropdown a:hover {background-color: #ff6600;}

        .show {display: block;}

        .login-btn{
            /* background-color: transparent; */
            background-color: #ff6600;
            border: 2px solid #fff;
            /* color: #fff; */
            padding: 8px 20px;
            border-radius: 4px;
            cursor: pointer;
        }

        .login-btn a {
            color: #fff;
            text-decoration: none;
            
            
        }

        .login-btn a:hover {
            color: #323232;
        }

        .social-icon,
        .menu {
            position: relative;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 10px 0;
            flex-wrap: wrap;
        }

        .social-icon__item,
        .menu__item {
            list-style: none;
        }

        .social-icon__link {
            font-size: 2rem;
            color: #fff;
            margin: 0 10px;
            display: inline-block;
            transition: 0.5s;
        }
        .social-icon__link:hover {
            transform: translateY(-10px);
        }

        .menu__link {
            font-size: 1.2rem;
            color: #fff;
            margin: 0 10px;
            display: inline-block;
            transition: 0.5s;
            text-decoration: none;
            opacity: 0.75;
            font-weight: 300;
        }

        .menu__link:hover {
            opacity: 1;
            text-decoration: none;
        }
.footer p {
            color: #fff;
            margin: 15px 0 10px 0;
            font-size: 1rem;
            font-weight: 300;
        }

        .card {
            margin-bottom: 2.5em;
            position: relative;
            display: flex;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-color: #fff;
            background-clip: border-box;
            border: 1px solid rgba(0, 0, 0, 0.125);
            border-radius: 10px;
        }

        

        .card-img {
            width: 100%;
            border-radius: 10px;
        }

        .search-box {
            display: flex;
            align-items: center;
        }

        .search-input {
            border: none;
            padding: 8px;
            border-radius: 10px;
        }

        .search-icon {
            margin-right: 10px;
            font-size: 24px;
        }

        
        
        .meal-image
        {
            width: 30em;
            height: 20em;
            /* height: auto; */
            /* display: block; */
            display: flex;
            margin-bottom: 10px;

            /* width: 15em;
            height: 15em;
            align-items: right; */
            /* display: block; */
            /* margin: 20px auto; /* Điều chỉnh khoảng cách dưới header 
         max-width: 100%; */
        }
        /* .image-container {
            margin-top:  50px; 
            margin-left: 2.3em;
        }
         */
        /* .col-md-12
        {
            margin-right: 50em;
        } */

        
        .Name-meal
        {
            text-align: center;
            font-weight: 3px;
            font-family: 'Montserrat', sans-serif;
            /* font-size: 5em; */
        }
        
        .Name-meal a {
            color: #323232;
            font-size: 18px;
            text-decoration: underline;
            
        }

        .Name-meal a:hover {
            color: #ff6600;
            font-size: 18px;
            text-decoration: underline;
            
        }

        .card {
            position: relative;
            display: flex;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-color: #fff;
            background-clip: border-box;
            border: 1px solid rgba(0, 0, 0, 0.125);
            border-radius: 10px;
        }

        .card1 {
            position: relative;
            display: flex;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-color: #323232;
            background-clip: border-box;
            border: 1px solid #ff6600;
            border-radius: 10px;
        }

        .card-img {
            width: 100%;
            border-radius: 10px;
        }

        div .card:hover {
            border: 1px solid #ff6600;
            cursor: pointer;
        }
/* .col-md-12
        {
            margin-right: 50em;
        }
         */

        .btn-view
        {
            padding: 5px 30px 5px 30px;
            /* margin-bottom: 1em; */
            /* padding: 5px 30px 5px 30px; */
            background-color: rgb(255, 255, 255);
            border-radius: 10px;
            border: 1px solid #333;
            text-align: center;
            /* margin-left: 8em; */
            margin-right: 2em;
            width: 100%;
            font-size: 12px;
            font-weight: bold;
           
            
        }

        .btn-view:hover
        {
            background-color: #ff6600;
            color: #fff;
            border: 1px solid #ff6600;
        }

        .btn-viewall
        {
            padding: 5px 30px 5px 30px;
            background-color: rgb(255, 255, 255);
            border: 2px solid #333;
            border-radius: 10px;
            text-align: center;
            margin-left: 71em;
            /* margin-top: 5em; */
        }
        .btn-viewall:hover
        {
            background-color: #ff6600;
            color: #fff;
            border: 2px solid #ff6600;
        }
        
        .container_swap{

            width: 100%;
            /* padding: 5px 30px 5px 30px; */
           

        } 
        .div_left {
            width: 30%;

            float: left;

            text-align: center;
            /* padding: 5px 30px 5px 30px; */
            border-radius: 10px;
            margin-bottom: 1em;

        }
        .div_center {
            width: 30%;

            float: left;

            text-align: center;
            /* padding: 5px 30px 5px 30px; */
            border-radius: 10px;
            margin-left: 1em;
            /* background-color:aquamarine; */

            
        }
        .div_right {
            width: 30%;

            float: left;

            text-align: center;
            /* padding: 5px 30px 5px 30px; */
            border-radius: 10px;
            margin-left: 1em;
            /* background-color: red; */
            
            
        }
        
    </style>
</head>
<body>
    <header>
	 	<nav class="navbar navbar-expand-lg">
			<div class="container">
				<div>
		            <a class="navbar-brand" href="<c:url value = '/admin/MainHome.htm' />">KITCHEN</a>
		        </div>
		        
			    <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#menu"> 
					<span class="navbar-toggler-icon"></span>
				</button>
	        
            <div class="collapse navbar-collapse" id="menu">
				<ul class="navbar-nav mx-auto">
					<li class="nav-item">
					  <a class="nav-link" aria-current="page" href="${pageContext.request.contextPath}/admin/MainHome.htm">Trang Chủ</a>
					</li>
					
					<li class="nav-item dropdown">
					  <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">
						Danh Mục
					  </a>
					  <ul class="dropdown-menu" >
						<li><a class="dropdown-item" href="${pageContext.request.contextPath}/admin/mainfood.htm">Danh Mục Món Ăn</a></li>
						<li><a class="dropdown-item" href="${pageContext.request.contextPath}/admin/suggest.htm">Gợi Ý Hôm Nay</a></li>
						<li><a class="dropdown-item" href="${pageContext.request.contextPath}/admin/findmeal.htm">Tìm Kiếm Món Ăn</a></li>
						<li><a class="dropdown-item" href="${pageContext.request.contextPath}/admin/famousfood.htm">Món Ăn Phổ Biến</a></li>
						<li><a class="dropdown-item" href="#">Danh Sách Yêu Thích</a></li>
						<li><a class="dropdown-item" href="${pageContext.request.contextPath}/admin/createmeal.htm">Tạo Món Ăn</a></li> 
					  </ul>
					</li>
					
					<li class="nav-item dropdown">
					  <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">
						Quản Lý
					  </a>
					  <ul class="dropdown-menu" >
						<li><a class="dropdown-item" href="${pageContext.request.contextPath}/admin/qlndung.htm">Quản Lý Người Dùng</a></li>
						<li><a class="dropdown-item" href="#">Quản Lý Bài Đăng</a></li>
						<li><a class="dropdown-item" href="${pageContext.request.contextPath}/admin/qlmonan.htm">Quản Lý Món Ăn</a></li>
						<li><a class="dropdown-item" href="${pageContext.request.contextPath}/admin/qlDM.htm">Quản Lý Danh Mục</a></li>
						
					  </ul>
					</li>
					
					<li class="nav-item">
					  <a class="nav-link" href="#">Tin Tức</a>
					</li>
			  	</ul>
			  	
				<div class="dropdown">
	                <button  onclick="showDropdown()" class="login-btn"><i class="fa-solid fa-user"></i> ${sessionScope.nameuser}</button>
	                	<div id="myDropdown" class="dropdown-content">
						    <a href="${pageContext.request.contextPath}/admin/accountadmin.htm">Tài Khoản</a>
						    <a href="${pageContext.request.contextPath}/users/Login.htm">Logout</a>
  						</div>
	                
	                
	            </div>
				
	    	</div>
            
        </div>
        </nav>
        
        <script>
        function showDropdown() {
  	  	  document.getElementById("myDropdown").classList.toggle("show");
  	  	}
  	
  	  	// Đóng dropdown nếu người dùng click bất kỳ nơi nào trên trang
  	  	window.onclick = function(event) {
  	  	  if (!event.target.matches('.login-btn')) {
  	  	    var dropdowns = document.getElementsByClassName("dropdown-content");
  	  	    for (var i = 0; i < dropdowns.length; i++) {
  	  	      var openDropdown = dropdowns[i];
  	  	      if (openDropdown.classList.contains('show')) {
  	  	        openDropdown.classList.remove('show');
  	  	      }
  	  	    }
  	  	  }
  	  	}
  	 	</script>
      </header>

    <main>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1 style="text-align: center;">QUẢN LÝ BÀI ĐĂNG</h1>
                     <c:forEach items="${ListNotAccept}" var="MEAL">
                        <div class="col-md-4">
                            <div class="image-container">
                                <div class="card">
                                    <img class="meal-image card-img" src="${MEAL.hinhAnh}" alt="Banner Image">
                                    <div class="Name-meal">
                                        <h5>${MEAL.tenMon}</h5>
                                        <h5>By <span style="font-weight: bold;">${MEAL.tenND}@</span></h5>
                                        <!-- <div class="btn"></div> -->
                                        <div class="container_swap">
                                            <div class="div_left"><a href="#"><button class="btn-view" type="button">Xem</button></a></div>
                                            <div class="div_center"><a href="#"><button class="btn-view" style="background: rgb(9, 185, 126);" type="button">Duyệt</button></a></div>
                                            <div class="div_right"><a href="#"><button class="btn-view" style="background:red; " type="button">Xóa</button></a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                        

                        <div class="col-md-4">
                            <div class="image-container">
                                <div class="card">
                                    <img class="meal-image card-img" src="https://s.net.vn/yQ1p" alt="Banner Image">
                                    <div class="Name-meal">
                                        <h5>Salad Trứng</h5>
                                        <h5>By <span style="font-weight: bold;">ThaoVy@</span></h5>
                                        <!-- <a href="ChiTietMonAn.html">Xem chi tiết</a> -->
                                        <!-- <div class="btn"></div>
                                        <a href="#"><button class="btn-view" type="button">Xem</button></a> -->
                                        <div class="container_swap">
                                            <div class="div_left"><a href="#"><button class="btn-view" type="button">Xem</button></a></div>
                                            <div class="div_center"><a href="#"><button class="btn-view" style="background: rgb(9, 185, 126);" type="button">Duyệt</button></a></div>
                                            <div class="div_right"><a href="#"><button class="btn-view" style="background:red; " type="button">Xóa</button></a></div>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="image-container">
                                <div class="card">
                                    <img class="meal-image card-img" src="https://s.net.vn/uApF" alt="Banner Image">
<div class="Name-meal">
                                        <h5>Bánh Mì Trứng Nướng</h5>
                                        <h5>By <span style="font-weight: bold;">QuocCuong@</span></h5>
                                        <!-- <div class="btn"></div>
                                        <a href="#"><button class="btn-view" type="button">Xem</button></a> -->
                                        <div class="container_swap">
                                            <div class="div_left"><a href="#"><button class="btn-view" type="button">Xem</button></a></div>
                                            <div class="div_center"><a href="#"><button class="btn-view" style="background: rgb(9, 185, 126);" type="button">Duyệt</button></a></div>
                                            <div class="div_right"><a href="#"><button class="btn-view" style="background:red; " type="button">Xóa</button></a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="image-container">
                                <div class="card">
                                    <img class="meal-image card-img" src="https://s.net.vn/gSYd" alt="Banner Image">
                                    <div class="Name-meal">
                                        <h5>Smoothie Trái Cây</h5>
                                        <h5>By <span style="font-weight: bold;">Ruby@</span></h5>
                                        <!-- <div class="btn"></div>
                                        <a href="#"><button class="btn-view" type="button">Xem</button></a> -->
                                        <div class="container_swap">
                                            <div class="div_left"><a href="#"><button class="btn-view" type="button">Xem</button></a></div>
                                            <div class="div_center"><a href="#"><button class="btn-view" style="background: rgb(9, 185, 126);" type="button">Duyệt</button></a></div>
                                            <div class="div_right"><a href="#"><button class="btn-view" style="background:red; " type="button">Xóa</button></a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="image-container">
                                <div class="card">
                                    <img class="meal-image card-img" src="https://s.net.vn/72Sa" alt="Banner Image">
                                    <div class="Name-meal">
                                        <h5>Súp Rau Củ</h5>
                                        <h5>By <span style="font-weight: bold;">ThanhTruc@</span></h5>
                                        <!-- <div class="btn"></div>
                                        <a href="#"><button class="btn-view" type="button">Xem</button></a> -->
                                        <div class="container_swap">
                                            <div class="div_left"><a href="#"><button class="btn-view" type="button">Xem</button></a></div>
                                            <div class="div_center"><a href="#"><button class="btn-view" style="background: rgb(9, 185, 126);" type="button">Duyệt</button></a></div>
                                            <div class="div_right"><a href="#"><button class="btn-view" style="background:red; " type="button">Xóa</button></a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="image-container">
                                <div class="card">
                                    <img class="meal-image card-img" src="https://s.net.vn/mKvn" alt="Banner Image">
                                    <div class="Name-meal">
                                        <h5>Sữa Chua Hoa Quả</h5>
                                        <h5>By <span style="font-weight: bold;">TienDat@</span></h5>
                                        <!-- <div class="btn"></div>
                                        <a href="#"><button class="btn-view" type="button">Xem</button></a> -->
                                        <div class="container_swap">
                                            <div class="div_left"><a href="#"><button class="btn-view" type="button">Xem</button></a></div>
                                            <div class="div_center"><a href="#"><button class="btn-view" style="background: rgb(9, 185, 126);" type="button">Duyệt</button></a></div>
                                            <div class="div_right"><a href="#"><button class="btn-view" style="background:red; " type="button">Xóa</button></a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <button class="btn-viewall" type="submit">Xem Thêm <i class="fa-solid fa-share"></i></button>
                </div>
            </div>
        </div>  
        
        
                    
        
                
        
            
        </div>
    
        
    </main>
    
    <footer>
        <div class="footer">
            <!-- <div class="waves">
                <div class="wave" id="wave1"></div>
                <div class="wave" id="wave2"></div>
                <div class="wave" id="wave3"></div>
                <div class="wave" id="wave4"></div>
            </div> -->
            <ul class="social-icon">
<li class="social-icon__item"><a class="social-icon__link" href="#">
                    <ion-icon name="logo-facebook"></ion-icon>
                  </a></li>
                <li class="social-icon__item"><a class="social-icon__link" href="#">
                    <ion-icon name="logo-twitter"></ion-icon>
                  </a></li>
                <li class="social-icon__item"><a class="social-icon__link" href="#">
                    <ion-icon name="logo-linkedin"></ion-icon>
                  </a></li>
                <li class="social-icon__item"><a class="social-icon__link" href="#">
                    <ion-icon name="logo-instagram"></ion-icon>
                  </a></li>
              </ul>
              <ul class="menu">
                <li class="menu__item"><a class="menu__link" href="#">Trang chủ</a></li>
                <li class="menu__item"><a class="menu__link" href="#">Danh Mục</a></li>
                <li class="menu__item"><a class="menu__link" href="#">Nấu Ăn</a></li>
                <li class="menu__item"><a class="menu__link" href="#">Tin Tức</a></li>
              </ul>
              <p class="text-center">&copy;All Rights Reserved</p>
              <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
                <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
        </div>
    </footer> 
            

        
       
   
        
        
   

</body>
</html>