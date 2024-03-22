<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
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
            /* margin-bottom: 40px; */
            background-color: #f1f1f1;
            min-height: 100px;
            
        }

        /* footer {
            background-color: #ff6600;
            color: #fff;
            padding-bottom: 50px; 
        } */

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
        .meal-image
        {
            width: 30em;
            height: 20em;
            /* height: auto; */
            /* display: block; */
            display: flex;
            margin-bottom: 10px;
            
            /* width: 30em;
            height: 20em;
            /* height: auto; */
            /* display: block; */
            /* display: flex;
            margin-bottom: 10px; */

            /* width: 15em;
            height: 15em;
            align-items: right; */
            /* display: block; */
            /* margin: 20px auto; /* Điều chỉnh khoảng cách dưới header 
         max-width: 100%; */
        }
        .image-container {
            margin-top:  50px; /* Khoảng cách 20px xung quanh container */
            margin-left: 2.3em;
        }
        /* .col-md-12
        {
            margin-right: 50em;
        } */
        .Name-meal
        {
            text-align: center;
            font-weight: 3px;
            font-family: 'Times New Roman', Times, serif;
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
            /* background-color: white; */
            background-color: rgb(255, 255, 255);
            background-clip: border-box;
            border: 1px solid rgba(0, 0, 0, 0.125);
            border-radius: 10px;
        }

        .card-title {
            
            position: relative;
            display: flex;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            /* background-color: white; */
            background-color: rgb(255, 255, 255);
            background-clip: border-box;
            border: 1px solid rgba(0, 0, 0, 0.125);
            border-radius: 10px;
            padding: 15px 10px 5px 10px;
            text-align: center;
            font-weight: bold;
        }

        .card-detail {
            position: relative;
            display: flex;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            /* background-color: white; */
            background-color: rgb(255, 255, 255);
            background-clip: border-box;
            border: 1px solid rgba(0, 0, 0, 0.125);
            border-radius: 10px;
            padding: 0px 0px 0px 10px;
        }

        p {
            font-size: 24px;
            
            
        }

        

        .card-img {
            width: 100%;
            border-radius: 10px;
        }

        .py-5 {
            padding-top: 3rem !important;
            padding-bottom: 3rem !important;
            
            
        }

        h5 {
            font-size: 20px;
        }

        .center {
            text-align: center;
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
        
        .search-box {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background: #fff;
            height: 40px;
            border-radius: 40px;
            padding: 10px;
            display: flex;
            justify-content: space-between;
            
        }

        .search-box:hover > .search-txt {
            width: 960px;
            
            padding: 0 6px;
        }

        

        .search-box:hover > .search-btn {
            background: #fff;
            color: #323232;
        }

        .search-btn {
            color: #323232;
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: #323232;
            display: flex;
            justify-content: center;
            align-items: center;
            transition: 0.4s;
            color: white;
            cursor: pointer;
            text-decoration: none;
        } 

        .search-btn > i {
            font-size: 20px;
        } 

        .search-txt {
            border: none;
            background: none;
            outline: none;
            padding: 0;
            color: #323232;
            font-size: 16px;
            transition: 0.4s;
            line-height: 40px;
            width: 0px;
            font-weight: bold;
        }


        .btn-save {
            width: 85%;
            position: relative;
            border-radius: 5px;
            padding: 5px 10px 5px 10px;
            margin-top: 15px;
            margin-bottom: 15px;
            margin-left: 20px;
            background-color: white;
            border-radius: 1px solid rgba(0, 0, 0, 0.125);
        }

        .btn-save:hover {
            width: 85%;
            position: relative;
            border-radius: 5px;
            padding: 5px 10px 5px 10px;
            margin-top: 15px;
            margin-bottom: 15px;
            margin-left: 20px;
            background-color: #ff6600;
            color: #f1f1f1;
            border-radius: 1px solid rgba(0, 0, 0, 0.125);
            

        }

        /* .btn-like
        {
            margin-top: 2em;
            padding: 5px 10em 5px 10em;
            background-color: rgb(255, 255, 255);
            border-radius: 10px;
            text-align: center;
            margin-left: 5em;
        } */

        .btn-like {
            width: 85%;
            position: relative;
            border-radius: 5px;
            padding: 5px 10px 5px 10px;
            margin-top: 15px;
            margin-bottom: 15px;
            margin-left: 20px;
            background-color: white;
            border-radius: 1px solid rgba(0, 0, 0, 0.125);
           
           
        }

        .btn-like:hover {
            width: 85%;
            position: relative;
            border-radius: 5px;
            padding: 5px 10px 5px 10px;
            margin-top: 15px;
            margin-bottom: 15px;
            margin-left: 20px;
            background-color: #ff6600;
            color: #f1f1f1;
            border-radius: 1px solid rgba(0, 0, 0, 0.125);
            

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
		            <a class="navbar-brand" href="${pageContext.request.contextPath}/">KITCHEN</a>
		        </div>
		        
			    <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#menu"> 
					<span class="navbar-toggler-icon"></span>
				</button>
	        
            <div class="collapse navbar-collapse" id="menu">
				<ul class="navbar-nav mx-auto">
					<li class="nav-item">
					  <a class="nav-link" aria-current="page" href="${pageContext.request.contextPath}/">Trang Chủ</a>
					</li>
					
					<li class="nav-item dropdown">
					  <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">
						Danh Mục
					  </a>
					  <ul class="dropdown-menu" >
						<li><a class="dropdown-item" href="${pageContext.request.contextPath}/mainfood.htm">Danh Mục Món Ăn</a></li>
					<!--  	<li><a class="dropdown-item" href="#">Gợi Ý Hôm Nay</a></li> -->
						<li><a class="dropdown-item" href="${pageContext.request.contextPath}/findmeal.htm">Tìm Kiếm Món Ăn</a></li>
					  	<li><a class="dropdown-item" href="${pageContext.request.contextPath}/famousfood.htm">Món Ăn Phổ Biến</a></li> 
					<!--	<li><a class="dropdown-item" href="#">Danh Sách Yêu Thích</a></li> -->
					<!--	<li><a class="dropdown-item" href="#">Tạo Món Ăn</a></li> -->
					  </ul>
					</li>
					
					<li class="nav-item">
					  <a class="nav-link" href="#">Tin Tức</a>
					</li>
			  	</ul>
			  	
				
			
			
				<div>
	                <button class="login-btn">
	                <a href="<c:url value = '/users/Login.htm' />">Đăng Nhập</a>
	                	<!--  <a aria-curent="location" href="<c:url value = '/users/Account.htm' />"><i class="fa-solid fa-user"></i> ${sessionScope.nameuser}</a> -->
	                </button>
	                
	            </div>
	    	</div>
            
        </div>
        </nav>
        
      </header>

    <main>
        
    <div class="container py-5">
        <div class="row">
            
                <div class="col-md-9">
                    <div class="card">
                        <img class="meal-detail card-img" src="${imgUrl}">
                    </div>

                    <div class="py-5">
                        <div class="card-title">
                            <p>
                                ${tenMon}
                            </p>
                        </div>
                    </div>

                    <div class="card-detail">
                        <h2 class="center">Cách Làm ${tenMon}</h2>
                      
                        <h3>Nguyên Liệu</h3>
                         <c:forEach items="${NguyenLieu}" var="NGUYENLIEU">
					<h4>- ${NGUYENLIEU.soLuong} ${NGUYENLIEU.tenDonVi} ${NGUYENLIEU.tenNguyenLieu}</h4>
				</c:forEach>
                        
                      
                        <h3>Cách Làm</h3>
                        <c:forEach items="${BuocLam}" var="CT_BUOCLAM">
					 <h4>${CT_BUOCLAM.tenBuoc}: ${CT_BUOCLAM.moTa}</h4>                         
				</c:forEach>
                       
                    </div>
                </div>

                <div class="col-md-3">
                <form action="saveandlike.htm" method="post">
                    <div class="card">
                   
                      <input type="hidden" name="idmonan" value="${maMon}">
                        <div>
                            <button class="btn-save" name="action" value="luu" type="submit">Lưu</button>
                        </div>
                    
                        <div>
                            <button class="btn-like" type="submit" name="action" value="yeuThich">Thích</button>
                            
                        </div>
                    </div>
                    </form>
                </div>

            
           
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
                
                <li class="menu__item"><a class="menu__link" href="#">Tin Tức</a></li>
              </ul>
              <p class="text-center">&copy;All Rights Reserved</p>
              <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
                <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
        </div>
    </footer>
        
        
   <script>
function saveAndDisplayMessage(action, idmonan) {
    $.ajax({
        type: 'POST',
        url: '/users/saveandlike',
        data: { action: action, idmonan: idmonan },
        success: function (response) {
            // Xử lý kết quả trả về
            showMessage(response.message);
        },
        error: function (error) {
            console.error('Error:', error);
        }
    });
}

function showMessage(message) {
    // Hiển thị thông báo nổi trên giao diện
    alert(message);
}
</script>

</body>
</html>