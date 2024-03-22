package poly.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.Timer;

import org.eclipse.jdt.internal.compiler.IDebugRequestor;
import org.w3c.dom.css.Counter;

import poly.bean.*;
import poly.bean.MEAL;

public class MEAL_DAO {

	private Connection connection;
	int TIMKIEM, LUU = 0;
	int YEUTHICH, XEM = 1;

	public MEAL_DAO()
			// TODO Auto-generated constructor stub
			throws SQLException {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		// Khởi tạo kết nối đến database
		String url = "jdbc:sqlserver://ADMIN-PC:1435;databaseName=DEXUATAMTHUC;encrypt=false;trustServerCertificate=true;";
		String username = "sa";
		String password = "123";
		connection = DriverManager.getConnection(url, username, password);
	}

	public MEAL getMealById(int id) throws SQLException {
		String query = "SELECT * FROM MONAN WHERE IDMON = ?";

		try (PreparedStatement statement = connection.prepareStatement(query)) {
			statement.setInt(1, id);

			try (ResultSet resultSet = statement.executeQuery()) {
				if (resultSet.next()) {
					int maMon = resultSet.getInt("IDMON");
					String tenMon = resultSet.getString("TENMON");
					String hinhAnh = resultSet.getString("HINHANH");
					String mota = resultSet.getString("MOTA");
					int idLoai = resultSet.getInt("IDLOAI");
					int idND = resultSet.getInt("ID_ND");
					String idCT = resultSet.getString("IDCONGTHUC");
					return new MEAL(maMon, idLoai, idND, tenMon, hinhAnh, mota, idCT);
				}
			}
		}

		// Trong trường hợp không tìm thấy món ăn, trả về null hoặc xử lý tùy ý
		return null;
	}
	
	
	
//	public ArrayList <MEAL> getMealByTenND () throws SQLException {
//		ArrayList<MEAL> LIST_MEAL = new ArrayList<>();
//		
//		String query = "SELECT MONAN.*, USERS.TENND\r\n"
//				+ "FROM MONAN\r\n"
//				+ "LEFT JOIN USERS ON USERS.ID_ND = MONAN.ID_ND\r\n"
//				+ "WHERE MONAN.ID_ND = ?";
//		try (PreparedStatement statement = connection.prepareStatement(query)) {
//			try (ResultSet resultSet = statement.executeQuery()) {
//				// Duyệt qua các dòng kết quả trả về và tạo đối tượng MEAL từ mỗi dòng
//				while (resultSet.next()) {
//					int maMon = resultSet.getInt("IDMON");
//					String tenMon= resultSet.getString("TENMON");
//					String hinhAnh = resultSet.getString("HINHANH");
//					String moTa= resultSet.getString("MOTA");
//					int idLoai = resultSet.getInt("IDLOAI");
//					int idND = resultSet.getInt("ID_ND");
//					String idCT = resultSet.getString("IDCONGTHUC");
//					String tenND = resultSet.getString("TENND");
//					
//					MEAL meal = new MEAL(maMon, idLoai, idND, tenMon, hinhAnh, moTa, idCT, tenND);
//					LIST_MEAL.add(meal);
//				}
//			}
//		}
//		return LIST_MEAL;
//	}
	
//	public ArrayList<MEAL> getMealByTenND(int userID) throws SQLException{
//		ArrayList<MEAL> LIST_MEAL = new ArrayList<>();
//		String query = "SELECT MONAN.*, USERS.TENND\r\n"
//				+ "FROM MONAN\r\n"
//				+ "INNER JOIN USERS ON USERS.ID_ND = MONAN.ID_ND\r\n"
//				+ "WHERE MONAN.ID_ND = ?";
//		try (PreparedStatement statement = connection.prepareStatement(query)) {
//			statement.setInt(1, userID);
//
//			try (ResultSet resultSet = statement.executeQuery()) {
//				// Duyệt qua các dòng kết quả trả về và tạo đối tượng MEAL từ mỗi dòng
//				while (resultSet.next()) {
//					int maMon = resultSet.getInt("IDMON");
//					String tenMon = resultSet.getString("TENMON");
//					String hinhAnh = resultSet.getString("HINHANH");
//					String moTa = resultSet.getString("MOTA");
//					int idLoai = resultSet.getInt("IDLOAI");
//					int idND = resultSet.getInt("ID_ND");
//					String idCT = resultSet.getString("IDCONGTHUC");
//					String tenND = resultSet.getString("TENND");
//					MEAL meal = new MEAL(maMon, idLoai, idND, tenMon, hinhAnh, moTa, idCT, tenND);
//					LIST_MEAL.add(meal);
//				}
//			}
//		}
//
//		return LIST_MEAL;
//	}
	
	public ArrayList<MEAL> getAllMeal() throws SQLException {
		ArrayList<MEAL> Meal_List = new ArrayList<>();
		// Thực hiện truy vấn để lấy tất cả các sản phẩm từ database
		String query = "SELECT * FROM MONAN";
		PreparedStatement statement = connection.prepareStatement(query);
		ResultSet resultSet = statement.executeQuery();

		// Duyệt qua các dòng kết quả trả về và tạo đối tượng Product từ mỗi dòng
		while (resultSet.next()) {
			int maMon = resultSet.getInt("IDMON");
			String tenMon = resultSet.getString("TENMON");
			String hinhAnh = resultSet.getString("HINHANH");
			String moTa = resultSet.getString("MOTA");
			int idLoai = resultSet.getInt("IDLOAI");
			int idND = resultSet.getInt("ID_ND");
			String idCT = resultSet.getString("IDCONGTHUC");
			
			MEAL meal = new MEAL(maMon, idLoai, idND, tenMon, hinhAnh, moTa, idCT);
			Meal_List.add(meal);
		}
		return Meal_List;
	}

	
	
