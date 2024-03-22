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
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  
    <title>ĐĂNG NHẬP</title>
    <style>
        body
        {
            background-image: url('https://bitly.li/Pi3S');
            background-size: cover;
            /* background-position-y: -200px; */

        }
        #wrapper
        {
            min-height: 90vh;
            display: flex;
            justify-content: center;
            align-items: center;
            
        }
        #form-login
        {
            max-width: 350px;
            background: rgba(220, 123, 33, 0.8);
            flex-grow: 1;
            padding: 30px 30px 40px;
            box-shadow: 0px 0px 17px 2px rgba(228, 226, 226, 0.8);
        }
        .form-heading
        {
            font-size: 25px;
            color: white;
            text-align: center;
            margin-bottom: 30px;
        }
        .form-group
        {
            border-bottom: 1px solid #fff;
            margin-top: 15px;
            margin-bottom: 20px;
            display: flex;
        }
        .form-input::placeholder
        {
            color: #fff;
        }
        .form-input
        {
            background-color: transparent;
            border: 0px;
            outline: 0px;
            color: #fff;
            flex-grow: 1;
        }
        .form-submit
        {
            background: transparent;
            border: 1px solid #fff;
            color: #fff;
            width: 100%;
            text-transform: uppercase;
            padding: 6px 10px;
            transition: 0.25s ease-in-out;
            margin-top: 30px;
        }
        .form-submit:hover
        {
            border: 1px solid rgb(57, 57, 231);
            
        }
        .home-page{
		  width: 120px;
		  height: 50px;
		  display:flex ;
		  gap: 10px;
		  background-color: #FFC312 ;
		  margin-top: 15px;
		  text-decoration: none;
		}
		.home-page:hover{
		  text-decoration: none;
		}
		.home-title{
		  font-size:30px;
		  text-decoration: none;
		}
		.social_icon span{
			 font-size: 60px;
			 margin-left: 10px;
			 color: #FFC312;
		}

		.social_icon span:hover{
			color: white;
			cursor: pointer;
		}
		
		.input-group-prepend span{
width: 40px;
height: 40px;
background-color: #FFC312;
color: black;
border:0 !important;
}

.remember{
color: white;
}

.remember input
{
width: 20px;
height: 20px;
margin-left: 15px;
margin-right: 5px;
}


    </style>
</head>
<body id="LoginForm">
	<div class="container">
		<a class="home-page" href = "<c:url value = '/' />" >
			<i class="fa fa-solid fa-arrow-left fa-3x"></i>
			<span class="home-title">Back</span>
		</a>
		
	    <div id = "wrapper">
	    <form action="checkLogin.htm" method = "post" id="form-login">
	    	
	    	
		        <h1 class="form-heading">ĐĂNG NHẬP</h1>
		        <!--  <div class="form-group">
		            <i class="fa-regular fa-user"></i>
		            <input type="text" class="form-input" placeholder="Tên Đăng Nhập">
		
		        </div> -->
		        <p style="font-size:1.2em;">${message}</p>
		        <div class="input-group form-group">
					<div class="input-group-prepend">
						<span class="input-group-text"><i class="fa-regular fa-user"></i></span>
					</div>
					<input type="email" name = "email" class="form-control" placeholder="username" required >
				</div>
		        
		       <!-- <div class="form-group">
		            <i class="fa-solid fa-lock"></i>
		            <input type="password" class="form-input" placeholder="Mật Khẩu">
		
		        </div> -->
		        
		        <div class="input-group form-group">
					<div class="input-group-prepend">
						<span class="input-group-text"><i class="fa-solid fa-lock"></i></span>
					</div>
					<input type="password" name ="password" class="form-control" placeholder="password" required >
				</div>
				
				<div class="row align-items-center remember" >
					<input type="checkbox" name ="remember-me" >Remember Me
				</div>
				<div class="form-group">
					<input type="submit" value="Login" class="btn float-right btn-warning login_btn">
<!--					<input type="submit" value="Đăng Nhập" class="form-submit">-->
				</div>
				
				<div class="card-footer">
					<div class="d-flex justify-content-center links">
						Don't have an account?
						<a href="${pageContext.request.contextPath}/users/register.htm">Sign Up</a>
					</div>
				<!--  	<div class="d-flex justify-content-center">
						<a href="#">Forgot your password?</a>
					</div> -->
				</div>
		        
		       <!-- <input type="submit" value="Đăng Nhập" class="form-submit"> -->
		
	    </form>
	    </div>
    </div>


</body>
</html>