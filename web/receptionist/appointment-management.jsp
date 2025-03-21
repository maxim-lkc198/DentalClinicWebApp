<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>DentaCare - Appointment Management</title>
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
                <li class="active"><a href="appointment-management.jsp">Appointment Management</a></li>
                <li><a href="customer-management.jsp">Customer Management</a></li>
                <li><a href="invoice.jsp">Invoice</a></li>
                <li><a href="../logout.jsp">Logout</a></li>
            </ul>
        </div>

        <!-- Content -->
        <div class="admin-content receptionist-content">
            <div class="page-header">
                <h2>Appointment Management</h2>
            </div>

            <!-- Search and Filter -->
            <div class="row mb-3">
                <div class="col-md-4">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search by Customer Name" id="searchInput">
                        <div class="input-group-append">
                            <button class="btn btn-primary" type="button">Search</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <select class="form-control" id="statusFilter">
                        <option value="">Filter by Status</option>
                        <option value="Confirmed">Confirmed</option>
                        <option value="Pending">Pending</option>
                        <option value="Cancelled">Cancelled</option>
                        <option value="Completed">Completed</option>
                    </select>
                </div>
                <div class="col-md-4">
                    <input type="text" class="form-control appointment_date" id="dateFilter" placeholder="Filter by Date">
                </div>
            </div>

            <!-- Add Appointment Button -->
            <div class="mb-3">
                <a href="#" class="btn btn-action add" data-toggle="modal" data-target="#addAppointmentModal">Add Appointment</a>
            </div>

            <!-- Appointment Table -->
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Customer Name</th>
                        <th>Doctor Name</th>
                        <th>Date</th>
                        <th>Time</th>
                        <th>Service</th>
                        <th>Notes</th>
                        <th>Status</th>
                        <th>Created Date</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>John Doe</td>
                        <td>Dr. Nguyen</td>
                        <td>2025-03-20</td>
                        <td>10:00 AM</td>
                        <td>Teeth Whitening</td>
                        <td>Please ensure minimal sensitivity.</td>
                        <td><span class="badge badge-success">Confirmed</span></td>
                        <td>2025-03-15</td>
                        <td>
                            <a href="#" class="btn btn-action edit" data-toggle="modal" data-target="#editAppointmentModal" onclick="populateEditModal(1, 'John Doe', 'Dr. Nguyen', '2025-03-20', '10:00 AM', 'Teeth Whitening', 'Please ensure minimal sensitivity.', 'Confirmed')">Edit</a>
                            <a href="#" class="btn btn-action delete" onclick="confirmDelete(1)">Delete</a>
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Jane Smith</td>
                        <td>Dr. Tran</td>
                        <td>2025-03-20</td>
                        <td>11:00 AM</td>
                        <td>Teeth Cleaning</td>
                        <td>No specific requests.</td>
                        <td><span class="badge badge-warning">Pending</span></td>
                        <td>2025-03-16</td>
                        <td>
                            <a href="#" class="btn btn-action edit" data-toggle="modal" data-target="#editAppointmentModal" onclick="populateEditModal(2, 'Jane Smith', 'Dr. Tran', '2025-03-20', '11:00 AM', 'Teeth Cleaning', 'No specific requests.', 'Pending')">Edit</a>
                            <a href="#" class="btn btn-action delete" onclick="confirmDelete(2)">Delete</a>
                        </td>
                    </tr>
                    <!-- Thêm dữ liệu giả lập để minh họa phân trang -->
                    <tr>
                        <td>3</td>
                        <td>Michael Brown</td>
                        <td>Dr. Nguyen</td>
                        <td>2025-03-21</td>
                        <td>09:00 AM</td>
                        <td>Quality Brackets</td>
                        <td>Check alignment issues.</td>
                        <td><span class="badge badge-danger">Cancelled</span></td>
                        <td>2025-03-17</td>
                        <td>
                            <a href="#" class="btn btn-action edit" data-toggle="modal" data-target="#editAppointmentModal" onclick="populateEditModal(3, 'Michael Brown', 'Dr. Nguyen', '2025-03-21', '09:00 AM', 'Quality Brackets', 'Check alignment issues.', 'Cancelled')">Edit</a>
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

    <!-- Modal for Adding Appointment -->
    <div class="modal fade" id="addAppointmentModal" tabindex="-1" role="dialog" aria-labelledby="addAppointmentModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addAppointmentModalLabel">Add New Appointment</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="#" id="addAppointmentForm">
                        <div class="form-group">
                            <label for="addCustomerName">Customer Name <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="addCustomerName" name="customerName" placeholder="Enter customer name" required>
                        </div>
                        <div class="form-group">
                            <label for="addDoctorName">Doctor Name <span class="text-danger">*</span></label>
                            <select class="form-control" id="addDoctorName" name="doctorName" required>
                                <option value="">Select Doctor</option>
                                <option value="Dr. Nguyen">Dr. Nguyen</option>
                                <option value="Dr. Tran">Dr. Tran</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="addAppointmentDate">Date <span class="text-danger">*</span></label>
                            <input type="text" class="form-control appointment_date" id="addAppointmentDate" name="appointmentDate" placeholder="Select date" required>
                        </div>
                        <div class="form-group">
                            <label for="addAppointmentTime">Time <span class="text-danger">*</span></label>
                            <input type="text" class="form-control appointment_time" id="addAppointmentTime" name="appointmentTime" placeholder="Select time" required>
                        </div>
                        <div class="form-group">
                            <label for="addService">Service <span class="text-danger">*</span></label>
                            <select class="form-control" id="addService" name="service" required>
                                <option value="">Select Service</option>
                                <option value="Teeth Whitening">Teeth Whitening</option>
                                <option value="Teeth Cleaning">Teeth Cleaning</option>
                                <option value="Quality Brackets">Quality Brackets</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="addNotes">Notes</label>
                            <textarea class="form-control" id="addNotes" name="notes" rows="3" placeholder="Enter notes (e.g., special requests)"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="addStatus">Status <span class="text-danger">*</span></label>
                            <select class="form-control" id="addStatus" name="status" required>
                                <option value="Pending">Pending</option>
                                <option value="Confirmed">Confirmed</option>
                                <option value="Cancelled">Cancelled</option>
                                <option value="Completed">Completed</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary">Add Appointment</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for Editing Appointment -->
    <div class="modal fade" id="editAppointmentModal" tabindex="-1" role="dialog" aria-labelledby="editAppointmentModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editAppointmentModalLabel">Edit Appointment</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="#" id="editAppointmentForm">
                        <input type="hidden" id="editAppointmentId" name="appointmentId">
                        <div class="form-group">
                            <label for="editCustomerName">Customer Name <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="editCustomerName" name="customerName" placeholder="Enter customer name" required>
                        </div>
                        <div class="form-group">
                            <label for="editDoctorName">Doctor Name <span class="text-danger">*</span></label>
                            <select class="form-control" id="editDoctorName" name="doctorName" required>
                                <option value="Dr. Nguyen">Dr. Nguyen</option>
                                <option value="Dr. Tran">Dr. Tran</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="editAppointmentDate">Date <span class="text-danger">*</span></label>
                            <input type="text" class="form-control appointment_date" id="editAppointmentDate" name="appointmentDate" placeholder="Select date" required>
                        </div>
                        <div class="form-group">
                            <label for="editAppointmentTime">Time <span class="text-danger">*</span></label>
                            <input type="text" class="form-control appointment_time" id="editAppointmentTime" name="appointmentTime" placeholder="Select time" required>
                        </div>
                        <div class="form-group">
                            <label for="editService">Service <span class="text-danger">*</span></label>
                            <select class="form-control" id="editService" name="service" required>
                                <option value="Teeth Whitening">Teeth Whitening</option>
                                <option value="Teeth Cleaning">Teeth Cleaning</option>
                                <option value="Quality Brackets">Quality Brackets</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="editNotes">Notes</label>
                            <textarea class="form-control" id="editNotes" name="notes" rows="3" placeholder="Enter notes (e.g., special requests)"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="editStatus">Status <span class="text-danger">*</span></label>
                            <select class="form-control" id="editStatus" name="status" required>
                                <option value="Pending">Pending</option>
                                <option value="Confirmed">Confirmed</option>
                                <option value="Cancelled">Cancelled</option>
                                <option value="Completed">Completed</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary">Update Appointment</button>
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
        function populateEditModal(id, customerName, doctorName, date, time, service, notes, status) {
            document.getElementById('editAppointmentId').value = id;
            document.getElementById('editCustomerName').value = customerName;
            document.getElementById('editDoctorName').value = doctorName;
            document.getElementById('editAppointmentDate').value = date;
            document.getElementById('editAppointmentTime').value = time;
            document.getElementById('editService').value = service;
            document.getElementById('editNotes').value = notes;
            document.getElementById('editStatus').value = status;
        }

        function confirmDelete(id) {
            if (confirm('Are you sure you want to delete this appointment (ID: ' + id + ')?')) {
                // Logic to delete the appointment (e.g., redirect to a servlet or send an AJAX request)
                alert('Appointment with ID ' + id + ' has been deleted.');
            }
        }
    </script>
</body>
</html>