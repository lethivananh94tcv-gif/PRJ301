

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Employee" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee List</title>

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">
</head>

<body>
<div class="container mt-4">

    <h2 class="mb-3 text-primary">Danh sách nhân viên</h2>

    <p>
        <a href="<%= request.getContextPath() %>/EmployeeServlet?action=create"
           class="btn btn-success">
            + Thêm mới
        </a>
    </p>

    <table class="table table-bordered table-hover">
        <thead class="table-dark">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Address</th>
            <th style="width: 180px">Action</th>
        </tr>
        </thead>

        <tbody>
        <%
            List<Employee> employees = (List<Employee>) request.getAttribute("employees");
            if (employees != null) {
                for (Employee e : employees) {
        %>
        <tr>
            <td><%= e.getId() %></td>
            <td><%= e.getName() %></td>
            <td><%= e.getEmail() %></td>
            <td><%= e.getAddress() %></td>
            <td>
                <a class="btn btn-info btn-sm"
                   href="<%= request.getContextPath() %>/EmployeeServlet?action=view&id=<%= e.getId() %>">
                    View
                </a>

                <a class="btn btn-warning btn-sm"
                   href="<%= request.getContextPath() %>/EmployeeServlet?action=edit&id=<%= e.getId() %>">
                    Edit
                </a>

                <a class="btn btn-danger btn-sm"
                   href="<%= request.getContextPath() %>/EmployeeServlet?action=delete&id=<%= e.getId() %>"
                   onclick="return confirm('Xoá nhân viên này?');">
                    Delete
                </a>
            </td>
        </tr>
        <%
                }
            }
        %>
        </tbody>
    </table>

</div>

<!-- Bootstrap JS (optional) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
