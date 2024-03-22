package poly.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import poly.DAO.MEAL_DAO;
import poly.DAO.USER_DAO;
import poly.bean.ListNguyenLieu;
import poly.bean.MEAL;
import poly.bean.NGUYENLIEU_MONAN;
import poly.bean.NguyenLieu_SoLuong;
import poly.bean.USER;

@Controller
public class Admin_Controller {
	int TIMKIEM,LUU = 0;
	  int YEUTHICH,XEM = 1;
	  
	
	@RequestMapping(value = "admin/MainHome", method = RequestMethod.GET)
    public String MainHome() {
        return "admin/MainHome";
    }
	
	@RequestMapping(value = "admin/accountadmin", method = RequestMethod.GET)
    public String Acount() {
        return "admin/Account_Admin";
    }
	
	@RequestMapping(value = "admin/mainfood", method = RequestMethod.GET)
	public String CATOGORY(Model model) throws SQLException {
		MEAL_DAO meal_dao = new MEAL_DAO();
	    model.addAttribute("MainFood", meal_dao.getTypeFood(1));
	    model.addAttribute("DessertFood",meal_dao.getTypeFood(2));
	    model.addAttribute("BreakFast",meal_dao.getTypeFood(3));
	    return "admin/DanhMucMonAn";
	}
	
	@RequestMapping(value = "admin/famousfood", method = RequestMethod.GET)
	public String List_Famous(Model model) throws SQLException {
		MEAL_DAO meal_dao = new MEAL_DAO();
	    model.addAttribute("famousfood",meal_dao.GET_FAMOUSFOOD());
	    
	    return "admin/MonAnPhoBien";
	}
	
	@RequestMapping(value = "admin/suggest", method = RequestMethod.GET)
	public String LIST_SUGGEST(Model model, HttpSession session) throws SQLException {
	    MEAL_DAO mealDao = new MEAL_DAO();
	    
	    // Kiểm tra xem session có tồn tại giá trị "maUser" hay không
	    Integer maUser = (Integer) session.getAttribute("maUser");
//	    model.addAttribute("message", maUser);
	    
	    if (maUser == null) {
	        
	        return "users/Login";
	    }
	    model.addAttribute("Suggest_BreakFast", mealDao.generateMixedList(maUser, 3));
	    model.addAttribute("Suggest_Lunch", mealDao.generateMixedList(maUser, 1));
	    model.addAttribute("Suggest_Dinner", mealDao.generateMixedList(maUser, 4));
	    model.addAttribute("Suggest_Dessert", mealDao.generateMixedList(maUser, 2));
	    return "admin/Suggest";
	}
	
	@RequestMapping(value = "admin/createmeal", method = RequestMethod.GET)
	public String CREATE_MEAL(Model model) throws SQLException {
		MEAL_DAO meal_DAO = new MEAL_DAO();
		model.addAttribute("NguyenLieu",meal_DAO.GET_INGREDIENT());
		model.addAttribute("loaiMon",meal_DAO.GET_TYPEMEAL());
		return "admin/Create_Meal";
	}
	
//	@RequestMapping("admin/checkmeal")
//	public String CHECK_MEAL(HttpServletRequest request, Model model,HttpSession session,@ModelAttribute("ListNguyenLieu") ListNguyenLieu formModel) throws SQLException {
//
//	    MEAL_DAO meal_DAO = new MEAL_DAO();
//	    ArrayList<MEAL> Meal_Find = new ArrayList<MEAL>();
//	    Integer maUser = (Integer) session.getAttribute("maUser");
//	    // Lấy thông tin từ request
//	    String name = request.getParameter("tenmon");
//	    String descri = request.getParameter("mota");
//	    String level = request.getParameter("dokho");
//	    
//	    // Chuyển đổi dữ liệu từ String sang int
//	    int hour = Integer.parseInt(request.getParameter("hour"));
//	    int minute = Integer.parseInt(request.getParameter("minute"));
//
//	    int typeMeal = Integer.parseInt(request.getParameter("loaimon"));
//	   
//
//	    
//
//	    // Gọi hàm CREATE_RECIPE với các tham số đã lấy được
//	   meal_DAO.CREATE_RECIPE(hour, minute, level);
//	   meal_DAO.CREATE_MEAL(name, descri, typeMeal, maUser, meal_DAO.maCongThuc);
//	   for(NguyenLieu_SoLuong nglieumon : formModel.getCT_NguyenLieuList())
//	   {
//		   meal_DAO.CREATE_INGREDIENT(nglieumon.getIdNguyenLieu(),nglieumon.getSoLuong() );
//	   }
//	  for(int i = 0; i < formModel.getCT_BuocLam().size();i++)
//	  {
//		  meal_DAO.CREATE_STEP(i+1,formModel.getCT_BuocLam().get(i).getMoTa());
//	  }	  
//	  
////	  request.setAttribute("imgUrl", meal_DAO.getMealById(meal_DAO.maCongThuc));
//		request.setAttribute("tenMon", name);
//		
//		 model.addAttribute("NguyenLieu",meal_DAO.GET_INGREDIENT_FROM_RECIPE(meal_DAO.maCongThuc));
//		 model.addAttribute("BuocLam",meal_DAO.GET_STEP_FROM_IDRECIPE(meal_DAO.maCongThuc));
////		 int idmon = meal_DAO.GET_IDMEAL(meal_DAO.maCongThuc);
////		 meal_DAO.UPDATE_STATUSMEAL(idmon);
//	    return "admin/Meal_Created";
//	}
	
