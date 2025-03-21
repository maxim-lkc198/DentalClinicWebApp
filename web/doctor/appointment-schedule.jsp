<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>DentaCare - Appointment Schedule</title>
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
        <div class="doctor-sidebar">
            <div class="sidebar-brand">DentaCare Doctor</div>
            <ul class="sidebar-nav">
                <li><a href="dashboard.jsp">Dashboard</a></li>
                <li class="active"><a href="appointment-schedule.jsp">Appointment Schedule</a></li>
                <li><a href="medical-record.jsp">Medical Record</a></li>
                <li><a href="prescription.jsp">Prescription</a></li>
                <li><a href="../logout.jsp">Logout</a></li>
            </ul>
        </div>

        <!-- Content -->
        <div class="admin-content doctor-content">
            <div class="page-header">
                <h2>Appointment Schedule</h2>
            </div>

            <!-- Search and Filter -->
            <div class="row mb-3">
                <div class="col-md-4">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search by Patient Name" id="searchInput">
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

            <!-- Appointment Table -->
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Patient Name</th>
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
                            <a href="#" class="btn btn-action edit" data-toggle="modal" data-target="#viewAppointmentModal" onclick="populateViewModal(1, 'John Doe', 'Dr. Nguyen', '2025-03-20', '10:00 AM', 'Teeth Whitening', 'Please ensure minimal sensitivity.', 'Confirmed')">View</a>
                            <a href="#" class="btn btn-action add" data-toggle="modal" data-target="#updateStatusModal" onclick="populateStatusModal(1, 'Confirmed')">Update Status</a>
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
                            <a href="#" class="btn btn-action edit" data-toggle="modal" data-target="#viewAppointmentModal" onclick="populateViewModal(2, 'Jane Smith', 'Dr. Tran', '2025-03-20', '11:00 AM', 'Teeth Cleaning', 'No specific requests.', 'Pending')">View</a>
                            <a href="#" class="btn btn-action add" data-toggle="modal" data-target="#updateStatusModal" onclick="populateStatusModal(2, 'Pending')">Update Status</a>
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
                            <a href="#" class="btn btn-action edit" data-toggle="modal" data-target="#viewAppointmentModal" onclick="populateViewModal(3, 'Michael Brown', 'Dr. Nguyen', '2025-03-21', '09:00 AM', 'Quality Brackets', 'Check alignment issues.', 'Cancelled')">View</a>
                            <a href="#" class="btn btn-action add" data-toggle="modal" data-target="#updateStatusModal" onclick="populateStatusModal(3, 'Cancelled')">Update Status</a>
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

    <!-- Modal for Viewing Appointment -->
    <div class="modal fade" id="viewAppointmentModal" tabindex="-1" role="dialog" aria-labelledby="viewAppointmentModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="viewAppointmentModalLabel">Appointment Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p><strong>ID:</strong> <span id="viewAppointmentId"></span></p>
                    <p><strong>Patient Name:</strong> <span id="viewPatientName"></span></p>
                    <p><strong>Doctor Name:</strong> <span id="viewDoctorName"></span></p>
                    <p><strong>Date:</strong> <span id="viewDate"></span></p>
                    <p><strong>Time:</strong> <span id="viewTime"></span></p>
                    <p><strong>Service:</strong> <span id="viewService"></span></p>
                    <p><strong>Notes:</strong> <span id="viewNotes"></span></p>
                    <p><strong>Status:</strong> <span id="viewStatus"></span></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for Updating Status -->
    <div class="modal fade" id="updateStatusModal" tabindex="-1" role="dialog" aria-labelledby="updateStatusModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="updateStatusModalLabel">Update Appointment Status</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="#" id="updateStatusForm">
                        <input type="hidden" id="updateAppointmentId" name="appointmentId">
                        <div class="form-group">
                            <label for="updateStatus">Status <span class="text-danger">*</span></label>
                            <select class="form-control" id="updateStatus" name="status" required>
                                <option value="Confirmed">Confirmed</option>
                                <option value="Pending">Pending</option>
                                <option value="Cancelled">Cancelled</option>
                                <option value="Completed">Completed</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary">Update Status</button>
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

    <!-- Custom Script for Modals -->
    <script>
        function populateViewModal(id, patientName, doctorName, date, time, service, notes, status) {
            document.getElementById('viewAppointmentId').textContent = id;
            document.getElementById('viewPatientName').textContent = patientName;
            document.getElementById('viewDoctorName').textContent = doctorName;
            document.getElementById('viewDate').textContent = date;
            document.getElementById('viewTime').textContent = time;
            document.getElementById('viewService').textContent = service;
            document.getElementById('viewNotes').textContent = notes;
            document.getElementById('viewStatus').textContent = status;
        }

        function populateStatusModal(id, status) {
            document.getElementById('updateAppointmentId').value = id;
            document.getElementById('updateStatus').value = status;
        }
    </script>
</body>
</html>