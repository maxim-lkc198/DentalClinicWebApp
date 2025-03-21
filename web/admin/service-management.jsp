<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>DentaCare - Service Management</title>
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
                <li><a href="user-management.jsp">User Management</a></li>
                <li class="active"><a href="service-management.jsp">Service Management</a></li>
                <li><a href="medication-management.jsp">Medication Management</a></li>
                <li><a href="../logout.jsp">Logout</a></li>
            </ul>
        </div>

        <!-- Content -->
        <div class="admin-content">
            <div class="page-header">
                <h2>Service Management</h2>
            </div>

            <!-- Search and Filter -->
            <div class="row mb-3">
                <div class="col-md-6">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search by Service Name" id="searchInput">
                        <div class="input-group-append">
                            <button class="btn btn-primary" type="button">Search</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <select class="form-control" id="statusFilter">
                        <option value="">Filter by Status</option>
                        <option value="Active">Active</option>
                        <option value="Inactive">Inactive</option>
                    </select>
                </div>
            </div>

            <!-- Add Service Button -->
            <div class="mb-3">
                <a href="#" class="btn btn-action add" data-toggle="modal" data-target="#addServiceModal">Add Service</a>
            </div>

            <!-- Service Table -->
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Price</th>
                        <th>Duration (Minutes)</th>
                        <th>Status</th>
                        <th>Created Date</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Teeth Whitening</td>
                        <td>Professional teeth whitening service for a brighter smile.</td>
                        <td>$24.50</td>
                        <td>30</td>
                        <td><span class="badge badge-success">Active</span></td>
                        <td>2025-01-10</td>
                        <td>
                            <a href="#" class="btn btn-action edit" data-toggle="modal" data-target="#editServiceModal" onclick="populateEditModal(1, 'Teeth Whitening', 'Professional teeth whitening service for a brighter smile.', '24.50', '30', 'Active')">Edit</a>
                            <a href="#" class="btn btn-action delete">Delete</a>
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Teeth Cleaning</td>
                        <td>Deep cleaning to remove plaque and tartar.</td>
                        <td>$34.50</td>
                        <td>45</td>
                        <td><span class="badge badge-danger">Inactive</span></td>
                        <td>2025-02-15</td>
                        <td>
                            <a href="#" class="btn btn-action edit" data-toggle="modal" data-target="#editServiceModal" onclick="populateEditModal(2, 'Teeth Cleaning', 'Deep cleaning to remove plaque and tartar.', '34.50', '45', 'Inactive')">Edit</a>
                            <a href="#" class="btn btn-action delete">Delete</a>
                        </td>
                    </tr>
                    <!-- Thêm dữ liệu giả lập để minh họa phân trang -->
                    <tr>
                        <td>3</td>
                        <td>Quality Brackets</td>
                        <td>Orthodontic brackets for teeth alignment.</td>
                        <td>$50.00</td>
                        <td>60</td>
                        <td><span class="badge badge-success">Active</span></td>
                        <td>2025-03-20</td>
                        <td>
                            <a href="#" class="btn btn-action edit" data-toggle="modal" data-target="#editServiceModal" onclick="populateEditModal(3, 'Quality Brackets', 'Orthodontic brackets for teeth alignment.', '50.00', '60', 'Active')">Edit</a>
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

    <!-- Modal for Adding Service -->
    <div class="modal fade" id="addServiceModal" tabindex="-1" role="dialog" aria-labelledby="addServiceModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addServiceModalLabel">Add New Service</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="#" id="addServiceForm">
                        <div class="form-group">
                            <label for="addServiceName">Service Name <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="addServiceName" name="serviceName" placeholder="Enter service name" required>
                        </div>
                        <div class="form-group">
                            <label for="addDescription">Description</label>
                            <textarea class="form-control" id="addDescription" name="description" rows="3" placeholder="Enter description"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="addPrice">Price <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="addPrice" name="price" placeholder="Enter price" required>
                        </div>
                        <div class="form-group">
                            <label for="addDuration">Duration (Minutes) <span class="text-danger">*</span></label>
                            <input type="number" class="form-control" id="addDuration" name="duration" placeholder="Enter duration in minutes" required>
                        </div>
                        <div class="form-group">
                            <label for="addStatus">Status <span class="text-danger">*</span></label>
                            <select class="form-control" id="addStatus" name="status" required>
                                <option value="Active">Active</option>
                                <option value="Inactive">Inactive</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary">Add Service</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for Editing Service -->
    <div class="modal fade" id="editServiceModal" tabindex="-1" role="dialog" aria-labelledby="editServiceModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editServiceModalLabel">Edit Service</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="#" id="editServiceForm">
                        <input type="hidden" id="editServiceId" name="serviceId">
                        <div class="form-group">
                            <label for="editServiceName">Service Name <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="editServiceName" name="serviceName" placeholder="Enter service name" required>
                        </div>
                        <div class="form-group">
                            <label for="editDescription">Description</label>
                            <textarea class="form-control" id="editDescription" name="description" rows="3" placeholder="Enter description"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="editPrice">Price <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="editPrice" name="price" placeholder="Enter price" required>
                        </div>
                        <div class="form-group">
                            <label for="editDuration">Duration (Minutes) <span class="text-danger">*</span></label>
                            <input type="number" class="form-control" id="editDuration" name="duration" placeholder="Enter duration in minutes" required>
                        </div>
                        <div class="form-group">
                            <label for="editStatus">Status <span class="text-danger">*</span></label>
                            <select class="form-control" id="editStatus" name="status" required>
                                <option value="Active">Active</option>
                                <option value="Inactive">Inactive</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary">Update Service</button>
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
        function populateEditModal(id, name, description, price, duration, status) {
            document.getElementById('editServiceId').value = id;
            document.getElementById('editServiceName').value = name;
            document.getElementById('editDescription').value = description;
            document.getElementById('editPrice').value = price;
            document.getElementById('editDuration').value = duration;
            document.getElementById('editStatus').value = status;
        }
    </script>
</body>
</html>