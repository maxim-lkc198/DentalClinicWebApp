<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>DentaCare - User Management</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,500,600,700" rel="stylesheet">
    <link rel="stylesheet" href="../css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="../css/animate.css">
    <link rel="stylesheet" href="../css/owl.carousel.min.css">
    <link rel="stylesheet" href="../css/owl.theme.default.min.css">
    <link rel="stylesheet" href="../css/magnific-popup.css">
    <link rel="stylesheet" href="../css/aos.css">
    <link rel="stylesheet" href="../css/ionicons.min.css">
    <link rel="stylesheet" href="../css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="../css/jquery.timepicker.css">
    <link rel="stylesheet" href="../css/flaticon.css">
    <link rel="stylesheet" href="../css/icomoon.css">
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
    <div class="admin-wrapper">
        <!-- Sidebar -->
        <div class="admin-sidebar">
            <div class="sidebar-brand">DentaCare Admin</div>
            <ul class="sidebar-nav">
                <li><a href="dashboard.jsp">Dashboard</a></li>
                <li class="active"><a href="user-management.jsp">User Management</a></li>
                <li><a href="service-management.jsp">Service Management</a></li>
                <li><a href="medication-management.jsp">Medication Management</a></li>
                <li><a href="../logout.jsp">Logout</a></li>
            </ul>
        </div>

        <!-- Content -->
        <div class="admin-content">
            <div class="page-header">
                <h2>User Management</h2>
            </div>

            <!-- Search and Filter -->
            <div class="row mb-3">
                <div class="col-md-4">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search by Username or Email" id="searchInput">
                        <div class="input-group-append">
                            <button class="btn btn-primary" type="button">Search</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <select class="form-control" id="roleFilter">
                        <option value="">Filter by Role</option>
                        <option value="Admin">Admin</option>
                        <option value="Doctor">Doctor</option>
                        <option value="Receptionist">Receptionist</option>
                        <option value="Customer">Customer</option>
                    </select>
                </div>
                <div class="col-md-4">
                    <select class="form-control" id="statusFilter">
                        <option value="">Filter by Status</option>
                        <option value="Active">Active</option>
                        <option value="Inactive">Inactive</option>
                    </select>
                </div>
            </div>

            <!-- Add User Button -->
            <div class="mb-3">
                <a href="#" class="btn btn-action add" data-toggle="modal" data-target="#addUserModal">Add User</a>
            </div>

            <!-- User Table -->
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Username</th>
                        <th>Full Name</th>
                        <th>Email</th>
                        <th>Phone Number</th>
                        <th>Role</th>
                        <th>Status</th>
                        <th>Created Date</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>john_doe</td>
                        <td>John Doe</td>
                        <td>john@example.com</td>
                        <td>+1234567890</td>
                        <td>Admin</td>
                        <td><span class="badge badge-success">Active</span></td>
                        <td>2025-01-15</td>
                        <td>
                            <a href="#" class="btn btn-action edit" data-toggle="modal" data-target="#editUserModal" onclick="populateEditModal(1, 'john_doe', 'John Doe', 'john@example.com', '+1234567890', 'Admin', 'Active')">Edit</a>
                            <a href="#" class="btn btn-action delete">Delete</a>
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>jane_smith</td>
                        <td>Jane Smith</td>
                        <td>jane@example.com</td>
                        <td>+0987654321</td>
                        <td>Customer</td>
                        <td><span class="badge badge-danger">Inactive</span></td>
                        <td>2025-02-20</td>
                        <td>
                            <a href="#" class="btn btn-action edit" data-toggle="modal" data-target="#editUserModal" onclick="populateEditModal(2, 'jane_smith', 'Jane Smith', 'jane@example.com', '+0987654321', 'Customer', 'Inactive')">Edit</a>
                            <a href="#" class="btn btn-action delete">Delete</a>
                        </td>
                    </tr>
                    <!-- Thêm dữ liệu giả lập để minh họa phân trang -->
                    <tr>
                        <td>3</td>
                        <td>dr_nguyen</td>
                        <td>Dr. Nguyen</td>
                        <td>nguyen@example.com</td>
                        <td>+1122334455</td>
                        <td>Doctor</td>
                        <td><span class="badge badge-success">Active</span></td>
                        <td>2025-03-10</td>
                        <td>
                            <a href="#" class="btn btn-action edit" data-toggle="modal" data-target="#editUserModal" onclick="populateEditModal(3, 'dr_nguyen', 'Dr. Nguyen', 'nguyen@example.com', '+1122334455', 'Doctor', 'Active')">Edit</a>
                            <a href="#" class="btn btn-action delete">Delete</a>
                        </td>
                    </tr>
                </tbody>
            </table>

            <!-- Pagination -->
            <nav aria-label="Page navigation">
                <ul class="pagination justify-content-center">
                    <li class="page-item disabled">
                        <a class="page-link" href="#" tabindex="-1">Previous</a>
                    </li>
                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#">Next</a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>

    <!-- Modal for Adding User -->
    <div class="modal fade" id="addUserModal" tabindex="-1" role="dialog" aria-labelledby="addUserModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addUserModalLabel">Add New User</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="#" id="addUserForm">
                        <div class="form-group">
                            <label for="addUsername">Username <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="addUsername" name="username" placeholder="Enter username" required>
                        </div>
                        <div class="form-group">
                            <label for="addFullName">Full Name <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="addFullName" name="fullName" placeholder="Enter full name" required>
                        </div>
                        <div class="form-group">
                            <label for="addEmail">Email <span class="text-danger">*</span></label>
                            <input type="email" class="form-control" id="addEmail" name="email" placeholder="Enter email" required>
                        </div>
                        <div class="form-group">
                            <label for="addPhone">Phone Number</label>
                            <input type="text" class="form-control" id="addPhone" name="phone" placeholder="Enter phone number">
                        </div>
                        <div class="form-group">
                            <label for="addRole">Role <span class="text-danger">*</span></label>
                            <select class="form-control" id="addRole" name="role" required>
                                <option value="">Select Role</option>
                                <option value="Admin">Admin</option>
                                <option value="Doctor">Doctor</option>
                                <option value="Receptionist">Receptionist</option>
                                <option value="Customer">Customer</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="addStatus">Status <span class="text-danger">*</span></label>
                            <select class="form-control" id="addStatus" name="status" required>
                                <option value="Active">Active</option>
                                <option value="Inactive">Inactive</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="addPassword">Password <span class="text-danger">*</span></label>
                            <input type="password" class="form-control" id="addPassword" name="password" placeholder="Enter password" required>
                        </div>
                        <button type="submit" class="btn btn-primary">Add User</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for Editing User -->
    <div class="modal fade" id="editUserModal" tabindex="-1" role="dialog" aria-labelledby="editUserModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editUserModalLabel">Edit User</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="#" id="editUserForm">
                        <input type="hidden" id="editUserId" name="userId">
                        <div class="form-group">
                            <label for="editUsername">Username <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="editUsername" name="username" placeholder="Enter username" required>
                        </div>
                        <div class="form-group">
                            <label for="editFullName">Full Name <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="editFullName" name="fullName" placeholder="Enter full name" required>
                        </div>
                        <div class="form-group">
                            <label for="editEmail">Email <span class="text-danger">*</span></label>
                            <input type="email" class="form-control" id="editEmail" name="email" placeholder="Enter email" required>
                        </div>
                        <div class="form-group">
                            <label for="editPhone">Phone Number</label>
                            <input type="text" class="form-control" id="editPhone" name="phone" placeholder="Enter phone number">
                        </div>
                        <div class="form-group">
                            <label for="editRole">Role <span class="text-danger">*</span></label>
                            <select class="form-control" id="editRole" name="role" required>
                                <option value="Admin">Admin</option>
                                <option value="Doctor">Doctor</option>
                                <option value="Receptionist">Receptionist</option>
                                <option value="Customer">Customer</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="editStatus">Status <span class="text-danger">*</span></label>
                            <select class="form-control" id="editStatus" name="status" required>
                                <option value="Active">Active</option>
                                <option value="Inactive">Inactive</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary">Update User</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Scripts -->
    <script src="../js/jquery.min.js"></script>
    <script src="../js/jquery-migrate-3.0.1.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery.easing.1.3.js"></script>
    <script src="../js/jquery.waypoints.min.js"></script>
    <script src="../js/jquery.stellar.min.js"></script>
    <script src="../js/owl.carousel.min.js"></script>
    <script src="../js/jquery.magnific-popup.min.js"></script>
    <script src="../js/aos.js"></script>
    <script src="../js/jquery.animateNumber.min.js"></script>
    <script src="../js/bootstrap-datepicker.js"></script>
    <script src="../js/jquery.timepicker.min.js"></script>
    <script src="../js/scrollax.min.js"></script>
    <script src="../js/main.js"></script>

    <!-- Custom Script for Edit Modal -->
    <script>
        function populateEditModal(id, username, fullName, email, phone, role, status) {
            document.getElementById('editUserId').value = id;
            document.getElementById('editUsername').value = username;
            document.getElementById('editFullName').value = fullName;
            document.getElementById('editEmail').value = email;
            document.getElementById('editPhone').value = phone;
            document.getElementById('editRole').value = role;
            document.getElementById('editStatus').value = status;
        }
    </script>
</body>
</html>