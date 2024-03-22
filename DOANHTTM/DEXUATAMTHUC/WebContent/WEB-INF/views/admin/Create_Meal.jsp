<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>



<!DOCTYPE >
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"> -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<link rel="shortcut icon" type="image/x-icon"
	href="https://cdn-icons-png.flaticon.com/512/561/561611.png">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script> -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
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

.search-input {
	border: none;
	padding: 8px;
	border-radius: 10px;
}

.search-icon {
	margin-right: 10px;
	font-size: 24px;
}

.login-btn {
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
	object-fit: cover;
	width: 1920px;
	height: 500px;
	display: block;
	/* margin: 20px auto; Điều chỉnh khoảng cách dưới header  */
	max-width: 100%;
}

.meal-image {
	width: 30em;
	height: 20em;
	display: flex;
	margin-bottom: 10px;
}

.image-container {
	margin-top: 50px; /* Khoảng cách 20px xung quanh container */
	margin-left: 2.3em;
}
/* .col-md-12
        {
            margin-right: 50em;
        } */
.card-Name-meal {
	position: relative;
	display: flex;
	flex-direction: column;
	/* min-width: 0; */
	/* word-wrap: break-word; */
	background-color: #fff;
	background-clip: border-box;
	border: 1px solid rgba(0, 0, 0, 0.125);
	border-radius: 10px;
	width: 60em;
	height: auto;
	padding: 30px;
	margin: auto;
}

.Name-meal {
	width: 90%;
	height: 3em;
	margin-left: 2.5em;
	margin-top: 1em;
	background: #d3d0d0;
	border: none;
	font-size: 18px;
}

.Descri-meal {
	width: 90%;
	height: 3em;
	margin-left: 2.5em;
	margin-top: 1em;
	background: #d3d0d0;
	border: none;
	font-size: 18px;
}

.Name-meal, .Descri-meal {
	text-align: center;
	font-weight: 3px;
	font-family: 'Montserrat', sans-serif;
	/* font-size: 5em; */
}

.card-ingredient-meal {
	position: relative;
	display: flex;
	flex-direction: column;
	/* min-width: 0; */
	/* word-wrap: break-word; */
	background-color: #fff;
	background-clip: border-box;
	border: 1px solid rgba(0, 0, 0, 0.125);
	border-radius: 10px;
	width: 60em;
	height: auto;
	padding: 30px;
	margin: auto;
}

.ingredient-meal {
	width: 60%;
	height: 3em;
	margin-left: 2em;
	margin-top: 1em;
	background: #d3d0d0;
	border: none;
	font-size: 18px;
	text-align: center;
	font-weight: 3px;
	font-family: 'Montserrat', sans-serif;
}

.total-meal {
	width: 20%;
	height: 3em;
	margin-right: 10px;
	margin-left: 20px;
	margin-top: 1.2em;
	background: #d3d0d0;
	border: none;
	font-size: 18px;
	text-align: center;
	font-weight: 3px;
	font-family: 'Montserrat', sans-serif;
}

.card-step-meal {
	position: relative;
	display: flex;
	flex-direction: column;
	/* min-width: 0; */
	/* word-wrap: break-word; */
	background-color: #fff;
	background-clip: border-box;
	border: 1px solid rgba(0, 0, 0, 0.125);
	border-radius: 10px;
	width: 60em;
	height: auto;
	padding: 30px;
	margin: auto;
}

.step-meal {
	width: 84%;
	height: 3em;
	margin-left: 2.5em;
	margin-top: 1em;
	background: #d3d0d0;
	border: none;
	font-size: 18px;
	text-align: center;
	font-weight: 3px;
	font-family: 'Montserrat', sans-serif;
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
	font-family: 'Montserrat', sans-serif;
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
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: #323232;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	border-bottom: 2px solid #323232;
}

.dropdown a:hover {
	background-color: #ff6600;
}

.show {
	display: block;
}

.social-icon, .menu {
	position: relative;
	display: flex;
	justify-content: center;
	align-items: center;
	margin: 10px 0;
	flex-wrap: wrap;
}

