<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
    <form:form action="test.htm" method="post" modelAttribute="ListNguyenLieu" >
    <div id="ingredientForm">
        <c:forEach var="item" items="${ListNguyenLieu.CT_NguyenLieuList}" varStatus="status">
            <select name="CT_NguyenLieuList[${status.index}].idNguyenLieu">
                <c:forEach var="nguyenlieu" items="${NguyenLieu}" varStatus="statusNguyenLieu">
                    <option value="${nguyenlieu.maNguyenLieu}">${nguyenlieu.tenNguyenLieu}</option>
                </c:forEach>
            </select>
            <form:input path="CT_NguyenLieuList[${status.index}].soLuong" />
            <br />
        </c:forEach>
        <button type="button" onclick="addIngredient()">Thêm</button>
    </div>
       
    <div id="ingredientForm1">
        <c:forEach var="item" items="${ListNguyenLieu.CT_BuocLam}" varStatus="status">
            <form:input path="CT_BuocLam[${status.index}].buocLam" />
            <form:input path="CT_BuocLam[${status.index}].moTa" />
            <br />
        </c:forEach>
        <button type="button" onclick="addIngredient1()">Thêm</button>
    </div>
       
    <input type="submit" value="Submit" />
</form:form>

<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
var currentIndex = 0; // Đặt giá trị index ban đầu
var currentIndex1 = 0;
function addIngredient() {
    var newRow = '<select name="CT_NguyenLieuList[' + currentIndex + '].idNguyenLieu">';
    
    // Thêm các option vào select
    <c:forEach var="nguyenlieu" items="${NguyenLieu}" varStatus="statusNguyenLieu">
        newRow += '<option value="${nguyenlieu.maNguyenLieu}">${nguyenlieu.tenNguyenLieu}</option>';
    </c:forEach>
    
    newRow += '</select>';
    newRow += '<input type="text" name="CT_NguyenLieuList[' + currentIndex + '].soLuong" />';
    newRow += '<br />';
    $("#ingredientForm").append(newRow);

    currentIndex++; // Tăng giá trị index cho lần thêm tiếp theo
}


    function addIngredient1() {
       
        var newRow = '<input type="text" name="CT_BuocLam[' + currentIndex1 + '].buocLam" />';
        newRow += '<input type="text" name="CT_BuocLam[' + currentIndex1 + '].moTa" />';
        newRow += '<br />';
        $("#ingredientForm1").append(newRow);
        currentIndex1++;
    }
</script>


</body>
</html>