	public ArrayList<MEAL> getTypeFood(int typefood) throws SQLException {
		ArrayList<MEAL> LIST_FOOD = new ArrayList<>();

		// Thực hiện truy vấn để lấy tất cả các sản phẩm nước hoa nam từ database
		String query = "SELECT * FROM MONAN WHERE IDLOAI = ?";
		try (PreparedStatement statement = connection.prepareStatement(query)) {
			statement.setInt(1, typefood);

			try (ResultSet resultSet = statement.executeQuery()) {
				// Duyệt qua các dòng kết quả trả về và tạo đối tượng MEAL từ mỗi dòng
				while (resultSet.next()) {
					int maMon = resultSet.getInt("IDMON");
					String tenMon = resultSet.getString("TENMON");
					String hinhAnh = resultSet.getString("HINHANH");
					String moTa = resultSet.getString("MOTA");
					int idLoai = resultSet.getInt("IDLOAI");
					int idND = resultSet.getInt("ID_ND");
					String idCT = resultSet.getString("IDCONGTHUC");
					MEAL meal = new MEAL(maMon, idLoai, idND, tenMon, hinhAnh, moTa, idCT);
					LIST_FOOD.add(meal);
				}
			}
		}

		return LIST_FOOD;
	}

	// hàm lấy nguyên liêu
	public ArrayList<NGUYENLIEU> GET_INGREDIENT() throws SQLException {
		ArrayList<NGUYENLIEU> INGREDIENT_LIST = new ArrayList<>();
		// Thực hiện truy vấn để lấy tất cả các sản phẩm từ database
		String query = "SELECT NGUYENLIEU.*,DONVI.TENDONVI FROM NGUYENLIEU, DONVI WHERE NGUYENLIEU.IDDONVI =  DONVI.IDDONVI";
		PreparedStatement statement = connection.prepareStatement(query);
		ResultSet resultSet = statement.executeQuery();

		// Duyệt qua các dòng kết quả trả về và tạo đối tượng Product từ mỗi dòng
		while (resultSet.next()) {
			int maNguyenLieu = resultSet.getInt("IDNGUYENLIEU");
			String tenNguyenLieu = resultSet.getString("TENNGUYENLIEU");
			String tenDonVi = resultSet.getString("TENDONVI");
			int donVi = resultSet.getInt("IDDONVI");
			NGUYENLIEU nguyenlieu = new NGUYENLIEU(tenNguyenLieu, tenDonVi, maNguyenLieu, donVi);
			INGREDIENT_LIST.add(nguyenlieu);
		}
		return INGREDIENT_LIST;
	}

	// HÀM LẤY NGUYÊN LIỆU THEO CÔNG THỨC
	// hàm lấy nguyên liêu
	public ArrayList<NGUYENLIEU_MONAN> GET_INGREDIENT_FROM_RECIPE(String idcongthuc) throws SQLException {
		ArrayList<NGUYENLIEU_MONAN> INGREDIENT_LIST = new ArrayList<>();
		// Thực hiện truy vấn để lấy tất cả các sản phẩm từ database
		String query = "SELECT NGUYENLIEU.IDNGUYENLIEU,NGUYENLIEU.TENNGUYENLIEU,DONVI.TENDONVI, CT_CONGTHUC.SOLUONG "
				+ "from CT_CONGTHUC, NGUYENLIEU,DONVI WHERE CT_CONGTHUC.IDNGUYENLIEU = NGUYENLIEU.IDNGUYENLIEU "
				+ "AND DONVI.IDDONVI = NGUYENLIEU.IDDONVI AND CT_CONGTHUC.IDCONGTHUC = ?";

		try (PreparedStatement statement = connection.prepareStatement(query)) {
			statement.setString(1, idcongthuc);

			try (ResultSet resultSet = statement.executeQuery()) {
				if (resultSet.next()) {
					int maNguyenLieu = resultSet.getInt("IDNGUYENLIEU");
					String tenNguyenLieu = resultSet.getString("TENNGUYENLIEU");
					String tenDonVi = resultSet.getString("TENDONVI");
					int soLuong =  resultSet.getInt("SOLUONG");
					NGUYENLIEU_MONAN nguyenlieu = new NGUYENLIEU_MONAN(maNguyenLieu,soLuong,tenNguyenLieu, tenDonVi);
					INGREDIENT_LIST.add(nguyenlieu);
				}
			}
		}
		return INGREDIENT_LIST;
	}
	// HÀM LẤY CT_BUOCLAM THEO ID CONG THỨC
	public ArrayList<CT_BUOCLAM> GET_STEP_FROM_IDRECIPE(String idcongthuc) throws SQLException {
		ArrayList<CT_BUOCLAM> STEP_LIST = new ArrayList<>();
		// Thực hiện truy vấn để lấy tất cả các sản phẩm từ database
		String query = "SELECT CT_BUOCLAM.MOTA, BUOCLAM.TENBUOC FROM CT_BUOCLAM,BUOCLAM WHERE CT_BUOCLAM.IDBUOCLAM = BUOCLAM.IDBUOCLAM AND CT_BUOCLAM.IDCONGTHUC = ?";

		try (PreparedStatement statement = connection.prepareStatement(query)) {
			statement.setString(1, idcongthuc);

			try (ResultSet resultSet = statement.executeQuery()) {
				if (resultSet.next()) {
					String tenBuoc = resultSet.getString("TENBUOC");
					String moTa = resultSet.getString("MOTA");
					
					CT_BUOCLAM ct_BUOCLAM = new CT_BUOCLAM(moTa,tenBuoc);
					STEP_LIST.add(ct_BUOCLAM);
				}
			}
		}
		return STEP_LIST;
	}
	// HÀM TẠO CÔNG THỨC

