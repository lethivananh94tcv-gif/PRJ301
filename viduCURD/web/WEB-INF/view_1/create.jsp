<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Employee</title>
</head>
<body>
<h2>Thêm nhân viên</h2>

<form method="post" action="${pageContext.request.contextPath}/employees?action=create">
    ID: <input name="id" required><br><br>
    Name: <input name="name" required><br><br>
    Email: <input name="email" required><br><br>
    Address: <input name="address" required><br><br>
    <button type="submit">Save</button>
</form>

<p><a href="${pageContext.request.contextPath}/employees">Back</a></p>
</body>
</html>