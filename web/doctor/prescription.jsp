<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>DentaCare - Prescription</title>
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
                <li><a href="medical-record.jsp">Medical Record</a></li>
                <li class="active"><a href="prescription.jsp">Prescription</a></li>
                <li><a href="../logout.jsp">Logout</a></li>
            </ul>
        </div>

        <!-- Content -->
        <div class="admin-content doctor-content">
            <div class="page-header">
                <h2>Prescription</h2>
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

            <!-- Add Prescription Button -->
            <div class="mb-3">
                <a href="#" class="btn btn-action add" data-toggle="modal" data-target="#addPrescriptionModal">Add Prescription</a>
            </div>

            <!-- Prescription Table -->
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Prescription ID</th>
                        <th>Patient Name</th>
                        <th>Doctor Name</th>
                        <th>Date</th>
                        <th>Medication</th>
                        <th>Dosage</th>
                        <th>Duration</th>
                        <th>Notes</th>
                        <th>Last Updated</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>PR001</td>
                        <td>John Doe</td>
                        <td>Dr. Nguyen</td>
                        <td>2025-03-20</td>
                        <td>Paracetamol</td>
                        <td>500mg, 3 times/day</td>
                        <td>5 days</td>
                        <td>Take after meals.</td>
                        <td>2025-03-21</td>
                        <td>
                            <a href="#" class="btn btn-action edit" data-toggle="modal" data-target="#viewPrescriptionModal" onclick="populateViewModal('PR001', 'John Doe', 'Dr. Nguyen', '2025-03-20', 'Paracetamol', '500mg, 3 times/day', '5 days', 'Take after meals.')">View</a>
                            <a href="#" class="btn btn-action add" data-toggle="modal" data-target="#editPrescriptionModal" onclick="populateEditModal('PR001', 'John Doe', 'Dr. Nguyen', '2025-03-20', 'Paracetamol', '500mg, 3 times/day', '5 days', 'Take after meals.')">Edit</a>
                        </td>
                    </tr>
                    <tr>
                        <td>PR002</td>
                        <td>Jane Smith</td>
                        <td>Dr. Tran</td>
                        <td>2025-03-20</td>
                        <td>Amoxicillin</td>
                        <td>250mg, 2 times/day</td>
                        <td>7 days</td>
                        <td>Complete the course.</td>
                        <td>2025-03-22</td>
                        <td>
                            <a href="#" class="btn btn-action edit" data-toggle="modal" data-target="#viewPrescriptionModal" onclick="populateViewModal('PR002', 'Jane Smith', 'Dr. Tran', '2025-03-20', 'Amoxicillin', '250mg, 2 times/day', '7 days', 'Complete the course.')">View</a>
                            <a href="#" class="btn btn-action add" data-toggle="modal" data-target="#editPrescriptionModal" onclick="populateEditModal('PR002', 'Jane Smith', 'Dr. Tran', '2025-03-20', 'Amoxicillin', '250mg, 2 times/day', '7 days', 'Complete the course.')">Edit</a>
                        </td>
                    </tr>
                    <!-- Thêm dữ liệu giả lập để minh họa phân trang -->
                    <tr>
                        <td>PR003</td>
                        <td>Michael Brown</td>
                        <td>Dr. Nguyen</td>
                        <td>2025-03-21</td>
                        <td>Ibuprofen</td>
                        <td>400mg, 2 times/day</td>
                        <td>3 days</td>
                        <td>Take with food.</td>
                        <td>2025-03-23</td>
                        <td>
                            <a href="#" class="btn btn-action edit" data-toggle="modal" data-target="#viewPrescriptionModal" onclick="populateViewModal('PR003', 'Michael Brown', 'Dr. Nguyen', '2025-03-21', 'Ibuprofen', '400mg, 2 times/day', '3 days', 'Take with food.')">View</a>
                            <a href="#" class="btn btn-action add" data-toggle="modal" data-target="#editPrescriptionModal" onclick="populateEditModal('PR003', 'Michael Brown', 'Dr. Nguyen', '2025-03-21', 'Ibuprofen', '400mg, 2 times/day', '3 days', 'Take with food.')">Edit</a>
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

    <!-- Modal for Adding Prescription -->
    <div class="modal fade" id="addPrescriptionModal" tabindex="-1" role="dialog" aria-labelledby="addPrescriptionModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addPrescriptionModalLabel">Add New Prescription</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="#" id="addPrescriptionForm">
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
                            <label for="addPrescriptionDate">Date <span class="text-danger">*</span></label>
                            <input type="text" class="form-control appointment_date" id="addPrescriptionDate" name="prescriptionDate" placeholder="Select date" required>
                        </div>
                        <div class="form-group">
                            <label for="addMedication">Medication <span class="text-danger">*</span></label>
                            <select class="form-control" id="addMedication" name="medication" required>
                                <option value="">Select Medication</option>
                                <option value="Paracetamol">Paracetamol</option>
                                <option value="Amoxicillin">Amoxicillin</option>
                                <option value="Ibuprofen">Ibuprofen</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="addDosage">Dosage <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="addDosage" name="dosage" placeholder="Enter dosage (e.g., 500mg, 3 times/day)" required>
                        </div>
                        <div class="form-group">
                            <label for="addDuration">Duration <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="addDuration" name="duration" placeholder="Enter duration (e.g., 5 days)" required>
                        </div>
                        <div class="form-group">
                            <label for="addNotes">Notes</label>
                            <textarea class="form-control" id="addNotes" name="notes" rows="3" placeholder="Enter notes (e.g., Take after meals)"></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Add Prescription</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for Viewing Prescription -->
    <div class="modal fade" id="viewPrescriptionModal" tabindex="-1" role="dialog" aria-labelledby="viewPrescriptionModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="viewPrescriptionModalLabel">Prescription Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p><strong>Prescription ID:</strong> <span id="viewPrescriptionId"></span></p>
                    <p><strong>Patient Name:</strong> <span id="viewPatientName"></span></p>
                    <p><strong>Doctor Name:</strong> <span id="viewDoctorName"></span></p>
                    <p><strong>Date:</strong> <span id="viewDate"></span></p>
                    <p><strong>Medication:</strong> <span id="viewMedication"></span></p>
                    <p><strong>Dosage:</strong> <span id="viewDosage"></span></p>
                    <p><strong>Duration:</strong> <span id="viewDuration"></span></p>
                    <p><strong>Notes:</strong> <span id="viewNotes"></span></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for Editing Prescription -->
    <div class="modal fade" id="editPrescriptionModal" tabindex="-1" role="dialog" aria-labelledby="editPrescriptionModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editPrescriptionModalLabel">Edit Prescription</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="#" id="editPrescriptionForm">
                        <input type="hidden" id="editPrescriptionId" name="prescriptionId">
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
                            <label for="editPrescriptionDate">Date <span class="text-danger">*</span></label>
                            <input type="text" class="form-control appointment_date" id="editPrescriptionDate" name="prescriptionDate" placeholder="Select date" required>
                        </div>
                        <div class="form-group">
                            <label for="editMedication">Medication <span class="text-danger">*</span></label>
                            <select class="form-control" id="editMedication" name="medication" required>
                                <option value="Paracetamol">Paracetamol</option>
                                <option value="Amoxicillin">Amoxicillin</option>
                                <option value="Ibuprofen">Ibuprofen</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="editDosage">Dosage <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="editDosage" name="dosage" placeholder="Enter dosage (e.g., 500mg, 3 times/day)" required>
                        </div>
                        <div class="form-group">
                            <label for="editDuration">Duration <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="editDuration" name="duration" placeholder="Enter duration (e.g., 5 days)" required>
                        </div>
                        <div class="form-group">
                            <label for="editNotes">Notes</label>
                            <textarea class="form-control" id="editNotes" name="notes" rows="3" placeholder="Enter notes (e.g., Take after meals)"></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Update Prescription</button>
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
        function populateViewModal(prescriptionId, patientName, doctorName, date, medication, dosage, duration, notes) {
            document.getElementById('viewPrescriptionId').textContent = prescriptionId;
            document.getElementById('viewPatientName').textContent = patientName;
            document.getElementById('viewDoctorName').textContent = doctorName;
            document.getElementById('viewDate').textContent = date;
            document.getElementById('viewMedication').textContent = medication;
            document.getElementById('viewDosage').textContent = dosage;
            document.getElementById('viewDuration').textContent = duration;
            document.getElementById('viewNotes').textContent = notes;
        }

        function populateEditModal(prescriptionId, patientName, doctorName, date, medication, dosage, duration, notes) {
            document.getElementById('editPrescriptionId').value = prescriptionId;
            document.getElementById('editPatientName').value = patientName;
            document.getElementById('editDoctorName').value = doctorName;
            document.getElementById('editPrescriptionDate').value = date;
            document.getElementById('editMedication').value = medication;
            document.getElementById('editDosage').value = dosage;
            document.getElementById('editDuration').value = duration;
            document.getElementById('editNotes').value = notes;
        }
    </script>
</body>
</html>