	public ArrayList<MEAL> GET_FAMOUSFOOD() throws SQLException {
		ArrayList<MEAL> LIST_FOOD = new ArrayList<>();

		String query = "SELECT M.*, \n" + "       COUNT(DX.IDMON) AS LuotXem, \n"
				+ "       COUNT(DTK.IDMON) AS LuotTimKiem\n" + "FROM MONAN M\n"
				+ "LEFT JOIN DL_HANHDONG DX ON M.IDMON = DX.IDMON AND DX.HANHDONG = 0\n"
				+ "LEFT JOIN DL_HANHDONG DTK ON M.IDMON = DTK.IDMON AND DTK.HANHDONG = 1\n"
				+ "GROUP BY M.IDMON, M.TENMON, M.HINHANH, M.MOTA, M.IDLOAI,M.ID_ND,M.IDCONGTHUC\n"
				+ "ORDER BY LuotTimKiem DESC, LuotXem DESC;";

		try (PreparedStatement statement = connection.prepareStatement(query);
				ResultSet resultSet = statement.executeQuery()) {

			// Duyệt qua các dòng kết quả trả về và tạo đối tượng MEAL từ mỗi dòng
			while (resultSet.next()) {
				int maMon = resultSet.getInt("IDMON");
				String tenMon = resultSet.getString("TENMON");
				String hinhAnh = resultSet.getString("HINHANH");
				String moTa = resultSet.getString("MOTA");
				int idLoai = resultSet.getInt("IDLOAI");
				int idND = resultSet.getInt("ID_ND");
				String idCT = resultSet.getString("IDCONGTHUC");
				MEAL meal = new MEAL(maMon, idLoai, idND, tenMon, hinhAnh, moTa, idCT);
				LIST_FOOD.add(meal);
			}
		}

		return LIST_FOOD;
	}

	// HÀM KIỂM TRA TRẠNG THÁI ĐỐI VỚI 1 NGƯỜI DÙNG ĐÃ CÓ HÀNH ĐỘNG NÀO VỚI MÓN ĂN
	// NÀY CHƯA
	public int CHECK_STATUS(int iduser, int idmon, int action) throws SQLException {
		int status = -1;

	
		String query = "SELECT dbo.CHECK_ACTION_USER(?,?,?) AS TRANGTHAI;";
		try (PreparedStatement statement = connection.prepareStatement(query)) {
			statement.setInt(1, iduser);
			statement.setInt(2, idmon); 
			statement.setInt(3, action); 

			try (ResultSet resultSet = statement.executeQuery()) {
				
				while (resultSet.next()) {
					status = resultSet.getInt("TRANGTHAI");

				}
			}
		}

		return status;
	}

	// Hàm tính điểm cho hàm người dùng đó đối với món ăn
	public int Point_Action_Like_Save(int action, int idmon, int iduser) throws SQLException {
		int point = -1;
		if (CHECK_STATUS(iduser, idmon, action) == 0) {
			point = 0;

		} else {
			point = 1;
		}

		return point;
	}

	// HÀM KIỂM TRA XEM NGƯỜI DÙNG ĐÃ XEM MÓN ĂN HAY TÌM KIẾM MÓN ĂN NÀY CHƯA
	public int CHECK_STATUS_VIEW(int iduser, int idmon, int action) throws SQLException {
		int status = -1;

		
		String query = "SELECT dbo.CountUserViews(?,?,?) AS TRANGTHAI;";
		try (PreparedStatement statement = connection.prepareStatement(query)) {
			statement.setInt(1, iduser);
			statement.setInt(2, idmon); 
			statement.setInt(3, action); 

			try (ResultSet resultSet = statement.executeQuery()) {
				
				while (resultSet.next()) {
					status = resultSet.getInt("TRANGTHAI");

				}
			}
		}

		return status;
	}

	// HÀM TÍNH SỐ LƯỢNG XEM HAY TÌM KIẾM 1 MÓN ĂN CỦA NGƯỜI DÙNG gần nhất trogn 1 thời gian xác định
	public int COUNT_VIEW_SEARCH_USER(int action, int idmon, int idnd, int time) throws SQLException {

		int count = -1;
		if (CHECK_STATUS_VIEW(idnd, idmon, action) == 0) {
			count = 0;
		} else {

			String query = "SELECT COUNT(*) AS LUOTXEM\r\n" + "FROM DL_HANHDONG\r\n" + "WHERE (HANHDONG = ?)\r\n"
					+ "      AND ID_ND = ?\r\n" + "      AND IDMON = ?\r\n"
					+ "      AND DATEDIFF(DAY, THOIGIAN, GETDATE()) <= ?;";

			try (PreparedStatement statement = connection.prepareStatement(query)) {
				statement.setInt(1, action);
				statement.setInt(2, idnd); 
				statement.setInt(3, idmon); 
				statement.setInt(4, time);
				try (ResultSet resultSet = statement.executeQuery()) {
					
					if (resultSet.next()) {
						count = resultSet.getInt("LUOTXEM");
					}
				}
			}
		}
		

		return count;
	}

	

