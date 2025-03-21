<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>DentaCare - Medical Record</title>
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
                <li><a href="appointment-schedule.jsp">Appointment Schedule</a></li>
                <li class="active"><a href="medical-record.jsp">Medical Record</a></li>
                <li><a href="prescription.jsp">Prescription</a></li>
                <li><a href="../logout.jsp">Logout</a></li>
            </ul>
        </div>

        <!-- Content -->
        <div class="admin-content doctor-content">
            <div class="page-header">
                <h2>Medical Record</h2>
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
                    <input type="text" class="form-control appointment_date" id="dateFilter" placeholder="Filter by Date">
                </div>
                <div class="col-md-4">
                    <select class="form-control" id="doctorFilter">
                        <option value="">Filter by Doctor</option>
                        <option value="Dr. Nguyen">Dr. Nguyen</option>
                        <option value="Dr. Tran">Dr. Tran</option>
                    </select>
                </div>
            </div>

            <!-- Add Medical Record Button -->
            <div class="mb-3">
                <a href="#" class="btn btn-action add" data-toggle="modal" data-target="#addMedicalRecordModal">Add Record</a>
            </div>

            <!-- Medical Record Table -->
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Record ID</th>
                        <th>Patient Name</th>
                        <th>Doctor Name</th>
                        <th>Date</th>
                        <th>Diagnosis</th>
                        <th>Treatment</th>
                        <th>Notes</th>
                        <th>Last Updated</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>MR001</td>
                        <td>John Doe</td>
                        <td>Dr. Nguyen</td>
                        <td>2025-03-20</td>
                        <td>Caries</td>
                        <td>Filling</td>
                        <td>Patient responded well to treatment.</td>
                        <td>2025-03-21</td>
                        <td>
                            <a href="#" class="btn btn-action edit" data-toggle="modal" data-target="#viewMedicalRecordModal" onclick="populateViewModal('MR001', 'John Doe', 'Dr. Nguyen', '2025-03-20', 'Caries', 'Filling', 'Patient responded well to treatment.')">View</a>
                            <a href="#" class="btn btn-action add" data-toggle="modal" data-target="#editMedicalRecordModal" onclick="populateEditModal('MR001', 'John Doe', 'Dr. Nguyen', '2025-03-20', 'Caries', 'Filling', 'Patient responded well to treatment.')">Edit</a>
                        </td>
                    </tr>
                    <tr>
                        <td>MR002</td>
                        <td>Jane Smith</td>
                        <td>Dr. Tran</td>
                        <td>2025-03-20</td>
                        <td>Gingivitis</td>
                        <td>Scaling</td>
                        <td>Recommend follow-up in 2 weeks.</td>
                        <td>2025-03-22</td>
                        <td>
                            <a href="#" class="btn btn-action edit" data-toggle="modal" data-target="#viewMedicalRecordModal" onclick="populateViewModal('MR002', 'Jane Smith', 'Dr. Tran', '2025-03-20', 'Gingivitis', 'Scaling', 'Recommend follow-up in 2 weeks.')">View</a>
                            <a href="#" class="btn btn-action add" data-toggle="modal" data-target="#editMedicalRecordModal" onclick="populateEditModal('MR002', 'Jane Smith', 'Dr. Tran', '2025-03-20', 'Gingivitis', 'Scaling', 'Recommend follow-up in 2 weeks.')">Edit</a>
                        </td>
                    </tr>
                    <!-- Thêm dữ liệu giả lập để minh họa phân trang -->
                    <tr>
                        <td>MR003</td>
                        <td>Michael Brown</td>
                        <td>Dr. Nguyen</td>
                        <td>2025-03-21</td>
                        <td>Periodontitis</td>
                        <td>Deep Cleaning</td>
                        <td>Patient needs to improve oral hygiene.</td>
                        <td>2025-03-23</td>
                        <td>
                            <a href="#" class="btn btn-action edit" data-toggle="modal" data-target="#viewMedicalRecordModal" onclick="populateViewModal('MR003', 'Michael Brown', 'Dr. Nguyen', '2025-03-21', 'Periodontitis', 'Deep Cleaning', 'Patient needs to improve oral hygiene.')">View</a>
                            <a href="#" class="btn btn-action add" data-toggle="modal" data-target="#editMedicalRecordModal" onclick="populateEditModal('MR003', 'Michael Brown', 'Dr. Nguyen', '2025-03-21', 'Periodontitis', 'Deep Cleaning', 'Patient needs to improve oral hygiene.')">Edit</a>
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

    <!-- Modal for Adding Medical Record -->
    <div class="modal fade" id="addMedicalRecordModal" tabindex="-1" role="dialog" aria-labelledby="addMedicalRecordModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addMedicalRecordModalLabel">Add New Medical Record</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="#" id="addMedicalRecordForm">
                        <div class="form-group">
                            <label for="addPatientName">Patient Name <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="addPatientName" name="patientName" placeholder="Enter patient name" required>
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
                            <label for="addRecordDate">Date <span class="text-danger">*</span></label>
                            <input type="text" class="form-control appointment_date" id="addRecordDate" name="recordDate" placeholder="Select date" required>
                        </div>
                        <div class="form-group">
                            <label for="addDiagnosis">Diagnosis <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="addDiagnosis" name="diagnosis" placeholder="Enter diagnosis" required>
                        </div>
                        <div class="form-group">
                            <label for="addTreatment">Treatment <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="addTreatment" name="treatment" placeholder="Enter treatment" required>
                        </div>
                        <div class="form-group">
                            <label for="addNotes">Notes</label>
                            <textarea class="form-control" id="addNotes" name="notes" rows="3" placeholder="Enter notes"></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Add Record</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for Viewing Medical Record -->
    <div class="modal fade" id="viewMedicalRecordModal" tabindex="-1" role="dialog" aria-labelledby="viewMedicalRecordModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="viewMedicalRecordModalLabel">Medical Record Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p><strong>Record ID:</strong> <span id="viewRecordId"></span></p>
                    <p><strong>Patient Name:</strong> <span id="viewPatientName"></span></p>
                    <p><strong>Doctor Name:</strong> <span id="viewDoctorName"></span></p>
                    <p><strong>Date:</strong> <span id="viewDate"></span></p>
                    <p><strong>Diagnosis:</strong> <span id="viewDiagnosis"></span></p>
                    <p><strong>Treatment:</strong> <span id="viewTreatment"></span></p>
                    <p><strong>Notes:</strong> <span id="viewNotes"></span></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for Editing Medical Record -->
    <div class="modal fade" id="editMedicalRecordModal" tabindex="-1" role="dialog" aria-labelledby="editMedicalRecordModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editMedicalRecordModalLabel">Edit Medical Record</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="#" id="editMedicalRecordForm">
                        <input type="hidden" id="editRecordId" name="recordId">
                        <div class="form-group">
                            <label for="editPatientName">Patient Name <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="editPatientName" name="patientName" placeholder="Enter patient name" required>
                        </div>
                        <div class="form-group">
                            <label for="editDoctorName">Doctor Name <span class="text-danger">*</span></label>
                            <select class="form-control" id="editDoctorName" name="doctorName" required>
                                <option value="Dr. Nguyen">Dr. Nguyen</option>
                                <option value="Dr. Tran">Dr. Tran</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="editRecordDate">Date <span class="text-danger">*</span></label>
                            <input type="text" class="form-control appointment_date" id="editRecordDate" name="recordDate" placeholder="Select date" required>
                        </div>
                        <div class="form-group">
                            <label for="editDiagnosis">Diagnosis <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="editDiagnosis" name="diagnosis" placeholder="Enter diagnosis" required>
                        </div>
                        <div class="form-group">
                            <label for="editTreatment">Treatment <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="editTreatment" name="treatment" placeholder="Enter treatment" required>
                        </div>
                        <div class="form-group">
                            <label for="editNotes">Notes</label>
                            <textarea class="form-control" id="editNotes" name="notes" rows="3" placeholder="Enter notes"></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Update Record</button>
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
        function populateViewModal(recordId, patientName, doctorName, date, diagnosis, treatment, notes) {
            document.getElementById('viewRecordId').textContent = recordId;
            document.getElementById('viewPatientName').textContent = patientName;
            document.getElementById('viewDoctorName').textContent = doctorName;
            document.getElementById('viewDate').textContent = date;
            document.getElementById('viewDiagnosis').textContent = diagnosis;
            document.getElementById('viewTreatment').textContent = treatment;
            document.getElementById('viewNotes').textContent = notes;
        }

        function populateEditModal(recordId, patientName, doctorName, date, diagnosis, treatment, notes) {
            document.getElementById('editRecordId').value = recordId;
            document.getElementById('editPatientName').value = patientName;
            document.getElementById('editDoctorName').value = doctorName;
            document.getElementById('editRecordDate').value = date;
            document.getElementById('editDiagnosis').value = diagnosis;
            document.getElementById('editTreatment').value = treatment;
            document.getElementById('editNotes').value = notes;
        }
    </script>
</body>
</html>