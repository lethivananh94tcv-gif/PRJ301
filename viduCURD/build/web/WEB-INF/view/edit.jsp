<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="model.Employee" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Employee</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-4">

    <%
        Employee e = (Employee) request.getAttribute("employee");
        if (e == null) {
    %>
        <div class="alert alert-danger">
            Không tìm thấy nhân viên.
        </div>
        <a class="btn btn-secondary" href="<%= request.getContextPath() %>/EmployeeServlet">Back</a>
    <%
        } else {
    %>

    <div class="card shadow-sm">
        <div class="card-header bg-warning">
            <h4 class="m-0">Sửa nhân viên</h4>
        </div>
        <div class="card-body">
            <form method="post" action="<%= request.getContextPath() %>/EmployeeServlet?action=edit" class="row g-3">

                <div class="col-md-2">
                    <label class="form-label">ID</label>
                    <input type="number" class="form-control" name="id" value="<%= e.getId() %>" readonly>
                </div>

                <div class="col-md-5">
                    <label class="form-label">Name</label>
                    <input class="form-control" name="name" value="<%= e.getName() %>" required>
                </div>

                <div class="col-md-5">
                    <label class="form-label">Email</label>
                    <input type="email" class="form-control" name="email" value="<%= e.getEmail() %>" required>
                </div>

                <div class="col-12">
                    <label class="form-label">Address</label>
                    <input class="form-control" name="address" value="<%= e.getAddress() %>" required>
                </div>

                <div class="col-12 d-flex gap-2">
                    <button class="btn btn-warning" type="submit">Update</button>
                    <a class="btn btn-secondary" href="<%= request.getContextPath() %>/EmployeeServlet">Back</a>
                </div>
            </form>
        </div>
    </div>

    <%
        }
    %>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>