	// Hàm tính thời gian chênh lệch mà người dùng đã tìm kiếm or xem so với thời
	// gian hiện tại
	public int getTimeToNow(int action, int idmon, int idnd) throws SQLException {
		int time = 0;
		if (CHECK_STATUS_VIEW(idnd, idmon, action) == 0) {
			time = 0;
		} else {			
			String query = "SELECT TOP 1 DATEDIFF(SECOND, THOIGIAN, GETDATE()) AS SoNgayGanNhat\r\n"
					+ "FROM DL_HANHDONG\r\n" + "WHERE HANHDONG = ? AND ID_ND = ? AND IDMON = ?\r\n"
					+ "ORDER BY THOIGIAN DESC;\r\n";

			try (PreparedStatement statement = connection.prepareStatement(query)) {
				statement.setInt(1, action);
				statement.setInt(2, idnd); // Sửa thành setInt(2, action)
				statement.setInt(3, idmon); // Sửa thành setInt(3, idnd)

				try (ResultSet resultSet = statement.executeQuery()) {
					// Duyệt qua các dòng kết quả trả về và lấy giá trị lượt xem
					if (resultSet.next()) {
						time = resultSet.getInt("SoNgayGanNhat");
					}
				}
			}
		}

		return time;
	}

	public List<MEAL> LIST_SUGGEST(int idnd, int typefood) throws SQLException {
		// Các hệ số để điều chỉnh ảnh hưởng của mỗi yếu tố
		int heSoTimKiemGanDay = 7;
		int heSoXemGanDay = 6;
		int heSoYeuThich = 5;
		int heSoLuu = 4;

		Map<Integer, Integer> thongTinMonAn = new HashMap<>();

		for (MEAL meal : getTypeFood(typefood)) {
			int diemMonAn = 0;
			int timeToNow = getTimeToNow(1, meal.getMaMon(), idnd);

			if (timeToNow == 0) {
				diemMonAn = 0;
			} else if (timeToNow <= 86400) { // Thời gian chênh lệch là 1 ngày
				diemMonAn = COUNT_VIEW_SEARCH_USER(TIMKIEM, meal.getMaMon(), idnd, 1) * (heSoTimKiemGanDay * 5)
						+ COUNT_VIEW_SEARCH_USER(XEM, meal.getMaMon(), idnd, 1) * (heSoXemGanDay * 5)
						+ Point_Action_Like_Save(YEUTHICH, meal.getMaMon(), 1) * (heSoYeuThich + 5)
						+ Point_Action_Like_Save(LUU, meal.getMaMon(), 0) * (heSoLuu + 5);
			} else if (timeToNow <= 259200) { // Thời gian chênh lệch là 3 ngày
				diemMonAn = COUNT_VIEW_SEARCH_USER(TIMKIEM, meal.getMaMon(), idnd, 3) * (heSoTimKiemGanDay)
						+ COUNT_VIEW_SEARCH_USER(XEM, meal.getMaMon(), idnd, 3) * (heSoXemGanDay)
						+ Point_Action_Like_Save(YEUTHICH, meal.getMaMon(), idnd) * (heSoYeuThich + 3)
						+ Point_Action_Like_Save(LUU, meal.getMaMon(), idnd) * (heSoLuu + 3);
			} else if (timeToNow <= 432000){ // Hơn 5 ngày
				diemMonAn = COUNT_VIEW_SEARCH_USER(TIMKIEM, meal.getMaMon(), idnd, timeToNow) * (heSoTimKiemGanDay - 3)
						+ COUNT_VIEW_SEARCH_USER(XEM, meal.getMaMon(), idnd, timeToNow) * (heSoXemGanDay - 3)
						+ Point_Action_Like_Save(YEUTHICH, meal.getMaMon(), idnd) * heSoYeuThich
						+ Point_Action_Like_Save(LUU, meal.getMaMon(), 0) * heSoLuu;
			}
			thongTinMonAn.put(meal.getMaMon(), diemMonAn);
		}
		// Sắp xếp danh sách thông tin món ăn với điểm từ trên xuống
		List<Map.Entry<Integer, Integer>> sortedList = new ArrayList<>(thongTinMonAn.entrySet());		
		// Sắp xếp theo giảm dần của giá trị (điểm)
		sortedList.sort(Map.Entry.comparingByValue(Comparator.reverseOrder()));
		// Lọc các món ăn có điểm dưới 12
		List<MEAL> sortedMeals = new ArrayList<>();
		for (Map.Entry<Integer, Integer> entry : sortedList) {
			int maMon = entry.getKey();
			int diem = entry.getValue();

			if (diem > 30) {
				MEAL meal = getMealById(maMon);
				sortedMeals.add(meal);
			}									
		}
		return sortedMeals;
	}
	// HÀM LẤY RA NHỮNG MÓN ĂN CÓ THÔNG TIN 
	public List<MEAL> getRelatedMeals(int idnd, int typefood) throws SQLException {
		List<MEAL> relatedMeals = new ArrayList<>();
		// Danh sách các món ăn được gợi ý
		List<MEAL> suggestedMeals = LIST_SUGGEST(idnd, typefood);		
		for (MEAL meal : getTypeFood(typefood)) {		
			for (MEAL suggestedMeal : suggestedMeals) {
				// Tách tên món ăn thành các từ
				String[] keywords = suggestedMeal.getTenMon().toLowerCase().split("\\s+");
				for (String keyword : keywords) {
					if (meal.getTenMon().toLowerCase().contains(keyword)) {
						if(!relatedMeals.contains(meal))
						{
							relatedMeals.add(meal);
						}
						
					}
				}				

			}
		}

		// Loại bỏ các món ăn trùng lặp trong danh sách
		Set<MEAL> uniqueMeals = new HashSet<>(relatedMeals);
		relatedMeals.clear();
		relatedMeals.addAll(uniqueMeals);

		return relatedMeals;
	}
	private List<MEAL> getRandomList(List<MEAL> inputList, double ratio) {
        int count = (int) (ratio * inputList.size());
        Collections.shuffle(inputList);
        return inputList.subList(0, count);
    }
	public List<MEAL> generateMixedList(int idnd, int typefood) throws SQLException {
	    List<MEAL> mixedList = new ArrayList<>();

	    // Lấy danh sách theo sở thích và loại
	    if(getRelatedMeals(idnd, typefood).size() == 0)
	    {
	    	mixedList.addAll(getTypeFood(typefood));
	    }else {
	    	List<MEAL> preferenceList = getRandomList(getRelatedMeals(idnd, typefood), 0.3);
		    List<MEAL> typeList = getRandomList(getTypeFood(typefood), 0.7);
		    
		    // Kết hợp hai danh sách và loại bỏ món ăn trùng lặp
		    for (MEAL meal : preferenceList) {
		        if (!mixedList.contains(meal)) {
		            mixedList.add(meal);
		        }
		       
		    }

		    for (MEAL meal : typeList) {
		        if (!mixedList.contains(meal)) {
		            mixedList.add(meal);
		        }
		       
		    }
		}
	    

	    return mixedList;
	}