.social-icon__item, .menu__item {
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

.body-main {
	background-color: rgba(243, 243, 243, 0.947);
}

h3 {
	font-size: 24px;
	font-weight: bold;
	font-family: 'Montserrat', sans-serif;
}

form.example input[type=text] {
	border: solid 1px #323232;
	background: #f1f1f1;
	padding-bottom: 0.1em;
	border-radius: 2px;
}

form.example input[name=tenmon] {
	font-weight: normal;
}

form.example input[name=mota] {
	font-weight: normal;
}

form.example input[name=nguyenlieu] {
	font-weight: normal;
}

.navbar-brand {
	color: #fff;
	font-size: 32px
}

.navbar-brand:hover {
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

#menu .nav-link {
	padding: 5px 20px
}

#menu .nav-link:hover {
	color: black
}

#menu .dropdown-item {
	text-align: center;
	position: relative;
	padding: 10px;
}

#menu .dropdown-item:after {
	content: "";
	position: absolute;
	width: 40%;
	height: 2px;
}

.btn-plus {
	position: absolute;
	background-color: #fff;
	border: 1px solid #323232;
	padding: 8px 20px;
	border-radius: 4px;
	cursor: pointer;
	text-align: center;
	margin-left: 23.5em /* margin-top: 1.5em; */ 
		/* margin-left: 21.75em; */
}

.btn-plus:hover {
	background-color: #ff6600;
	color: #fff;
	border: 1px solid #ff6600;
}

.btn-plus1 {
	position: absolute;
	background-color: #fff;
	border: 1px solid #323232;
	padding: 8px 20px;
	border-radius: 4px;
	cursor: pointer;
	text-align: center;
	margin-left: 23.5em /* margin-top: 1.5em; */ 
		/* margin-left: 21.75em; */
}

.btn-plus1:hover {
	background-color: #ff6600;
	color: #fff;
	border: 1px solid #ff6600;
}

.btn-plus2 {
	position: absolute;
	background-color: #fff;
	border: 1px solid #323232;
	padding: 8px 20px;
	border-radius: 4px;
	cursor: pointer;
	text-align: center;
	margin-left: 42.25em /* margin-top: 1.5em; */ 
		/* margin-left: 21.75em; */
}

.btn-plus2:hover {
	background-color: #ff6600;
	color: #fff;
	border: 1px solid #ff6600;
}

.btn-plus3 {
	position: absolute;
	background-color: #fff;
	border: 1px solid #323232;
	padding: 8px 20px;
	border-radius: 4px;
	cursor: pointer;
	text-align: center;
	margin-left: 24em /* margin-top: 1.5em; */ /* margin-left: 21.75em; */
}

.btn-plus3:hover {
	background-color: #ff6600;
	color: #fff;
	border: 1px solid #ff6600;
}

span {
	background-color: #ff6600;
	padding: 18px;
	padding-bottom: 1.03em;
	cursor: pointer;
	font-weight: bold;
}

select {
	width: 30%;
	padding: 15px 90px;
	margin-top: 1.2em;
	/* margin-left: 20.5em; */
	margin-left: 150px;
	overflow-y: auto;
	max-height: 50px;
}

.btn-load {
	position: absolute;
	background-color: #fff;
	border: 1px solid #323232;
	padding: 8px 20px;
	border-radius: 4px;
	cursor: pointer;
	text-align: center;
	margin-left: 36em;

	/* margin-left: 21.75em; */
}

.btn-load:hover {
	background-color: #ff6600;
	color: #fff;
	border: 1px solid #ff6600;
}

#imagePreview {
	margin: auto;
	max-width: 100%;
}

.time-cook {
	width: 30%;
	height: 2em;
	margin-left: 91px;
	margin-top: 1em;
	background: #d3d0d0;
	border: none;
	font-size: 18px;
	text-align: center;
}

.level-cook {
	width: 50%;
	height: 2em;
	margin-left: 18em;
	margin-top: 1em;
	background: #d3d0d0;
	border: none;
	font-size: 18px;
	text-align: center;
}

.btn-remove {
	padding: 8px 10px;
	background-color: #ff6600;
	border: 1px solid #ff6600;
	margin-left: 10px;
}

.unit .myunit1 {
	margin-left: 30em
}

.unit .myunit2 {
	margin-left: 19.25em
}