	@RequestMapping("admin/checksearch")
	public String CHECK_SEARCH(HttpServletRequest request, Model model) throws SQLException {

	    MEAL_DAO meal_DAO = new MEAL_DAO();
	    ArrayList<MEAL> Meal_Find = new ArrayList<MEAL>();
	    String input_search = request.getParameter("search");
	    String[] ingredientArray = input_search.split(",\\s*");
	    List<String> ingredientList = Arrays.asList(ingredientArray);

	    for (MEAL meal : meal_DAO.getAllMeal()) {
	        boolean containsAll = true;

	        for(String nguyenlieu : ingredientList) {
	            boolean containsIngredient = false;
	            for (NGUYENLIEU_MONAN nglieumon : meal_DAO.GET_NGUYENLIEU(meal.getMaMon())) {
	                if (nglieumon.getTenNguyenLieu().equalsIgnoreCase(nguyenlieu.trim())) {
	                    containsIngredient = true;
	                    break;
	                }
	            }

	            if (!containsIngredient) {
	                containsAll = false;
	                break;
	            }
	        }

	        if (containsAll) {
	            Meal_Find.add(meal);
	        }
	    }
	    model.addAttribute("message", meal_DAO.taoMaCongThuc());
	    // Thực hiện các thao tác cần thiết với Meal_Find, ví dụ như gửi về frontend
	    model.addAttribute("foundMeals", Meal_Find);

	    return "admin/List_Find";
	}
	
	@RequestMapping(value = "admin/findmeal", method = RequestMethod.GET)
    public String FIND_MEAL() {
        return "admin/TimKiemMonAn";
    }
	
	
	@RequestMapping("admin/searchmeal")
	public String CHECK_FIND_MEAL(HttpServletRequest request, Model model,HttpSession session) throws SQLException {
		
	    MEAL_DAO meal_DAO = new MEAL_DAO();	
	    String input_search = request.getParameter("search");
	    Integer maUser = (Integer) session.getAttribute("maUser");
	    if(input_search == null || input_search.isEmpty())
	    {
	    	request.setAttribute("message", "Vui lòng nhập từ khoá mà bạn muốn tìm kiếm!");
	    }
	    else {
	    	 ArrayList<MEAL> SORTED_LIST = meal_DAO.filterFoodList(meal_DAO.getAllMeal(),input_search);
	    	 if(SORTED_LIST == null || SORTED_LIST.isEmpty())
	    	 {
	    		 request.setAttribute("message", "Danh sách tìm kiếm rỗng");
	    	 }
	    	 meal_DAO.sortFoodList(SORTED_LIST,input_search);
	 	    request.setAttribute("input_search", input_search);
	 	    model.addAttribute("FindMeal", SORTED_LIST);
	 	   for(MEAL meal : SORTED_LIST)
	 	   {
	 		   meal_DAO.VIEWORFIND(maUser, meal.getMaMon(), TIMKIEM);
	 	   }
		}

	    return "admin/TimKiemMonAn";
	}
	
