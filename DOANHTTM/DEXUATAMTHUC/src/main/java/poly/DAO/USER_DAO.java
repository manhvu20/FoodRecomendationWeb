package poly.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import poly.bean.USER;


public class USER_DAO {
	private Connection connection;

	public USER_DAO() throws SQLException {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            // Hoặc bạn có thể xử lý ngoại lệ theo cách khác tùy vào yêu cầu của bạn
            throw new SQLException("Không tìm thấy driver SQLServer");
        }

        // Khởi tạo kết nối đến database
        String url = "jdbc:sqlserver://ADMIN-PC:1435;databaseName=DEXUATAMTHUC;encrypt=false;trustServerCertificate=true;";
        String username = "sa";
        String password = "123";
        try {
            connection = DriverManager.getConnection(url, username, password);
        } catch (SQLException e) {
            e.printStackTrace();
            // Hoặc bạn có thể xử lý ngoại lệ theo cách khác tùy vào yêu cầu của bạn
            throw new SQLException("Không thể kết nối đến cơ sở dữ liệu");
        }
    }


	 public void ADD_USERS(USER user) throws SQLException {
	        String query = "INSERT INTO USERS(TENND,EMAIL,PASSWORD) VALUES (?, ?,?)";
	        try (PreparedStatement statement = connection.prepareStatement(query)) {
	            statement.setString(1, user.getTenUser());
	            statement.setString(2, user.getEmail());
	            statement.setString(3, user.getPassword());	           
	            statement.executeUpdate();
	        }
	    }  

public ArrayList<USER> LISTUSER() throws SQLException {
   	ArrayList<USER> LIST_USERS = new ArrayList<>();
       // Thực hiện truy vấn để lấy tất cả các sản phẩm từ database
       String query = "SELECT * FROM USERS WHERE EMAIL != 'admin11@gmail.com'";
       PreparedStatement statement = connection.prepareStatement(query);
       ResultSet resultSet = statement.executeQuery();
       
       // Duyệt qua các dòng kết quả trả về và tạo đối tượng Product từ mỗi dòng
       while (resultSet.next()) 
       {
           int maUser = resultSet.getInt("ID_ND");
           String name_user = resultSet.getString("TENND");
           String email = resultSet.getString("EMAIL");                
           String pass = resultSet.getString("PASSWORD");
           
           USER user = new USER(maUser,name_user,email,pass);
          
           LIST_USERS.add(user);
           
       }
       return LIST_USERS;
   }

	public USER getUserDetailsById (int userId) throws SQLException {
		USER userDetails = new USER();
		try (PreparedStatement statement = connection.prepareStatement("SELECT * FROM USERS WHERE ID_ND = ?")) {
            statement.setInt(1, userId);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                userDetails = new USER();
                userDetails.setMaUser(resultSet.getInt("ID_ND"));
                userDetails.setTenUser(resultSet.getString("TENND"));
                userDetails.setEmail(resultSet.getString("EMAIL"));
                // Set other properties as needed
            }
        }

        return userDetails;
	}
	

public void UPDATE_USERS(String newpass,int maUser) throws SQLException {
	 
    String query = "UPDATE USERS SET PASSWORD = ? WHERE ID_ND = ?";
    try {
        connection.setAutoCommit(false);  // Bắt đầu giao dịch
        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setString(1, newpass);
            statement.setInt(2, maUser);	  
            int rowsUpdated = statement.executeUpdate();
            if (rowsUpdated == 1) {
                connection.commit();  // Commit giao dịch nếu cập nhật thành công
            } else {
                connection.rollback();  // Rollback nếu không có hàng nào được cập nhật
            }
        }
    } catch (SQLException e) {
        connection.rollback();  // Rollback nếu có lỗi
        throw e;
    } finally {
        connection.setAutoCommit(true);  // Đặt lại trạng thái mặc định
    }
}
}