    // Random danh sách theo tỷ lệ
    


	public ArrayList<NGUYENLIEU_MONAN> GET_NGUYENLIEU(int idMonan) throws SQLException {
		ArrayList<NGUYENLIEU_MONAN> LIST_NL = new ArrayList<>();

		// Thực hiện truy vấn để lấy tất cả các sản phẩm nước hoa nam từ database
		String query = "EXEC GETALLNGUYENLIEU @IDMONAN = ?";
		try (PreparedStatement statement = connection.prepareStatement(query)) {
			statement.setInt(1, idMonan);

			try (ResultSet resultSet = statement.executeQuery()) {
				// Duyệt qua các dòng kết quả trả về và tạo đối tượng MEAL từ mỗi dòng
				while (resultSet.next()) {
					int idNL = resultSet.getInt("IDNGUYENLIEU");
					String tenNL = resultSet.getString("TENNGUYENLIEU");
					String tenDV = resultSet.getString("TENDONVI");
					int soLuong = resultSet.getInt("SOLUONG");
					NGUYENLIEU_MONAN nguyenlieu = new NGUYENLIEU_MONAN(idNL, soLuong, tenNL, tenDV);

					LIST_NL.add(nguyenlieu);
				}
			}
		}

		return LIST_NL;
	}

	public ArrayList<LOAIMON> GET_TYPEMEAL() throws SQLException {
		ArrayList<LOAIMON> LIST_TYPEMEAL = new ArrayList<>();

		// Thực hiện truy vấn để lấy tất cả các sản phẩm nước hoa nam từ database
		String query = "SELECT * FROM LOAIMON";
		try (PreparedStatement statement = connection.prepareStatement(query)) {

			try (ResultSet resultSet = statement.executeQuery()) {
				// Duyệt qua các dòng kết quả trả về và tạo đối tượng MEAL từ mỗi dòng
				while (resultSet.next()) {
					int idtype = resultSet.getInt("IDLOAI");
					String nameType = resultSet.getString("TENLOAI");

					LOAIMON type = new LOAIMON(idtype, nameType);

					LIST_TYPEMEAL.add(type);
				}
			}
		}

		return LIST_TYPEMEAL;
	}

	//// SỬA
	public ArrayList<CT_BUOCLAM> GET_STEP(int idMonan) throws SQLException {
		ArrayList<CT_BUOCLAM> LIST_BUOCLAM = new ArrayList<>();

		// Thực hiện truy vấn để lấy tất cả các sản phẩm nước hoa nam từ database
		String query = "SELECT BL.TENBUOC, CT_BL.MOTA\r\n" + "	        		FROM MONAN MA\r\n"
				+ "	        		JOIN CT_BUOCLAM CT_BL ON CT_BL.IDCONGTHUC = MA.IDCONGTHUC\r\n"
				+ "					JOIN BUOCLAM BL ON BL.IDBUOCLAM = CT_BL.IDBUOCLAM\r\n"
				+ "	        		WHERE MA.IDMON = ?";
		try (PreparedStatement statement = connection.prepareStatement(query)) {
			statement.setInt(1, idMonan);

			try (ResultSet resultSet = statement.executeQuery()) {
				// Duyệt qua các dòng kết quả trả về và tạo đối tượng MEAL từ mỗi dòng
				while (resultSet.next()) {
					String buocLam = resultSet.getString("TENBUOC");
					String moTa = resultSet.getString("MOTA");
					CT_BUOCLAM ct_buoclam = new CT_BUOCLAM(moTa, buocLam);

					LIST_BUOCLAM.add(ct_buoclam);
				}
			}
		}

		return LIST_BUOCLAM;
	}
	// HÀM LƯU MÓN ĂN
	public void SAVEORLIKE(int idnd, int idmon, int action) throws SQLException {
		String query = "INSERT INTO DS_YEUTHICH (ID_ND, IDMON,HANHDONG) VALUES (?, ?, ?)";
		try (PreparedStatement statement = connection.prepareStatement(query)) {
			statement.setInt(1, idnd);
			statement.setInt(2, idmon);
			statement.setInt(3, action);
			statement.executeUpdate();
		}
	}

