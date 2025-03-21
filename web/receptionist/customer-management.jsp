<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>DentaCare - Customer Management</title>
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
        <div class="receptionist-sidebar">
            <div class="sidebar-brand">DentaCare Receptionist</div>
            <ul class="sidebar-nav">
                <li><a href="dashboard.jsp">Dashboard</a></li>
                <li><a href="appointment-management.jsp">Appointment Management</a></li>
                <li class="active"><a href="customer-management.jsp">Customer Management</a></li>
                <li><a href="invoice.jsp">Invoice</a></li>
                <li><a href="../logout.jsp">Logout</a></li>
            </ul>
        </div>

        <!-- Content -->
        <div class="admin-content receptionist-content">
            <div class="page-header">
                <h2>Customer Management</h2>
            </div>

            <!-- Search and Filter -->
            <div class="row mb-3">
                <div class="col-md-6">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search by Customer Name" id="searchInput">
                        <div class="input-group-append">
                            <button class="btn btn-primary" type="button">Search</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <select class="form-control" id="genderFilter">
                        <option value="">Filter by Gender</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                        <option value="Other">Other</option>
                    </select>
                </div>
            </div>

            <!-- Add Customer Button -->
            <div class="mb-3">
                <a href="#" class="btn btn-action add" data-toggle="modal" data-target="#addCustomerModal">Add Customer</a>
            </div>

            <!-- Customer Table -->
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Address</th>
                        <th>Date of Birth</th>
                        <th>Gender</th>
                        <th>Created Date</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>John Doe</td>
                        <td>john@example.com</td>
                        <td>123-456-7890</td>
                        <td>123 Main St</td>
                        <td>1990-05-15</td>
                        <td>Male</td>
                        <td>2025-03-10</td>
                        <td>
                            <a href="#" class="btn btn-action edit" data-toggle="modal" data-target="#editCustomerModal" onclick="populateEditModal(1, 'John Doe', 'john@example.com', '123-456-7890', '123 Main St', '1990-05-15', 'Male')">Edit</a>
                            <a href="#" class="btn btn-action delete" onclick="confirmDelete(1)">Delete</a>
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Jane Smith</td>
                        <td>jane@example.com</td>
                        <td>987-654-3210</td>
                        <td>456 Oak Ave</td>
                        <td>1985-08-22</td>
                        <td>Female</td>
                        <td>2025-03-12</td>
                        <td>
                            <a href="#" class="btn btn-action edit" data-toggle="modal" data-target="#editCustomerModal" onclick="populateEditModal(2, 'Jane Smith', 'jane@example.com', '987-654-3210', '456 Oak Ave', '1985-08-22', 'Female')">Edit</a>
                            <a href="#" class="btn btn-action delete" onclick="confirmDelete(2)">Delete</a>
                        </td>
                    </tr>
                    <!-- Thêm dữ liệu giả lập để minh họa phân trang -->
                    <tr>
                        <td>3</td>
                        <td>Michael Brown</td>
                        <td>michael@example.com</td>
                        <td>555-123-4567</td>
                        <td>789 Pine Rd</td>
                        <td>1992-11-30</td>
                        <td>Male</td>
                        <td>2025-03-15</td>
                        <td>
                            <a href="#" class="btn btn-action edit" data-toggle="modal" data-target="#editCustomerModal" onclick="populateEditModal(3, 'Michael Brown', 'michael@example.com', '555-123-4567', '789 Pine Rd', '1992-11-30', 'Male')">Edit</a>
                            <a href="#" class="btn btn-action delete" onclick="confirmDelete(3)">Delete</a>
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

    <!-- Modal for Adding Customer -->
    <div class="modal fade" id="addCustomerModal" tabindex="-1" role="dialog" aria-labelledby="addCustomerModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addCustomerModalLabel">Add New Customer</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="#" id="addCustomerForm">
                        <div class="form-group">
                            <label for="addCustomerName">Name <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="addCustomerName" name="customerName" placeholder="Enter customer name" required>
                        </div>
                        <div class="form-group">
                            <label for="addEmail">Email <span class="text-danger">*</span></label>
                            <input type="email" class="form-control" id="addEmail" name="email" placeholder="Enter email" required>
                        </div>
                        <div class="form-group">
                            <label for="addPhone">Phone <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="addPhone" name="phone" placeholder="Enter phone number" required>
                        </div>
                        <div class="form-group">
                            <label for="addAddress">Address</label>
                            <input type="text" class="form-control" id="addAddress" name="address" placeholder="Enter address">
                        </div>
                        <div class="form-group">
                            <label for="addDob">Date of Birth <span class="text-danger">*</span></label>
                            <input type="text" class="form-control appointment_date" id="addDob" name="dob" placeholder="Select date of birth" required>
                        </div>
                        <div class="form-group">
                            <label for="addGender">Gender <span class="text-danger">*</span></label>
                            <select class="form-control" id="addGender" name="gender" required>
                                <option value="">Select Gender</option>
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                                <option value="Other">Other</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary">Add Customer</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for Editing Customer -->
    <div class="modal fade" id="editCustomerModal" tabindex="-1" role="dialog" aria-labelledby="editCustomerModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editCustomerModalLabel">Edit Customer</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="#" id="editCustomerForm">
                        <input type="hidden" id="editCustomerId" name="customerId">
                        <div class="form-group">
                            <label for="editCustomerName">Name <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="editCustomerName" name="customerName" placeholder="Enter customer name" required>
                        </div>
                        <div class="form-group">
                            <label for="editEmail">Email <span class="text-danger">*</span></label>
                            <input type="email" class="form-control" id="editEmail" name="email" placeholder="Enter email" required>
                        </div>
                        <div class="form-group">
                            <label for="editPhone">Phone <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="editPhone" name="phone" placeholder="Enter phone number" required>
                        </div>
                        <div class="form-group">
                            <label for="editAddress">Address</label>
                            <input type="text" class="form-control" id="editAddress" name="address" placeholder="Enter address">
                        </div>
                        <div class="form-group">
                            <label for="editDob">Date of Birth <span class="text-danger">*</span></label>
                            <input type="text" class="form-control appointment_date" id="editDob" name="dob" placeholder="Select date of birth" required>
                        </div>
                        <div class="form-group">
                            <label for="editGender">Gender <span class="text-danger">*</span></label>
                            <select class="form-control" id="editGender" name="gender" required>
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                                <option value="Other">Other</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary">Update Customer</button>
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

    <!-- Custom Script for Edit Modal and Delete Confirmation -->
    <script>
        function populateEditModal(id, name, email, phone, address, dob, gender) {
            document.getElementById('editCustomerId').value = id;
            document.getElementById('editCustomerName').value = name;
            document.getElementById('editEmail').value = email;
            document.getElementById('editPhone').value = phone;
            document.getElementById('editAddress').value = address;
            document.getElementById('editDob').value = dob;
            document.getElementById('editGender').value = gender;
        }

        function confirmDelete(id) {
            if (confirm('Are you sure you want to delete this customer (ID: ' + id + ')?')) {
                // Logic to delete the customer (e.g., redirect to a servlet or send an AJAX request)
                alert('Customer with ID ' + id + ' has been deleted.');
            }
        }
    </script>
</body>
</html>