.unit .myunit3 {
	margin-left: 10em
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
					  <a class="nav-link" aria-current="page" href="<c:url value = '/admin/MainHome.htm' />">Trang Chủ</a>
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
		<div class="container py-5">
			<div class="row">
				<h3 class="text-center">
					<b>Bạn đã đăng hình món mình nấu ở đây chưa?</b>
				</h3>
				<h4 class="text-center">Chia sẻ với mọi người thành phẩm nấu
					nướng của bạn nào!</h4>
				<form:form action="checkmeal.htm" method="post"
					modelAttribute="ListNguyenLieu">
					<div class="body-main py-5">
						<div class="card-Name-meal">
							<h3 class="text-center">Món Ăn</h3>
							<div>

								<input class="Name-meal" type="text" name="tenmon"
									placeholder="Nhập tên món ăn" id="" required> <input
									class="Descri-meal" type="text" name="mota"
									placeholder="Mô tả món ăn" id="" required> 
									<input style="margin-top: 2em; margin-left: 2.5em"
									class="" type="text" id="fileInput"> 
								<p id="errorMessage"></p>
								<div class="px-5">
									<p>
										ĐỘ KHÓ <select id="myLevel" 
											class="unit myunit1" name="dokho">

											<option>Dễ</option>
											<option>Trung Bình</option>
											<option>Khó</option>

											<!-- Thêm option -->
										</select>
									</p>

									<p>
										THỜI GIAN NẤU <input class="time-cook" type="text" name="hour"
											placeholder="Giờ" id="" required> <input
											class="time-cook" type="text" name="minute"
											placeholder="Phút" id="" required>
									</p>
									<p>
										LOẠI MÓN <select id="myCategory" onchange="myFunction()"
											class="unit myunit2" name="loaimon">
											<c:forEach items="${loaiMon}" var="LOAIMON">
												<option value="${LOAIMON.maLoai}">${LOAIMON.tenLoai}</option>
											</c:forEach>

											<!-- Thêm option -->
										</select>
									</p>



								</div>

							</div>
						</div>

						<!-- <div class="body-main py-5" style="max-height: 400px; overflow-y: auto;"> -->
						<div class="py-5">
							<div class="card-ingredient-meal">
								<h3 class="text-center">Nguyên Liệu</h3>
								<div class="row">
									<!-- <input class="ingredient-meal" type="text" name="nguyenlieu1" placeholder="Nguyên Liệu 1" id=""> -->
									<div>
										<div id="ingredientForm">

											<c:forEach var="item"
												items="${ListNguyenLieu.CT_NguyenLieuList}"
												varStatus="status">
												<p>
													<select
														name="CT_NguyenLieuList[${status.index}].idNguyenLieu"
														class="unit myunit3">
														<c:forEach var="nguyenlieu" items="${NguyenLieu}"
															varStatus="statusNguyenLieu">
															<option value="${nguyenlieu.maNguyenLieu}">${nguyenlieu.tenNguyenLieu}</option>
														</c:forEach>
													</select>
													<form:input class="total-meal" placeholder="Số Lượng"
														path="CT_NguyenLieuList[${status.index}].soLuong" />
													<button class="btn-remove" onclick="removeInput()"
														type="button">Xóa</button>
													<br />
												</p>
											</c:forEach>

										</div>
										<div class="py-5">

											<button onclick="addIngredient()" type="button"
												class="btn-plus">
												<i class="fa-solid fa-plus"></i> Thêm
											</button>

										</div>
									</div>



								</div>





							</div>
						</div>
						<!-- </div> -->

						<!-- <div class="body-main py-5" style="max-height: 400px; overflow-y: auto;"> -->
						<div class="py-5">
							<div class="card-step-meal">
								<h3 class="text-center">Cách Làm</h3>
								<div>

									<div id="ingredientForm1">
										<c:forEach var="item" items="${ListNguyenLieu.CT_BuocLam}"
											varStatus="status">
											
											<form:input class="step-meal" path="CT_BuocLam[${status.index}].moTa" />
											<br />
										</c:forEach>
										
									</div>
									<div class="py-5">
										<button onclick="addNewInput3()" type="button"
											class="btn-plus3">
											<i class="fa-solid fa-plus"></i> Thêm
										</button>
									</div>
								</div>
							</div>
						</div>
						<!-- </div> -->
					</div>

					<div class="container">
						<button type="submit" class="btn-load"
							href="<c:url value = '/users/Success.htm' />">Đăng bài</button>
					</div>
				</form:form>
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
				<li class="social-icon__item"><a class="social-icon__link"
					href="#"> <ion-icon name="logo-facebook"></ion-icon>
				</a></li>
				<li class="social-icon__item"><a class="social-icon__link"
					href="#"> <ion-icon name="logo-twitter"></ion-icon>
				</a></li>
				<li class="social-icon__item"><a class="social-icon__link"
					href="#"> <ion-icon name="logo-linkedin"></ion-icon>
				</a></li>
				<li class="social-icon__item"><a class="social-icon__link"
					href="#"> <ion-icon name="logo-instagram"></ion-icon>
				</a></li>
			</ul>
			<ul class="menu">
				<li class="menu__item"><a class="menu__link" href="#">Trang
						chủ</a></li>
				<li class="menu__item"><a class="menu__link" href="#">Danh
						Mục</a></li>
				<!-- <li class="menu__item"><a class="menu__link" href="#">Nấu Ăn</a></li> -->
				<li class="menu__item"><a class="menu__link" href="#">Tin
						Tức</a></li>
			</ul>
			<p class="text-center">&copy;All Rights Reserved</p>
			<script type="module"
				src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
			<script nomodule
				src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
		</div>
	</footer>




	<script>
	var currentIndex = 0;
	
	function addIngredient() {
       
        var newRow = '<p>';
         newRow += '<select name="CT_NguyenLieuList[' + currentIndex + '].idNguyenLieu"> class="unit myunit3"';
        
        // Thêm các option vào select
        <c:forEach var="nguyenlieu" items="${NguyenLieu}" varStatus="statusNguyenLieu">
            newRow += '<option value="${nguyenlieu.maNguyenLieu}">${nguyenlieu.tenNguyenLieu}</option>';
        </c:forEach>
        
        newRow += '</select>';
        newRow += '<input type="text" class="total-meal" placeholder="Số Lượng"  name="CT_NguyenLieuList[' + currentIndex + '].soLuong" />';
        newRow += '<button class="btn-remove" onclick="removeInput()" type="button">Xóa</button>';
        newRow += '<br />';
         newRow += '</p>';
        $("#ingredientForm").append(newRow);
        currentIndex += 1;
    }
	function removeInput() {
	    $(this).closest('p').remove();
	}


	</script>
	<script>
	var currentIndex1 = 0;
			function addNewInput3() {
		        var x = 1 + currentIndex1;
		        var newRow = '<h5> Bước ' + x;
		        newRow += '<input type="text" class="step-meal"  name="CT_BuocLam[' + currentIndex1 + '].moTa" />';
		        newRow += '<br />';
		        $("#ingredientForm1").append(newRow);
		        currentIndex1 += 1;
		    }
	</script>


	<script>
		function myFunction() {
			var x = document.getElementById("mySelect");
			var i = x.selectedIndex;
			document.getElementById("demo").innerHTML = x.options[i].text;
		}
	</script>



	<script>
		const fileInput = document.getElementById("fileInput");
		const imagePreview = document.getElementById("imagePreview");
		const errorMessage = document.getElementById("errorMessage");
		const maxFileSize = 2 * 1024 * 1024; // Giới hạn kích thước tối đa là 2MB

		fileInput
				.addEventListener(
						"change",
						function() {
							const file = fileInput.files[0];
							if (file) {
								if (file.size <= maxFileSize) {
									const reader = new FileReader();

									reader.onload = function(e) {
										imagePreview.src = e.target.result;
										errorMessage.innerText = ""; // Xóa thông báo lỗi nếu có
									};

									reader.readAsDataURL(file);
								} else {
									// Hiển thị thông báo lỗi nếu kích thước vượt quá giới hạn
									errorMessage.innerText = "Kích thước ảnh vượt quá giới hạn cho phép.";
									fileInput.value = ""; // Xóa tệp đã chọn
								}
							}
						});
	</script>


</body>
</html>