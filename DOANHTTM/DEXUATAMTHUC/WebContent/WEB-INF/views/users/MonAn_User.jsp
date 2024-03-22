<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"> -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="shortcut icon" type="image/x-icon"
	href="https://cdn-icons-png.flaticon.com/512/561/561611.png">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script> -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap">

<title>Cooky.com Header</title>
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

.meal-image {
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
        } */

/* .col-md-12
        {
            margin-right: 50em;
        } */
.col-md-12 h1 {
	text-decoration: underline;
	margin-left: 0.5em;
	margin-top: 1em;
	margin-bottom: 1em;
}

.Name-meal {
	text-align: center;
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
	margin-bottom: 2.5em;
	position: relative;
	display: flex;
	flex-direction: column;
	min-width: 0;
	max-width: 24em;
	word-wrap: break-word;
	background-color: #fff;
	background-clip: border-box;
	border: 1px solid rgba(0, 0, 0, 0.125);
	border-radius: 10px;
	margin-top: 2em;
	word-wrap: break-word;
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
}

div .card:hover {
	border: 1px solid #ff6600;
	cursor: pointer;
}

.btn-view {
	padding: 5px 30px 5px 30px;
	/* margin-bottom: 1em; */
	/* padding: 5px 30px 5px 30px; */
	background-color: rgb(255, 255, 255);
	border-radius: 10px;
	border: 1px solid #333;
	text-align: center;
	/* margin-left: 8em; */
	margin-right: 2em;
	/* width: 40%; */
	float: left;
	font-size: 13px;
	font-weight: bold;
	display: block;
	justify-content: right;
}

.btn-delete {
	padding: 5px 30px 5px 30px;
	/* margin-bottom: 1em; */
	/* padding: 5px 30px 5px 30px; */
	background-color: rgb(255, 255, 255);
	border-radius: 10px;
	border: 1px solid #333;
	text-align: center;
	/* margin-left: 8em; */
	margin-right: 2em;
	width: 40%;
	float: right;
	font-size: 15px;
	font-weight: bold;
	display: block;
	justify-content: right;
}

.btn-view:hover, .btn-choose:hover {
	background-color: #ff6600;
	color: #fff;
	border: 1px solid #ff6600;
}

.btn, .btn-choose {
	text-align: center;
	justify-content: center;
}

.btn-choose {
	padding: 5px 2px 5px 2px;
	align-items: center;
}

select {
	padding: 5px 0 5px 0;
	margin-bottom: 2em;
	margin-top: 0.5em;
}

option {
	padding: 10px 0 10px 0;
}

.card-menu {
	margin-bottom: 2.5em;
	margin-left: 2.5em;
	margin-top: 2em;
	position: relative;
	display: flex;
	flex-direction: column;
	min-width: 0;
	max-width: 22em;
	word-wrap: break-word;
	background-color: #fff;
	background-clip: border-box;
	border: 1px solid rgba(0, 0, 0, 0.125);
	border-radius: 10px;
	height: 30em;
}
/* p{
            
           margin-left: 1em;
            font-size: 2.5em;
            padding: 10px 0 10px 0;
            border-bottom: 1px solid black;
            border-left: 1px solid black;
        } */
.col-md-12 h1 {
	text-decoration: none;
}

.container_swap {
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
	margin-right: 1.3em;
}

.div_center {
	width: 30%;
	float: center;
	text-align: center;
	/* padding: 5px 30px 5px 30px; */
	border-radius: 10px;
	margin-bottom: 1em;
}

.div_right {
	width: 30%;
	float: right;
	text-align: center;
	/* padding: 5px 30px 5px 30px; */
	border-radius: 10px;
	/* margin-right: 1.5em; */
	/* background-color: red; */
	margin-right: 0px;
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

#addCategoryForm {
	display: none;
	position: fixed;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background-color: rgba(242, 209, 176, 1);
	/* Sử dụng rgba để đặt độ trong suốt (0.9 là mức độ trong suốt) */
	padding: 20px;
	border: 1px solid #070707;
	z-index: 999;
	width: 400px; /* Đặt chiều rộng của form */
}

.btn-add {
	padding: 5px 0 5px 0;
	width: 5em;
	background-color: blue;
	color: white;
}

.btn-add, .btn-close {
	padding: 8px 2px 8px 2px;
	width: 7em;
	background-color: rgb(238, 122, 39);
	color: white;
	
	
}
.form-group
        {
            margin-top: 2em;
        }