	public void VIEWORFIND(int idnd, int idmon,int action) throws SQLException {
		String query = "INSERT INTO DL_HANHDONG (ID_ND, IDMON, HANHDONG, THOIGIAN) VALUES (?, ?, ?, ?)";
		try (PreparedStatement statement = connection.prepareStatement(query)) {
			statement.setInt(1, idnd);
			statement.setInt(2, idmon);
			statement.setInt(3, action);

			// Lấy thời gian hiện tại
			Timestamp timestamp = new Timestamp(new Date().getTime());

			// Truyền thời gian vào statement
			statement.setTimestamp(4, timestamp);

			statement.executeUpdate();
		}
	}

	public int CHECK_LIKEORSAVE(int iduser, int idmon, int action) throws SQLException {
		int result = -1;

		// Thực hiện truy vấn để lấy tất cả các sản phẩm nước hoa nam từ database
		String query = "SELECT dbo.CHECK_LIKEORSAVE(?,?,?) AS Result;";
		try (PreparedStatement statement = connection.prepareStatement(query)) {
			statement.setInt(1, iduser);
			statement.setInt(2, idmon); // Sửa thành setInt(2, action)
			statement.setInt(3, action); // Sửa thành setInt(2, action)

			try (ResultSet resultSet = statement.executeQuery()) {
				// Duyệt qua các dòng kết quả trả về và tạo đối tượng MEAL từ mỗi dòng
				while (resultSet.next()) {
					result = resultSet.getInt("Result");

				}
			}
		}

		return result;
	}

	public String maCongThuc = "";

	// HÀM TẠO MÃ CÔNG THỨC RANDOM
	public String taoMaCongThuc() {
		Set<String> danhSachMaCongThuc = new HashSet<>();
		String kyTu = "1234567890";
		int doDai = 6;

		Random random = new Random();
		StringBuilder maCongThuc = new StringBuilder(doDai);

		do {
			maCongThuc.setLength(0); // Xóa chuỗi hiện tại
			for (int i = 0; i < doDai; i++) {
				int viTri = random.nextInt(kyTu.length());
				maCongThuc.append(kyTu.charAt(viTri));
			}
		} while (danhSachMaCongThuc.contains(maCongThuc.toString()));

		danhSachMaCongThuc.add(maCongThuc.toString());

		return "CT" + maCongThuc.toString();
	}

	// HÀM TẠO CÔNG THỨC
	public void CREATE_RECIPE(int hour, int minute, String dokho) throws SQLException {
		String query = "INSERT INTO CONGTHUC (IDCONGTHUC,THOIGIANNAU,DOKHO) VALUES (?, ?,?)";
		try (PreparedStatement statement = connection.prepareStatement(query)) {
			maCongThuc = taoMaCongThuc();
			statement.setString(1, maCongThuc);
			statement.setString(3, dokho);
			LocalTime thoiGian = LocalTime.of(hour, minute);
			java.sql.Time sqlTime = java.sql.Time.valueOf(thoiGian);
			statement.setTime(2, sqlTime);

			statement.executeUpdate();
		}
	}

	// Hàm TẠO MÓN ĂN
	public void CREATE_MEAL(String tenMon,String hinhanh, String moTa, int maLoai, int maND, String idCongThuc) throws SQLException {
		String query = "INSERT INTO MONAN (TENMON,HINHANH,MOTA,IDLOAI,ID_ND,IDCONGTHUC) VALUES (?,?, ?, ?, ?, ?)";
		try (PreparedStatement statement = connection.prepareStatement(query)) {
			statement.setString(1, tenMon);
			statement.setString(2, hinhanh);
			statement.setString(3, moTa);
			statement.setInt(4, maLoai);
			statement.setInt(5, maND);
			statement.setString(6, maCongThuc);

			statement.executeUpdate();
		}
	}

	// HÀM TẠO CÔNG THỨC NGUYÊN LIỆU
	public void CREATE_INGREDIENT(int maNguyenLieu, int soLuong) throws SQLException {
		String query = "INSERT INTO CT_CONGTHUC (IDCONGTHUC, IDNGUYENLIEU,SOLUONG) VALUES (?, ?,?)";
		try (PreparedStatement statement = connection.prepareStatement(query)) {

			statement.setString(1, maCongThuc);
			statement.setInt(2, maNguyenLieu);
			statement.setInt(3, soLuong);

			statement.executeUpdate();
		}
	}

	/// SỬA
	// HÀM TẠO CHI TIẾT BƯỚC LÀM
	public void CREATE_STEP(int idbuoclam, String moTa) throws SQLException {
		String query = "INSERT INTO CT_BUOCLAM (IDCONGTHUC, IDBUOCLAM,MOTA) VALUES (?, ?,?)";
		try (PreparedStatement statement = connection.prepareStatement(query)) {

			statement.setString(1, maCongThuc);
			statement.setInt(2, idbuoclam);
			statement.setString(3, moTa);

			statement.executeUpdate();
		}
	}
	
	private boolean containsKeyword(String keyword, MEAL meal) {
	    String[] keywords = keyword.split("\\s+"); // Tách từ khóa thành mảng các từ

	    for (String kw : keywords) {
	        if (meal.getTenMon().toLowerCase().contains(kw.toLowerCase())) {
	            return true;
	        }
	    }

	    return false;
	}

	// HÀM LỌC DANH SÁCH MÓN ĂN
	public ArrayList<MEAL> filterFoodList(ArrayList<MEAL> foodList, String keyword) {
		ArrayList<MEAL> filteredList = new ArrayList<>();

	    for (MEAL meal : foodList) {
	        if (containsKeyword(keyword, meal)) {
	            filteredList.add(meal);
	        }
	    }

	    return filteredList;
	}

