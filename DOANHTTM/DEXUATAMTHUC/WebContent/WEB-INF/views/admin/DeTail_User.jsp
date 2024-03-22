<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
	<link rel="shortcut icon" type="image/x-icon" href="https://cdn-icons-png.flaticon.com/512/561/561611.png">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap">
	<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  	<!--  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    <title>KITCHEN.com</title>
    <style>
		/* Reset CSS */
        * 
        {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Montserrat', sans-serif;
        }
        /* Header Styles */
		 header 
		{
            font-family: 'Montserrat', sans-serif;
            background-color: #ff6600;
            color: #fff;
            padding: 10px 0;
            text-decoration: none;
        }
        
        
        .logo {
            font-size: 32px;
            /* font-weight: bold; */
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
        
        /* Main Styles */
        main {
            font-family: 'Montserrat', sans-serif;
            position: relative;
            width: 100%;
            margin-bottom: 50px;
            background-color: #fff;
            min-height: 100px;
            
        }
        .banner-image {
            /* width: 70em; 
            height: 20em; */
            /* width: auto; */
            object-fit: cover;
            width: 1920px;
            height: 500px;
            /* height: auto; */
            display: block;
            /* margin: 20px auto; Điều chỉnh khoảng cách dưới header  */
            max-width: 100%;
        }
        form.example input[type=text] {
            
            position: absolute;
            top: 210px;
            right: 250px;
            padding: 10px;
            font-size: 17px;
            border: 1px solid grey;
            float: left;
            width: 960px;
            background: #f1f1f1;
            border-radius: 20px;
        }

        

        

        form.example i {
            position: absolute;
            top: 210px;
            right: 250px;
            /* right: 250px; */
            /* float: left; */
            /* width: 20%; */
            padding: 15px;
            /* background: #2196F3; */
            /* color: white; */
            color: #323232;
            font-size: 17px;
            /* border: 1px solid grey; */
            /* border-left: none; */
            cursor: pointer;
            
        }

        

        /* form.example button:hover {
            background: #0b7dda;
        } */

        form.example::after {
            content: "";
            clear: both;
            display: table;
        }
        .MAIN {
            background: url("https://bitly.li/YKla");
            background-size: cover;
            /* font-family: Arial, Helvetica, sans-serif; */
            font-family: 'Montserrat', sans-serif;
            background-color: #f1f1f1;
            color: red;
            text-align: center;
            height: 100%;
            width: 100%;
            padding: 110px 0px;
            /* width: 10em;
            height: 10em; */
            /* width: 200px;
            height: 200px; */
        }
        
        .MAIN:hover{
            cursor: pointer;
        }
.DESSERT {
            background: url("https://bitly.li/PrY9");
            background-size: cover;
            /* font-family: Arial, Helvetica, sans-serif; */
            font-family: 'Montserrat', sans-serif;
            background-color: #f1f1f1;
            color: red;
            text-align: center;
            padding: 110px 0px;
            height: 100%;
            width: 100%;
            /* width: 600px;
            height: 480px; */
            
        }

        .DESSERT:hover {
            cursor: pointer;
        }

        .BREAKFAST {
            background: url("https://bitly.li/UXJD");
            background-size:cover;
            /* font-family: Arial, Helvetica, sans-serif; */
            font-family: 'Montserrat', sans-serif;
            background-color: #f1f1f1;
            color: red;
            text-align: center;
            padding: 110px 0px;
            /* padding-top: 100%; */
            height: 100%;
            width: 100%
        }

        .BREAKFAST:hover {
            cursor: pointer;
        }

        .FASTFOOD {
            background: url("https://bitly.li/ntis");
            background-size: cover;
            /* font-family: Arial, Helvetica, sans-serif; */
            font-family: 'Montserrat', sans-serif;
            background-color: #f1f1f1;
            color: red;
            text-align: center;
            padding: 110px 0px;
            height: 100%;
            width: 100%;
        }

        .FASTFOOD:hover {
            cursor: pointer;
        }
        .col-md-12 h1 {
            text-decoration: none;
            margin-left: 0.5em;
            margin-top: 1em;
            margin-bottom: 1em;

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
        .meal-image
        {
            width: 30em;
            height: 20em;
            /* height: auto; */
            /* display: block; */
            display: flex;
            margin-bottom: 10px;

            
        }
        .card-img {
            width: 100%;
            border-radius: 10px;
        }
        .Name-meal
        {
            text-align: center;
            font-weight: 3px;
            /* font-family: 'Times New Roman', Times, serif; */
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
        h5 {
            font-size: 20px;
font-family: 'Montserrat', sans-serif;
        }
        div .card:hover {
            border: 1px solid #ff6600;
            cursor: pointer;
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
        
        /* Footer Styles */
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
            font-family: 'Montserrat', sans-serif;
        }
        p {
            /* font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif; */
            font-family: 'Montserrat', sans-serif;
            font-size: 16px;
            font-weight: bold;
            margin-right: 5px;
           
            
        }
        p:hover {
            cursor: pointer;
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
             
        product-list {
        	display: flex;
        }   
        .notification {
            width: 700px;
            background-color: #f2e196;
            border: solid #f2e196;
            padding: 10px;
            overflow: auto;
            margin: auto;
            text-align: left;
            margin-bottom: 15px;
            border-radius: 10px;
        }

#note {
            width: 570px;
            height: 50px;
            background: #f2e196;
            float: left;
        }

        #note-icon {
            width: 10px;
            height: 50px;
            background: #f2e196;
            float: right;
            text-align: left;
        }

.profile {
            width: 700px;
            background-color: #fff;
            border: solid #f8f6f2;
            padding: 10px;
            overflow: auto;
            margin: auto;
            margin-bottom: 15px;
            border-radius: 20px;
        }

        .profile button {
            font-size: 16px;
            border-radius: 5px;
            color: black;
            background-color: white;
            text-align: center;
            padding-left: 20px;
            padding-right: 20px;
            font-weight: bold;
        }

#avatar {
            width: 100px;
            height: 120px;
            background: #fff;
            float: left;
        }

        #name {
            width: 300px;
            height: 120px;
            background: #fff;
            float: left;
            text-align: left;
        }

        #profile-icon {
            width: 200px;
            height: 120px;
            background: #fff;
            float: right;
            text-align: right;
            color: black;
        }

        #profile-icon svg {
            margin-right: 10px;
        }

        .tablinks {
            
            text-decoration: underline;
        }
        

    .tab {
                width: 700px;
                background-color: #fff;
                border: solid #f8f6f2;
                padding: 10px;
                overflow: auto;
                margin: auto;
                border-radius: 20px;
                
            }

            /* Style the tab */
    /* .tab {
    overflow: hidden;
    border: 1px solid #ccc;
    background-color: #f1f1f1;
    } */

        /* Style the buttons inside the tab */
        .tab button {
        background-color: inherit;
        float: left;
        border: none;
        outline: none;
        cursor: pointer;
        padding: 14px 16px;
        transition: 0.3s;
        font-size: 17px;
        /* text-decoration: underline; */
        
        }

        /* Change background color of buttons on hover */
        .tab button:hover {
        /* background-color: #ddd; */
        /* color:#ff6600;
        text-decoration: underline; */
        
        
        }

        /* Create an active/current tablink class */
        .tab button.active {
        background-color: none;
        color: #ff6600;
        }

        /* Style the tab content */
        .tabcontent {
            width: 700px;
            display: none;
            padding: 10px;
            border: 1px solid #ccc;
            border-top: none;
            overflow: auto;
            margin: auto;
            
        }

        
        

        .choice_list {
            position: relative;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
        }

        .choice {
            list-style: none;
            display: flex;
            
        }

        .choice > li {
            padding: 30px;
            font-size: 18px;
            font-weight: bolder;
        }

        .information{
            width: 700px;
            background-color: #f8f6f2;
            padding: 10px;
            overflow: auto;
            margin: auto;
            border-radius: 20px;
        }

        #text {
            width: 100px;
            height: 50px;
            background: #f8f6f2;
            float: left;
            
        }
        
        p {
            color: #323232;
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
      </header>
      
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
    
    <main>

	<div class="container py-5">
        <div class="notification">
            <div id="note">
                <span style="font-weight: bold; font-size: 16px;">Bạn vẫn chưa đăng ký</span><br>
                <span style="color: f8f6f2; font-size: 16px;">Đăng ký ngay để tìm ra những món đã được kiểm chứng nhanh hơn</span>
            </div>
            <div id="note-icon">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="none" viewBox="0 0 24 24" class="mise-icon mise-icon-arrow-right" style="position: absolute">
                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M5 12h14M13 6l6 6-6 6"></path>
                </svg>
            </div>
        </div>

        <div id="content" class="profile">
            <div id="avatar">
                <img src="https://th.bing.com/th/id/R.dfa5993601e3a71ba8e909cee2f1a906?rik=aXV23DtttdSp3w&pid=ImgRaw&r=0" height="100" width="100">
            </div>
            <div id="name">
                <span style="font-weight: bold; font-size: 20px;">Người dùng</span>
                <br>
                <span style="color: f8f6f2; font-size: 16px;">@ ${name}</span><br><br>
                <a href="#"><button>Xem Trang Bếp</button>
            </div>
            <div id="profile-icon">
           
                
                ${countlike}
                <i class="fas fa-heart" style="color: red;"></i>


            </div>
        </div>
        
        <div class="tab">
            
               
                <button class="tablinks" onclick="openCity(event, 'MonCuaToi')">Món Của Bếp</button>
                
                <button class="tablinks" onclick="openCity(event, 'BiQuyet')">Bí Quyết</button>
                <button class="tablinks" onclick="openCity(event, 'Cookbook')">Cookbook</button>
         </div>
         
         
            
            <!-- tab món của tôi -->
			<div id="MonCuaToi" class="tabcontent">
				<div class="container py-5">
            		<div class="row">
                
                    	<h6 class="text-center">DANH SÁCH CÁC MÓN ĂN ĐÃ TẠO</h6>
                    
                    
						<c:forEach items="${list_created}" var="MEAL">
						<div class="col-md-6">
							<div class="image-container">
								<div class="card">
									<img class="meal-image card-img" src="${MEAL.hinhAnh}"
										alt="${MEAL.tenMon}">
									<div class="Name-meal">
										<h5>${MEAL.tenMon}</h5>
										<div class="btn"></div>
										<a href="${pageContext.request.contextPath}/admin/Infor_Meal${MEAL.maMon}.htm"><button class="btn-view" type="button">Xem</button></a>
									</div>
								</div>
							</div>
						</div>
						</c:forEach>
					
            		</div>
        		</div>
			</div>
			
			
            
            <!-- tab bí quyết -->
            <div id="BiQuyet" class="tabcontent">
                <div class="text-center">
                    <img class="inline-block mb-rg h-18 xs:h-24" src="//global-web-assets.cpcdn.com/assets/empty_states/no_tips-0c5c91733369f17179a635c3fd99f23cf410e582982af1f2e9459229cd6a26c7.svg" />
                    <p class="bi_quyet">Chưa có bí quyết nào</p>
                </div>
            </div>
            
            
            <!-- tab cookbok -->
            <div id="Cookbook" class="tabcontent">
                <div class="text-center">
                    <img class="inline-block mb-rg h-18 xs:h-24" src="https://global-web-assets.cpcdn.com/assets/empty_states/no_cookbooks-3f556748f261ca4d9c730e1daaac10ec7eeb4cab04c30badb0f8b279cb9598fc.svg" />
                    <p>Chưa có hoạt động bếp nào</p>
                </div>
                
            </div>
        </div>
        
            
            <script>
                function openCity(evt, cityName) {
                  var i, tabcontent, tablinks;
                  tabcontent = document.getElementsByClassName("tabcontent");
                  for (i = 0; i < tabcontent.length; i++) {
                    tabcontent[i].style.display = "none";
                  }
                  tablinks = document.getElementsByClassName("tablinks");
                  for (i = 0; i < tablinks.length; i++) {
                    tablinks[i].className = tablinks[i].className.replace(" active", "");
                  }
                  document.getElementById(cityName).style.display = "block";
                  evt.currentTarget.className += " active";
                }
                </script>

     <!--   <div class="tab">
            <div class="choice_list">
                <ul class="choice">
                    <li aria-selected="true"><a href="#" style="color: black">Đã lưu</a></li>
                    <li aria-selected="false"><a href="#" style="color: black">Món của tôi</a></li>
                    <li aria-selected="false"><a href="#" style="color: black">Cooksnap</a></li>
                    <li aria-selected="false"><a href="#" style="color: black">Bí quyết</a></li>
                    <li aria-selected="false"><a href="#" style="color: black">Cookbook</a></li>
                </ul>
            </div>
        </div>
         --> 

     <!--    <div class="information">
            <div id="text" style="text-align: left;">
                <span style="font-size: 20px; font-weight: bold">0 món</span>
            </div>
            <div id="search">
                <div class="search-bar">
                    <div class="search-input">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M16 16l4 4"></path>
                            <circle cx="10.5" cy="10.5" r="7.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5"></circle>
                        </svg>
                        <input type="text" placeholder="Tìm món" />
                    </div> 
                    <button type="submit">Tìm</button>
                </div>               
            </div>
        </div>
        <div>
            <img class="inline-block mb-rg h-18 xs:h-24" src="//global-web-assets.cpcdn.com/assets/empty_states/no_bookmarks-496066a48bfb2bc28a2527a78b0870d7e17b794c2bcae70026647206e568a464.svg" height="100" width="100" style="margin-bottom: 10px;">
            <div style="font-size: 20px; font-weight: bold; margin-bottom: 10px;">Xem các món đã lưu tại đây :)</div>
            <div style="font-size: 18px; margin-bottom: 10px;">
                Lưu các món yêu thích bằng cách nhấn vào biểu tượng <br> lưu ở mỗi trang công thức.
            </div>
            <a href="#"><button style="font-size: 18px; font-weight: bold; color: white; border: none; background-color: #525252; padding-left: 10px; padding-right: 10px; border-radius: 5px;">Bắt đầu tìm kiếm mới</button>
        </div>
        --> 
            

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