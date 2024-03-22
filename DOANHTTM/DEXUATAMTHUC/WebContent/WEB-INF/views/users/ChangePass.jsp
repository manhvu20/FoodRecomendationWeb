<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ĐỔI MẬT KHẨU</title>
        <link rel="shortcut icon" type="image/x-icon" href="https://cdn-icons-png.flaticon.com/512/561/561611.png">
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.15.4/css/all.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <style>
            body
            {
                background: url('https://bitly.li/Pi3S');
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
            p
            {
                border-bottom: 1px solid #fff;
            }
            label {
                display: block;
                margin-bottom: 8px;
            }

            input {
                width: 100%;
                padding: 8px;
                margin-bottom: 10px;
                box-sizing: border-box;
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

        </style>
    </head>
    <body id="LoginForm">
    	<div class="container">
    		<a class="home-page" href = "${pageContext.request.contextPath}/users/acountuser.htm" >
				<i class="fa fa-solid fa-arrow-left fa-3x"></i>
				<span class="home-title">Back</span>
			</a>
    
	        <div id = "wrapper">
		        <form action="change-pass.htm" method="post" id="form-login">
		            <h1 class="form-heading">ĐỔI MẬT KHẨU</h1>
		        
		            <label for="email">Email:</label>
		            <input type="email" id="email" name="email" required>
		        
		            <label for="password">Mật Khẩu Hiện Tại:</label>
		            <input type="password" id="password" name="password" required>
		            
		            <label for="newpassword">Mật Khẩu Mới:</label>
		            <input type="password" id="newpassword" name="newpassword" required>
		        
		            <label for="renewPassword">Nhập Lại Mật Khẩu:</label>
		           
		            <input type="password" id="renewPassword" name="renewPassword" required>
		             <p style="font-size:1em;"> ${message}</p>
		            <input type="submit"  value="Đổi" class="form-submit">
					
		        </form>
	    	</div>
    	</div>
	

    </body>
    </html>
