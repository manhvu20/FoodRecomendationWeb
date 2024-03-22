package poly.controller;

import java.sql.SQLException;


import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;

import poly.DAO.*;
import poly.bean.NGUYENLIEU;
import poly.bean.USER;
@RequestMapping("/users")
@Controller
public class Login_Controller {
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
    public String DangKy() {
        return "users/Register"; 
    }
	
	@RequestMapping(value = "/change", method = RequestMethod.GET)
	public String QuenMatKhau() {
		return "users/ChangePass";
	}
	
	 @RequestMapping(value = "/Login", method = RequestMethod.GET)
	    public String Login() {
	        return "users/Login";
	    }
	 @RequestMapping(value = "/acountuser/", method = RequestMethod.GET)
	    public String Acount() {
	        return "users/Acount_User";
	    }
	 @RequestMapping("/signup")
		public String register(HttpServletRequest request, Model model) throws SQLException
		{
		
		 USER_DAO user_DAO = new USER_DAO();
			 // Lấy dữ liệu từ người dùng nhập về
			String username = request.getParameter("username");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String confirmPassword = request.getParameter("confirmPassword");	
			String message = "Mật khẩu không khớp!";
			if(!password.equals(confirmPassword))
			{
				 
				model.addAttribute("error", true);
				request.setAttribute("message", message);
				return "users/Register";
			}
			USER user = new USER(username,email,password);
			user_DAO.ADD_USERS(user);
			return "users/Login";
			
		}
	 
	 @SuppressWarnings("unlikely-arg-type")
		@RequestMapping("/change-pass")
			public String change(HttpServletRequest request, Model model,HttpSession session) throws SQLException
			{
			
			 USER_DAO user_DAO = new USER_DAO();
				 // Lấy dữ liệu từ người dùng nhập về
				
				String password = request.getParameter("password");
				String newpassword = request.getParameter("newpassword");
				String renewPassword = request.getParameter("renewPassword");	
				String message = "Mật khẩu mới không khớp!";
				Integer maUser = (Integer) session.getAttribute("maUser");
				String pass =  (String) session.getAttribute("password");
			    if (password.equals(pass)) {
			        if (newpassword.equals(renewPassword)) {
			            user_DAO.UPDATE_USERS(newpassword,maUser);
			            return "users/Login";
			        } else {
			            model.addAttribute("error", true);
			            request.setAttribute("message", message);
			            return "users/ChangePass";
			        }
			    } else {
			        // Mật khẩu hiện tại không đúng, xử lý lỗi hoặc hiển thị thông báo cho người dùng
			        
			        model.addAttribute("error", true);
			        request.setAttribute("message", "Mật khẩu hiện tại không đúng!");
			        return "users/ChangePass";
			    }
				
			}
	 
	@RequestMapping("/checkLogin")
	public String checkLogin(HttpServletRequest request,Model model) throws SQLException 
	{
		USER_DAO user_DAO = new USER_DAO();
		 HttpSession session = request.getSession();
		String message = "Sai thông tin đăng nhập!";
		String username= request.getParameter("email");
		String password = request.getParameter("password");
//		ListKH  list = new ListKH();
		boolean found = false;
		
		 if(username.equals("admin11@gmail.com") && password.equals("123"))
			{	
			
//			 session.setAttribute("maUser", "KitChen");
         	session.setAttribute("email", "admin11@gmail.com");         	
         	session.setAttribute("nameuser", "admin");
         	session.setAttribute("password", "123");
				return "admin/MainHome";
			}
		 else {
			 
			 if(!user_DAO.LISTUSER().isEmpty())
				{
					 for (USER user : user_DAO.LISTUSER()) 
					 {
				            
				           
				            	if (user.getEmail().equals(username) && user.getPassword().equals(password)) 
					            {
					            	found = true;					            	
					            			session.setAttribute("User", user);
					            			
					            	session.setAttribute("maUser", user.getMaUser());
					            	session.setAttribute("email", user.getEmail());
					            	session.setAttribute("nameuser", user.getTenUser());				            	
					            	session.setAttribute("password", user.getPassword());
					            	request.setAttribute("tenND", user.getTenUser());
					            	MEAL_DAO meal_dao = new MEAL_DAO();
					            	
					            	

					                // Đưa danh sách nguyên liệu và chuỗi JSON vào model
//					            	ArrayList<NGUYENLIEU> nguyenLieuList = meal_dao.GET_INGREDIENT();
//					                
					              
					            	model.addAttribute("nguyenlieuList",meal_dao.GET_INGREDIENT());
					            	
					        	    model.addAttribute("famousfood",meal_dao.GET_FAMOUSFOOD());
					            	return "users/Main";
					                
					                
					            
							}
				        }
				}	        		       	    	    	
	    
	}
		 request.setAttribute("message", message);
	    	return "users/Login";
	}
}
