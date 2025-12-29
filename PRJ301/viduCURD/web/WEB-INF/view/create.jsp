<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Employee</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-4">

    <div class="card shadow-sm">
        <div class="card-header bg-success text-white">
            <h4 class="m-0">Thêm nhân viên</h4>
        </div>
        <div class="card-body">
            <form method="post" action="<%= request.getContextPath() %>/EmployeeServlet?action=create" class="row g-3">

                <div class="col-md-2">
                    <label class="form-label">ID</label>
                    <input name="id" type="number" class="form-control" required>
                </div>

                <div class="col-md-5">
                    <label class="form-label">Name</label>
                    <input name="name" class="form-control" required>
                </div>

                <div class="col-md-5">
                    <label class="form-label">Email</label>
                    <input name="email" type="email" class="form-control" required>
                </div>

                <div class="col-12">
                    <label class="form-label">Address</label>
                    <input name="address" class="form-control" required>
                </div>

                <div class="col-12 d-flex gap-2">
                    <button class="btn btn-success" type="submit">Save</button>
                    <a class="btn btn-secondary" href="<%= request.getContextPath() %>/EmployeeServlet">Back</a>
                </div>
            </form>
        </div>
    </div>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>