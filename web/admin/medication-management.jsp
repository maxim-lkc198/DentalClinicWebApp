<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>DentaCare - Medication Management</title>
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
                <li><a href="service-management.jsp">Service Management</a></li>
                <li class="active"><a href="medication-management.jsp">Medication Management</a></li>
                <li><a href="../logout.jsp">Logout</a></li>
            </ul>
        </div>

        <!-- Content -->
        <div class="admin-content">
            <div class="page-header">
                <h2>Medication Management</h2>
            </div>

            <!-- Search and Filter -->
            <div class="row mb-3">
                <div class="col-md-4">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search by Medication Name" id="searchInput">
                        <div class="input-group-append">
                            <button class="btn btn-primary" type="button">Search</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <select class="form-control" id="statusFilter">
                        <option value="">Filter by Status</option>
                        <option value="Active">Active</option>
                        <option value="Inactive">Inactive</option>
                    </select>
                </div>
                <div class="col-md-4">
                    <select class="form-control" id="stockFilter">
                        <option value="">Filter by Stock</option>
                        <option value="Low">Low Stock (≤ 10)</option>
                        <option value="InStock">In Stock (> 10)</option>
                    </select>
                </div>
            </div>

            <!-- Add Medication Button -->
            <div class="mb-3">
                <a href="#" class="btn btn-action add" data-toggle="modal" data-target="#addMedicationModal">Add Medication</a>
            </div>

            <!-- Medication Table -->
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Status</th>
                        <th>Created Date</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Paracetamol</td>
                        <td>Pain reliever and fever reducer.</td>
                        <td>$5.00</td>
                        <td>50</td>
                        <td><span class="badge badge-success">Active</span></td>
                        <td>2025-01-12</td>
                        <td>
                            <a href="#" class="btn btn-action edit" data-toggle="modal" data-target="#editMedicationModal" onclick="populateEditModal(1, 'Paracetamol', 'Pain reliever and fever reducer.', '5.00', '50', 'Active')">Edit</a>
                            <a href="#" class="btn btn-action delete">Delete</a>
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Amoxicillin</td>
                        <td>Antibiotic for bacterial infections.</td>
                        <td>$10.00</td>
                        <td>8</td>
                        <td><span class="badge badge-danger">Inactive</span></td>
                        <td>2025-02-18</td>
                        <td>
                            <a href="#" class="btn btn-action edit" data-toggle="modal" data-target="#editMedicationModal" onclick="populateEditModal(2, 'Amoxicillin', 'Antibiotic for bacterial infections.', '10.00', '8', 'Inactive')">Edit</a>
                            <a href="#" class="btn btn-action delete">Delete</a>
                        </td>
                    </tr>
                    <!-- Thêm dữ liệu giả lập để minh họa phân trang -->
                    <tr>
                        <td>3</td>
                        <td>Ibuprofen</td>
                        <td>Anti-inflammatory drug for pain relief.</td>
                        <td>$7.50</td>
                        <td>20</td>
                        <td><span class="badge badge-success">Active</span></td>
                        <td>2025-03-25</td>
                        <td>
                            <a href="#" class="btn btn-action edit" data-toggle="modal" data-target="#editMedicationModal" onclick="populateEditModal(3, 'Ibuprofen', 'Anti-inflammatory drug for pain relief.', '7.50', '20', 'Active')">Edit</a>
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

    <!-- Modal for Adding Medication -->
    <div class="modal fade" id="addMedicationModal" tabindex="-1" role="dialog" aria-labelledby="addMedicationModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addMedicationModalLabel">Add New Medication</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="#" id="addMedicationForm">
                        <div class="form-group">
                            <label for="addMedicationName">Medication Name <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="addMedicationName" name="medicationName" placeholder="Enter medication name" required>
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
                            <label for="addQuantity">Quantity <span class="text-danger">*</span></label>
                            <input type="number" class="form-control" id="addQuantity" name="quantity" placeholder="Enter quantity" required>
                        </div>
                        <div class="form-group">
                            <label for="addStatus">Status <span class="text-danger">*</span></label>
                            <select class="form-control" id="addStatus" name="status" required>
                                <option value="Active">Active</option>
                                <option value="Inactive">Inactive</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary">Add Medication</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for Editing Medication -->
    <div class="modal fade" id="editMedicationModal" tabindex="-1" role="dialog" aria-labelledby="editMedicationModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editMedicationModalLabel">Edit Medication</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="#" id="editMedicationForm">
                        <input type="hidden" id="editMedicationId" name="medicationId">
                        <div class="form-group">
                            <label for="editMedicationName">Medication Name <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="editMedicationName" name="medicationName" placeholder="Enter medication name" required>
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
                            <label for="editQuantity">Quantity <span class="text-danger">*</span></label>
                            <input type="number" class="form-control" id="editQuantity" name="quantity" placeholder="Enter quantity" required>
                        </div>
                        <div class="form-group">
                            <label for="editStatus">Status <span class="text-danger">*</span></label>
                            <select class="form-control" id="editStatus" name="status" required>
                                <option value="Active">Active</option>
                                <option value="Inactive">Inactive</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary">Update Medication</button>
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
        function populateEditModal(id, name, description, price, quantity, status) {
            document.getElementById('editMedicationId').value = id;
            document.getElementById('editMedicationName').value = name;
            document.getElementById('editDescription').value = description;
            document.getElementById('editPrice').value = price;
            document.getElementById('editQuantity').value = quantity;
            document.getElementById('editStatus').value = status;
        }
    </script>
</body>
</html>