	@RequestMapping(value = "admin/Infor_Meal{id}", method = RequestMethod.GET)
	public String DETAIL_MEAL(@PathVariable("id") String melaId, ModelMap model, HttpServletRequest request,HttpSession session)
			throws SQLException {
		// xử lý mã sản phẩm và chuẩn bị dữ liệu
		MEAL_DAO mealDao = new MEAL_DAO();
		Integer maUser = (Integer) session.getAttribute("maUser");
		for (MEAL meal : mealDao.getAllMeal()) {
			if (meal.getMaMon() == Integer.parseInt(melaId)) {
				
				request.setAttribute("maMon", meal.getMaMon());
					request.setAttribute("imgUrl", meal.getHinhAnh());
					request.setAttribute("tenMon", meal.getTenMon());
					
					 model.addAttribute("NguyenLieu",mealDao.GET_NGUYENLIEU(meal.getMaMon()));
					 model.addAttribute("BuocLam",mealDao.GET_STEP(meal.getMaMon()));
					 mealDao.VIEWORFIND(maUser, meal.getMaMon(),XEM);
					return "admin/DeTail_Meal";
				}
			} 
		return "admin/DeTail_Meal";
		// trả về view hiển thị chi tiết sản phẩm
	}
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value = "admin/qlndung", method = RequestMethod.GET)
    public String QuanLyND(Model model) throws SQLException {
		USER_DAO user_DAO = new USER_DAO();
		model.addAttribute("ListUser", user_DAO.LISTUSER());
        return "admin/QuanLyNguoiDung";
    }
	
	int userString = 0;
	@RequestMapping(value = "admin/detail_user{userId}", method = RequestMethod.GET)
	public String DETAIL_USER(@PathVariable int userId, Model model, HttpServletRequest request, HttpSession session) throws SQLException {
	    USER_DAO user_DAO = new USER_DAO();
	    MEAL_DAO meal_DAO = new MEAL_DAO();
	    userString = userId;
	    USER userDetails = user_DAO.getUserDetailsById(userId);
	    String name = userDetails.getTenUser();
	    
	    request.setAttribute("name", name);
	    model.addAttribute("list_created",meal_DAO.GET_LIST_CREATED(userId));
	    request.setAttribute("countlike", meal_DAO.COUNT_LIKE_OF_USER(userId));
	    return "admin/DeTail_User";
	}
	
	@RequestMapping(value = "admin/qlmonan", method = RequestMethod.GET)
    public String QuanLyMonAn(Model model) throws SQLException {
		MEAL_DAO meal_DAO = new MEAL_DAO();
		model.addAttribute("ListType", meal_DAO.GET_TYPEMEAL());
        return "admin/QuanLyMonAn";
    }
	@RequestMapping(value = "admin/checktype")
    public String CHECKTYPE(Model model, HttpServletRequest request) throws SQLException {
		int idloai = Integer.parseInt(request.getParameter("typemeal"));
		MEAL_DAO meal_DAO = new MEAL_DAO();
		model.addAttribute("MealToType", meal_DAO.getTypeFood(idloai));
		model.addAttribute("ListType", meal_DAO.GET_TYPEMEAL());
        return "admin/QuanLyMonAn";
    }
	@RequestMapping(value = "admin/DeleteMeal{id}", method = RequestMethod.GET)
	public String DELETE(@PathVariable("id") int melaId, ModelMap model, HttpServletRequest request,HttpSession session)
			throws SQLException {
		MEAL_DAO meal_DAO = new MEAL_DAO();
		meal_DAO.DELETE_MEAL(melaId);	
		return "admin/QuanLyMonAN";
	}
	@RequestMapping(value = "admin/qlDM", method = RequestMethod.GET)
    public String QuanLyDanhMuc(Model model) throws SQLException {
		MEAL_DAO meal_DAO = new MEAL_DAO();
		model.addAttribute("ListNumberofType", meal_DAO.GET_NUBERMEALOFTYPE());
        return "admin/QuanLyDanhMuc";
    }
	@RequestMapping(value = "admin/checkcate")
    public String CHECK_CATEGORY(Model model, HttpServletRequest request) throws SQLException {
		String name =  request.getParameter("categoryName");
		MEAL_DAO meal_DAO = new MEAL_DAO();
		
		if(name.equals(null) || name.isEmpty())
		{
			request.setAttribute("message", "Lỗi khi thêm danh mục trống");
			model.addAttribute("ListNumberofType", meal_DAO.GET_NUBERMEALOFTYPE());
			
	        return "admin/QuanLyDanhMuc";
		}
		meal_DAO.ADD_TYPE(name);
		model.addAttribute("ListNumberofType", meal_DAO.GET_NUBERMEALOFTYPE());
		
        return "admin/QuanLyDanhMuc";
    }
	@RequestMapping(value = "admin/checknametype")
    public String CHECK_NAMETYPE(Model model, HttpServletRequest request) throws SQLException {
		String name =  request.getParameter("nametype");
		int id = Integer.parseInt(request.getParameter("idtype"));
		MEAL_DAO meal_DAO = new MEAL_DAO();
		if(name.equals(null) || name.isEmpty())
		{
			request.setAttribute("message", "Lỗi khi chỉnh sửa loại món");
			model.addAttribute("ListNumberofType", meal_DAO.GET_NUBERMEALOFTYPE());
			
	        return "admin/QuanLyDanhMuc";
		}
		meal_DAO.UPDATE_TYPE(name, id);
		model.addAttribute("ListNumberofType", meal_DAO.GET_NUBERMEALOFTYPE());
        return "admin/QuanLyDanhMuc";
    }
	
//	@RequestMapping(value = "admin/qlBD", method = RequestMethod.GET)
//    public String QuanLyBaiDang(Model model) throws SQLException {
//		MEAL_DAO meal_DAO = new MEAL_DAO();
//		model.addAttribute("ListNotAccept", meal_DAO.GET_STATUS_MEAL());
//        return "admin/QuanLyBaiDang";
//    }
	@RequestMapping(value = "admin/checkbox")
    public String CHECKBOX_CATEGORY(Model model, HttpServletRequest request,@RequestParam List<Integer> selectedIds) throws SQLException {
		
		
        return "admin/QuanLyDanhMuc";
    }

}