</style>
</head>
<body>
	<header>
		<div class="container">
			<div class="logo">KITCHEN</div>
			<nav>
				<ul>
					<li><a href="Home.html">Trang Chủ</a></li>

					<li class="dropdown">
						<button onclick="myFunction()" class="dropbtn">
							Danh Mục <i class="fa fa-caret-down"></i>

							<div id="myDropdown" class="dropdown-content">
								<a href="#">Danh Mục Món Ăn</a> <a href="GoiYMonAn.html">Gợi
									Ý Hôm Nay</a> <a href="Home.html">Tìm Kiếm Món Ăn</a> <a
									href="Home.html">Tìm Kiếm Món Ăn Theo Nguyên Liệu</a> <a
									href="#">Món Ăn Phổ Biến</a> <a href="DSYeuThich.html">Danh
									Sách Yêu Thích</a> <a href="TaoMon.html">Tạo Món Ăn</a>
							</div>
						</button>
					</li>

					<script>
						/* When the user clicks on the button, 
						toggle between hiding and showing the dropdown content */
						function myFunction() {
							document.getElementById("myDropdown").classList
									.toggle("show");
						}

						// Close the dropdown if the user clicks outside of it
						window.onclick = function(event) {
							if (!event.target.matches('.dropbtn')) {
								var dropdowns = document
										.getElementsByClassName("dropdown-content");
								var i;
								for (i = 0; i < dropdowns.length; i++) {
									var openDropdown = dropdowns[i];
									if (openDropdown.classList.contains('show')) {
										openDropdown.classList.remove('show');
									}
								}
							}
						}
					</script>

					<li class="dropdown">
						<button onclick="myFunction2()" class="dropbtn">
							Quản Lý <i class="fa fa-caret-down"></i>

							<div id="myDropdown2" class="dropdown-content">
								<!--dropdown danh mục -->
								<a href="#">Quản Lý Người Dùng</a> <a href="#">Quản Lý Bài
									Đăng</a> <a href="#">Quản Lý Món Ăn</a> <a href="#">Quản Lý
									Danh Mục</a>


							</div>
						</button>
					</li>

					<script>
						/* When the user clicks on the button, 
						toggle between hiding and showing the dropdown content */
						function myFunction2() {
							document.getElementById("myDropdown2").classList
									.toggle("show");
						}

						// Close the dropdown if the user clicks outside of it
						window.onclick = function(event) {
							if (!event.target.matches('.dropbtn')) {
								var dropdowns = document
										.getElementsByClassName("dropdown-content");
								var i;
								for (i = 0; i < dropdowns.length; i++) {
									var openDropdown = dropdowns[i];
									if (openDropdown.classList.contains('show')) {
										openDropdown.classList.remove('show');
									}
								}
							}
						}
					</script>
					<li><a href="#">Tin Tức</a></li>
				</ul>
			</nav>
			<button class="login-btn">
				<a href="DangNhap.html"><i class="fa-solid fa-user"></i> Tài
					Khoản</a>
			</button>
		</div>
	</header>

	<main>


		<div class="row">





			<div class="col-md-12">
				<h1 class="text-center">QUẢN LÝ MÓN ĂN</h1>

				<div class="col-md-3">
					<div class="card-menu">
						<h3 style="text-align: center;">Danh mục món</h3>
						<label for="cars">Chọn Món:</label> <select id="cars" name="cars">
							<option value="volvo">Món Chính</option>
							<option value="saab">Món Ăn Sáng</option>
							<option value="mercedes">Món Ăn Nhẹ</option>
							<option value="audi">Món Ăn Tối</option>
						</select>
						<button class="btn-choose" type="submit">Chọn</button>
					</div>
				</div>

				<div class="col-md-9">
					<div class="row">
						<div class="col-md-12">

							<c:forEach items="${List_Saved}" var="MEAL">
								<div class="col-md-4">
									<div class="image-container">
										<div class="card">
											<img class="meal-image card-img" src="${MEAL.hinhAnh}"
												alt="Banner Image">
											<div class="Name-meal">
												<h5>${MEAL.tenMon}</h5>

												<div class="btn"></div>
												<div class="container_swap">
													<div class="div_left">
														<a
															href="${pageContext.request.contextPath}/users/Infor_Meal${MEAL.maMon}.htm"><button
																class="btn-view" style="background: #66f342;"
																type="button">Xem</button></a>
													</div>
													<div class="div-center">
														<a
															href="${pageContext.request.contextPath}/users/EditMeal${MEAL.maMon}.htm"><button
																class="btn-view" type="button">Sửa</button></a>
													</div>
													<div class="div_right">
														<button onclick="showAddCategoryForm()" class="btn-view"
															style="background: red;" type="button">Xóa</button>
													</div>
												</div>
												<div id="addCategoryForm">
													<h4>Thông Báo</h4>
													<form>
														<!-- Thêm các trường và nút submit cho form của bạn -->
														<div class="form-group">
															<label for="categoryName">Bạn chắc chắn muốn xoá món ăn này?</label> 
														</div>

														<br>
														<a
															href="${pageContext.request.contextPath}/admin/DeleteMeal${MEAL.maMon}.htm"><button class="btn-add" type="button">Xoá</button></a>
														<button class="btn-close" type="button"
															onclick="closeAddCategoryForm()">Huỷ</button>
													</form>
												</div>

											</div>
										</div>
									</div>
								</div>
							</c:forEach>

							

							




							
							

							


						</div>

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
				<li class="menu__item"><a class="menu__link" href="#">Nấu
						Ăn</a></li>
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
        function showAddCategoryForm() {
            document.getElementById('addCategoryForm').style.display = 'block';
        }
    
        function closeAddCategoryForm() {
            document.getElementById('addCategoryForm').style.display = 'none';
        }
    </script>




</body>
</html>