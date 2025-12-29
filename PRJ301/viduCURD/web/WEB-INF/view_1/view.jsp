<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Detail</title>
</head>
<body>
<h2>Chi tiết nhân viên</h2>

<p><b>ID:</b> ${employee.id}</p>
<p><b>Name:</b> ${employee.name}</p>
<p><b>Email:</b> ${employee.email}</p>
<p><b>Address:</b> ${employee.address}</p>

<p><a href="${pageContext.request.contextPath}/employees">Back</a></p>
</body>
</html>