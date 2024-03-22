<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Food Suggestions</title>
</head>
<body>
    <div id="foodList">
    <c:forEach var="food" items="${newFoodItems}">
        <p>${food.tenMon}</p>
        <!-- Thêm các thông tin khác của món ăn nếu cần -->
    </c:forEach>
</div>

    <button id="loadMore">Xem thêm</button>

    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="your_script.js">
    
    $(document).ready(function() {
        // Đăng ký sự kiện khi nhấn nút "Xem thêm"
        $("#loadMore").click(function() {
            // Gửi yêu cầu đến máy chủ để lấy danh sách món ăn mới
            $.ajax({
                url: "getNewFoodItems.htm",  // Đường dẫn đến endpoint xử lý yêu cầu trên máy chủ
                method: "GET",  // Hoặc "POST" tùy thuộc vào cách bạn cấu hình máy chủ
                dataType: "json",  // Loại dữ liệu bạn muốn nhận từ máy chủ
                success: function(data) {
                    // Xử lý dữ liệu khi nhận được phản hồi từ máy chủ
                    displayNewFoodItems(data);
                },
                error: function(error) {
                    console.log("Error:", error);
                }
            });
        });

        // Hàm hiển thị danh sách món ăn mới
        function displayNewFoodItems(data) {
            // Lặp qua danh sách món ăn và thêm chúng vào #foodList
            for (let i = 0; i < data.length; i++) {
                $("#foodList").append("<p>" + data[i].tenMon + "</p>");
            }
        }
    });

    
    </script>
</body>
</html>
