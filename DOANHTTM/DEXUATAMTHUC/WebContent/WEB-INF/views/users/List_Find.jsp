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
   
    <link rel="shortcut icon" type="image/x-icon" href="https://cdn-icons-png.flaticon.com/512/561/561611.png">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    
    <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script> -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  
    <title>KITCHEN.com</title>

    <style>
        /* Reset CSS */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Montserrat', sans-serif;
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
            /* font-weight: bold; */
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
            /* font-weight: bold; */
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
            /* font-weight: bold; */
            
        }

        .login-btn a:hover {
            color: #323232;
        }

        
        .icon {
            object-fit: cover;
            width: 45px;
            height: 45px;
            margin-right: 0.2em;
            
        }

        
        form.example input[type=text] {
            
            position: absolute;
            /* top: 210px; */
            /* right: 250px; */
            padding: 10px;
            margin-left: 15em;
            font-size: 17px;
            border: 1px solid #323232;
            /* float: left; */
            
            width: 580px;
            background: #fff;
            border-radius: 10px;
            
        }

        form.example i {
            position: absolute;
            margin-left: 47em;
            color: gray;
            font-size: 17px;
            cursor: pointer;
            
        }

        form.example::after {
            content: "";
            clear: both;
            display: table;
        }

        /* .col-md-12 h5 {
            font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
            margin-left: 18em;
            margin-top: 3em;
            margin-bottom: 1em;
        } */

        

        .meal-image
        {
            width: 40em;
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
        
        .col-md-12 {
            margin-bottom: 3em;
        }

        h1 {
            margin-left: 0.5em;
            margin-bottom: 0.5em;
            font-family: 'Montserrat', sans-serif;
        }

        h5 {
            font-size: 20px;
            font-family: 'Montserrat', sans-serif;
        }

        .react i {
            background: #eae9e9;
            border-radius: 10px;
            padding: 10px 15px 5px 15px;
            color: red;
            margin-right: 22em;
            cursor: pointer;
            
        }

        .react i:hover {
            
            background: #c2c1c1;
            border-radius: 10px;
            padding: 10px 15px 5px 15px;
            color: red;
            cursor: pointer;
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
            font-size: 18px;
            font-weight: bold;
           
            
        }

        .btn-view:hover
        {
            background-color: #ff6600;
            color: #fff;
            border: 1px solid #ff6600;
        }

        .btn {
            text-align: center;
            justify-content: center;
        }
        
        .navbar-brand{
        	color: #fff;
        	font-size: 32px
        }
        .navbar-brand:hover{
color: #fff
        }
        .nav-link {
        	color: #fff;
        	font-size: 20px
        }
        .dropdown-item {
        	border-bottom: 1px solid black;
        	font-size: 20px;
        	
        }
        
        
        
        #menu .nav-link{ padding: 5px 20px }
		#menu .nav-link:hover {color: black}
		#menu .dropdown-item{ text-align: center; position: relative; padding: 10px;}
		#menu .dropdown-item:after{ content: ""; position: absolute; width: 40%; height: 2px;}
        
    </style>
</head>

<body>
    <header>
	 	<nav class="navbar navbar-expand-lg">
			<div class="container">
				<div>
		            <a class="navbar-brand" href="${pageContext.request.contextPath}/users/Main.htm">KITCHEN</a>
		        </div>
		        
			    <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#menu"> 
					<span class="navbar-toggler-icon"></span>
				</button>
	        
            <div class="collapse navbar-collapse" id="menu">
				<ul class="navbar-nav mx-auto">
					<li class="nav-item">
					  <a class="nav-link" aria-current="page" href="">Trang Chủ</a>
					</li>
					
					<li class="nav-item dropdown">
					  <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">
						Danh Mục
					  </a>
					  <ul class="dropdown-menu" >
						
						<li><a  class="dropdown-item" href="${pageContext.request.contextPath}/users/mainfood.htm">Danh Mục Món Ăn</a></li>
						
						<li><a class="dropdown-item" href="${pageContext.request.contextPath}/users/suggest.htm">Gợi Ý Hôm Nay</a></li>
						<li><a class="dropdown-item" href="${pageContext.request.contextPath}/users/findmeal.htm">Tìm Kiếm Món Ăn</a></li>
						<li><a class="dropdown-item" href="${pageContext.request.contextPath}/users/famousfood.htm">Món Ăn Phổ Biến</a></li>
						
						<li><a class="dropdown-item" href="${pageContext.request.contextPath}/users/search_user.htm">Tìm Kiếm Người Dùng</a></li>
						<li><a class="dropdown-item" href="${pageContext.request.contextPath}/users/createmeal.htm">Tạo Món Ăn</a></li>
					  </ul>
					</li>
					
					<li class="nav-item">
					  <a class="nav-link" href="#">Tin Tức</a>
					</li>
			  	</ul>
			  	
				
				<div class="dropdown">
	                <button  onclick="showDropdown()" class="login-btn"><i class="fa-solid fa-user"></i> ${sessionScope.nameuser}</button>
	                	<div id="myDropdown" class="dropdown-content">
						    <a href="${pageContext.request.contextPath}/users/acountuser.htm">Tài Khoản</a>
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

        <div class="container py-5">
            <div class="col-md-12">
                <h1 class="text-center"><img class="icon" src="https://cdn-icons-png.flaticon.com/512/561/561611.png">KITCHEN</h1>
                <form class="example" action="/action_page.php">
                    <input type="text" placeholder="Nhập tên món ăn..." name="search">
                    <button type="submit"><i class="fa fa-search"></i></button>
                </form>
            </div>
        </div>

        

        <!-- <div class="container">
            <div class="col-md-12">
                <h5>CÁC MÓN PHỔ BIẾN TÌM KIẾM HIỆN NAY</h5>
            </div>
        </div> -->

        <div class="container">
            <div class="row">
                
                    <h1 class="text-center">DANH SÁCH TÌM KIẾM </h1>
                    
                    <c:forEach items="${foundMeals}" var="MEAL">
					<div class="col-md-4">
						<div class="image-container">
							<div class="card">
								<img class="meal-image card-img" src="${MEAL.hinhAnh}"
									alt="Banner Image">
								<div class="Name-meal">
									<h5>${MEAL.tenMon}</h5>
									 <div class="react">
                                        <i class="fa-solid fa-heart"></i>
                                       
                                    </div>
									<div class="btn"></div>
									<a href="${pageContext.request.contextPath}/users/Infor_Meal${MEAL.maMon}.htm"><button class="btn-view" type="button">Xem</button></a>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
				

                   

                   

               
                
            </div>
        </div>
       
            
    </main>

    <footer>
        <div class="footer">
            
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
                <!-- <li class="menu__item"><a class="menu__link" href="#">Nấu Ăn</a></li> -->
                <li class="menu__item"><a class="menu__link" href="#">Tin Tức</a></li>
              </ul>
              <p class="text-center">&copy;All Rights Reserved</p>
              <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
                <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
        </div>
    </footer>

</body>
</html>