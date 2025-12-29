<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="model.Employee" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Detail</title>
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
        <div class="card-header bg-info text-white">
            <h4 class="m-0">Chi tiết nhân viên</h4>
        </div>
        <div class="card-body">
            <dl class="row mb-0">
                <dt class="col-sm-3">ID</dt>
                <dd class="col-sm-9"><%= e.getId() %></dd>

                <dt class="col-sm-3">Name</dt>
                <dd class="col-sm-9"><%= e.getName() %></dd>

                <dt class="col-sm-3">Email</dt>
                <dd class="col-sm-9"><%= e.getEmail() %></dd>

                <dt class="col-sm-3">Address</dt>
                <dd class="col-sm-9"><%= e.getAddress() %></dd>
            </dl>
        </div>
        <div class="card-footer d-flex gap-2">
            <a class="btn btn-secondary" href="<%= request.getContextPath() %>/EmployeeServlet">Back</a>
            <a class="btn btn-warning"
               href="<%= request.getContextPath() %>/EmployeeServlet?action=edit&id=<%= e.getId() %>">Edit</a>
        </div>
    </div>

    <%
        }
    %>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>