	// HÀM SO SÁNH KIỂM TRA TÊN MÓN ĂN NÀO GẦN BẰNG VỚI TỪ KHOÁ TÌM KIẾM
	private int countKeywordOccurrences(String keyword, MEAL meal) {
	    int count = 0;
	    String[] keywords = keyword.split("\\s+"); // Tách từ khóa thành mảng các từ

	    for (String kw : keywords) {
	        if (meal.getTenMon().toLowerCase().contains(kw.toLowerCase())) {
	            count++;
	        }
	    }

	    return count;
	}

	// HÀM SẮP XẾP MÓN ĂN
	public void sortFoodList(ArrayList<MEAL> foodList, String keyword) {
	    // Sử dụng Comparator để so sánh theo số lần xuất hiện giảm dần
	    Comparator<MEAL> keywordComparator = Comparator.comparingInt(meal -> countKeywordOccurrences(keyword, meal));
	    Collections.sort(foodList, keywordComparator.reversed());
	}

	// HÀM XOÁ 1 MÓN ĂN MÀ NGƯỜI DÙNG ĐÃ TẠO
	    public void DELETE_MEAL(int idmeal) throws SQLException {
	        String query = "EXEC DELETE_MEAL @IDMON = ?"; 
	        try (PreparedStatement statement = connection.prepareStatement(query)) {
	            statement.setInt(1, idmeal);	                
	            statement.executeUpdate();
	        }
	    }
	    
	    public ArrayList<LOAIMON> GET_NUBERMEALOFTYPE() throws SQLException {
			ArrayList<LOAIMON> LIST_TYPE = new ArrayList<>();

			// Thực hiện truy vấn để lấy tất cả các sản phẩm nước hoa nam từ database
			String query = "SELECT LOAIMON.*, COUNT(MONAN.IDLOAI) as SOLUONGMON\r\n"
					+ "FROM LOAIMON\r\n"
					+ "LEFT JOIN MONAN ON MONAN.IDLOAI = LOAIMON.IDLOAI\r\n"
					+ "GROUP BY LOAIMON.IDLOAI, LOAIMON.TENLOAI";
			try (PreparedStatement statement = connection.prepareStatement(query)) {
				

				try (ResultSet resultSet = statement.executeQuery()) {
					// Duyệt qua các dòng kết quả trả về và tạo đối tượng MEAL từ mỗi dòng
					while (resultSet.next()) {
						int maLoai = resultSet.getInt("IDLOAI");
						String tenLoai = resultSet.getString("TENLOAI");
						
						int soLuong = resultSet.getInt("SOLUONGMON");
						
						LOAIMON type = new LOAIMON(maLoai,soLuong,tenLoai);
						LIST_TYPE.add(type);
					}
				}
			}

			return LIST_TYPE;
		}
	    public void ADD_TYPE(String nametype) throws SQLException {
			String query = "INSERT INTO LOAIMON (TENLOAI) VALUES (?)";
			try (PreparedStatement statement = connection.prepareStatement(query)) {
				statement.setString(1, nametype);
				
				statement.executeUpdate();
			}
		}
	    
	    public void UPDATE_TYPE(String nametype, int idloai) throws SQLException {
			String query = "UPDATE LOAIMON SET TENLOAI = ? WHERE IDLOAI = ?";
			try (PreparedStatement statement = connection.prepareStatement(query)) {
				statement.setString(1, nametype);
				statement.setInt(2, idloai);
				statement.executeUpdate();
			}
		}
	    
	    
	    
