<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Employee</title>
</head>
<body>
<h2>Sửa nhân viên</h2>

<form method="post" action="${pageContext.request.contextPath}/employees?action=edit">
    <input type="hidden" name="id" value="${employee.id}">
    Name: <input name="name" value="${employee.name}" required><br><br>
    Email: <input name="email" value="${employee.email}" required><br><br>
    Address: <input name="address" value="${employee.address}" required><br><br>
    <button type="submit">Update</button>
</form>

<p><a href="${pageContext.request.contextPath}/employees">Back</a></p>
</body>
</html>