<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %> 
// JSTL

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee List</title>
</head>
<body>
<h2>Danh sách nhân viên</h2>

<p>
    <a href="${pageContext.request.contextPath}/employees?action=create">+ Thêm mới</a>
</p>

<table border="1" cellpadding="6" cellspacing="0">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Address</th>
        <th>Action</th>
    </tr>

    <c:forEach var="e" items="${employees}">
        <tr>
            <td>${e.id}</td>
            <td>${e.name}</td>
            <td>${e.email}</td>
            <td>${e.address}</td>
            <td>
                <a href="${pageContext.request.contextPath}/employees?action=view&id=${e.id}">View</a> |
                <a href="${pageContext.request.contextPath}/employees?action=edit&id=${e.id}">Edit</a> |
                <a href="${pageContext.request.contextPath}/employees?action=delete&id=${e.id}"
                   onclick="return confirm('Xoá nhân viên này?');">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>