	    public ArrayList<MEAL> GET_LIST_SAVED(int maUser, int action) throws SQLException {
	        ArrayList<MEAL> LIST_MEAL = new ArrayList<>();

	        // Thực hiện truy vấn để lấy tất cả các sản phẩm nước hoa nam từ database
	        String query = "SELECT MONAN.* FROM DS_YEUTHICH, MONAN\r\n"
	        		+ "	        		WHERE MONAN.IDMON = DS_YEUTHICH.IDMON 	        		\r\n"
	        		+ "	        		AND DS_YEUTHICH.ID_ND = ? AND DS_YEUTHICH.HANHDONG = ?";
	        try (PreparedStatement statement = connection.prepareStatement(query)) {
	            statement.setInt(1, maUser);
	            statement.setInt(2, action);
	           

	            try (ResultSet resultSet = statement.executeQuery()) {
	                
	            	while (resultSet.next()) {
	    	 			int maMon = resultSet.getInt("IDMON");
	    	 			String tenMon = resultSet.getString("TENMON");
	    	 			String hinhAnh = resultSet.getString("HINHANH");
	    	 			String moTa = resultSet.getString("MOTA");
	    	 			int idLoai = resultSet.getInt("IDLOAI");
	    	 			int idND = resultSet.getInt("ID_ND");
	    	 			String idCT = resultSet.getString("IDCONGTHUC");
	    	 			MEAL meal = new MEAL(maMon, idLoai, idND, tenMon, hinhAnh, moTa, idCT);
	    	 			LIST_MEAL.add(meal);
	    	 		}
	            }
	        }

	        return LIST_MEAL;
	    }
	    
	    
	    public ArrayList<MEAL> GET_LIST_CREATED(int maUser) throws SQLException {
	        ArrayList<MEAL> LIST_MEAL = new ArrayList<>();

	        // Thực hiện truy vấn để lấy tất cả các sản phẩm nước hoa nam từ database
	        String query = "SELECT MONAN.* FROM MONAN WHERE MONAN.ID_ND = ?";
	        try (PreparedStatement statement = connection.prepareStatement(query)) {
	            statement.setInt(1, maUser);
	            
	            try (ResultSet resultSet = statement.executeQuery()) {

	            	while (resultSet.next()) {
	    	 			int maMon = resultSet.getInt("IDMON");
	    	 			String tenMon = resultSet.getString("TENMON");
	    	 			String hinhAnh = resultSet.getString("HINHANH");
	    	 			String moTa = resultSet.getString("MOTA");
	    	 			int idLoai = resultSet.getInt("IDLOAI");
	    	 			int idND = resultSet.getInt("ID_ND");
	    	 			String idCT = resultSet.getString("IDCONGTHUC");
	    	 			MEAL meal = new MEAL(maMon, idLoai, idND, tenMon, hinhAnh, moTa, idCT);
	    	 			LIST_MEAL.add(meal);
	    	 		}
	            	
	            }
	        }

	        return LIST_MEAL;
	    }
	    // HÀM ĐẾM SỐ LƯỢNG YÊU THÍCH CỦA 1 NGƯỜI DÙNG 
	    public int COUNT_LIKE_OF_USER(int idnd) throws SQLException {

			int count = -1;
			
				String query = "SELECT COUNT(DS_YEUTHICH.HANHDONG) AS SOLUONGYEUTHICH\r\n"
						+ "	FROM DS_YEUTHICH WHERE DS_YEUTHICH.HANHDONG = 1 AND DS_YEUTHICH.ID_ND = ? AND DS_YEUTHICH.TRANGTHAI = 1";

				try (PreparedStatement statement = connection.prepareStatement(query)) {
					
					statement.setInt(1, idnd); 
					
					
					try (ResultSet resultSet = statement.executeQuery()) {
						
						if (resultSet.next()) {
							count = resultSet.getInt("SOLUONGYEUTHICH");
						}
					}
				}
			
			

			return count;
		}
	    // HÀM LẤY RA MÓN ĂN CHƯA ĐƯỢC DUYỆT (DUYỆT LÀ 1, CÒN CHƯA DUYỆT LÀ 0)
//	    public ArrayList<MEAL> GET_STATUS_MEAL() throws SQLException {
//			ArrayList<MEAL> LIST_MEAL = new ArrayList<>();
//
//			// Thực hiện truy vấn để lấy tất cả các sản phẩm nước hoa nam từ database
//			String query = "SELECT MONAN.IDMON, MONAN.TENMON, MONAN.HINHANH, MONAN.MOTA, MONAN.IDLOAI, MONAN.ID_ND, MONAN.IDCONGTHUC, USERS.TENND \r\n"
//					+ "FROM MONAN\r\n"
//					+ "JOIN USERS ON MONAN.ID_ND = USERS.ID_ND\r\n"
//					+ "WHERE MONAN.TRANGTHAI = 0\r\n"
//					+ "GROUP BY MONAN.IDMON, MONAN.TENMON, MONAN.HINHANH, MONAN.MOTA, MONAN.IDLOAI, MONAN.ID_ND, MONAN.IDCONGTHUC, USERS.TENND;";
//			try (PreparedStatement statement = connection.prepareStatement(query)) {
//
//				try (ResultSet resultSet = statement.executeQuery()) {
//					// Duyệt qua các dòng kết quả trả về và tạo đối tượng MEAL từ mỗi dòng
//					while (resultSet.next()) {
//						int maMon = resultSet.getInt("IDMON");
//						String tenMon = resultSet.getString("TENMON");
//						String hinhAnh = resultSet.getString("HINHANH");
//						String moTa = resultSet.getString("MOTA");
//						int idLoai = resultSet.getInt("IDLOAI");
//						int idND = resultSet.getInt("ID_ND");
//						String idCT = resultSet.getString("IDCONGTHUC");
//						String namend = resultSet.getString("TENND");
//						MEAL meal = new MEAL(maMon, idLoai, idND, tenMon, hinhAnh, moTa, idCT,namend);
//						LIST_MEAL.add(meal);
//					}
//				}
//			}
//
//			return LIST_MEAL;
//		}
	    // HÀM LẤY ID MÓN ĂN THEO ID CÔNG THỨC
	    public CONGTHUC GET_RECIPE(int idmon) throws SQLException {
	    	
	    	CONGTHUC congthuc = new CONGTHUC();
			String query = "EXEC GET_RECIPE @IDMON = ?";
			try (PreparedStatement statement = connection.prepareStatement(query)) {
				statement.setInt(1, idmon);
				

				try (ResultSet resultSet = statement.executeQuery()) {
					// Duyệt qua các dòng kết quả trả về và tạo đối tượng MEAL từ mỗi dòng
					while (resultSet.next()) {
						
						String dokho = resultSet.getString("DOKHO");
						int hour = resultSet.getInt("GIO");
						int minute = resultSet.getInt("PHUT");
						TIME time = new TIME(hour, minute);
						
						congthuc.setDoKho(dokho);
						congthuc.setTime(time);
					}
				}
			}

			return congthuc;
		}
//	    //HÀM UPDATE TRẠNG THÁI MÓN ĂN
//	    public void UPDATE_STATUSMEAL(int idmon) throws SQLException {
//			String query = "UPDATE MONAN SET MONAN.TRANGTHAI = 0 WHERE MONAN.IDMON  = ?";
//			try (PreparedStatement statement = connection.prepareStatement(query)) {
//				
//				statement.setInt(1, idmon);
//				statement.executeUpdate();
//			}
//		}
//
//	    public void close() throws SQLException {
//	        // Đóng kết nối đến database
//	        if (connection != null) {
//	            connection.close();
//	        }
//	    }

}
