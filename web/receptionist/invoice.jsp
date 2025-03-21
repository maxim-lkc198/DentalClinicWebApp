<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>DentaCare - Invoice</title>
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
                <li><a href="customer-management.jsp">Customer Management</a></li>
                <li class="active"><a href="invoice.jsp">Invoice</a></li>
                <li><a href="../logout.jsp">Logout</a></li>
            </ul>
        </div>

        <!-- Content -->
        <div class="admin-content receptionist-content">
            <div class="page-header">
                <h2>Invoice</h2>
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
                        <option value="Paid">Paid</option>
                        <option value="Unpaid">Unpaid</option>
                    </select>
                </div>
                <div class="col-md-4">
                    <input type="text" class="form-control appointment_date" id="dateFilter" placeholder="Filter by Date">
                </div>
            </div>

            <!-- Create Invoice Button -->
            <div class="mb-3">
                <a href="#" class="btn btn-action add" data-toggle="modal" data-target="#createInvoiceModal">Create Invoice</a>
            </div>

            <!-- Invoice Table -->
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Invoice ID</th>
                        <th>Customer Name</th>
                        <th>Date</th>
                        <th>Service</th>
                        <th>Total Amount</th>
                        <th>Status</th>
                        <th>Notes</th>
                        <th>Created Date</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>INV001</td>
                        <td>John Doe</td>
                        <td>2025-03-20</td>
                        <td>Teeth Whitening</td>
                        <td>$50.00</td>
                        <td><span class="badge badge-success">Paid</span></td>
                        <td>Payment via credit card.</td>
                        <td>2025-03-20</td>
                        <td>
                            <a href="#" class="btn btn-action edit" data-toggle="modal" data-target="#viewInvoiceModal" onclick="populateViewModal('INV001', 'John Doe', '2025-03-20', 'Teeth Whitening', '$50.00', 'Paid', 'Payment via credit card.')">View</a>
                            <a href="#" class="btn btn-action delete" onclick="confirmDelete('INV001')">Delete</a>
                        </td>
                    </tr>
                    <tr>
                        <td>INV002</td>
                        <td>Jane Smith</td>
                        <td>2025-03-20</td>
                        <td>Teeth Cleaning</td>
                        <td>$75.00</td>
                        <td><span class="badge badge-danger">Unpaid</span></td>
                        <td>Pending payment.</td>
                        <td>2025-03-20</td>
                        <td>
                            <a href="#" class="btn btn-action edit" data-toggle="modal" data-target="#viewInvoiceModal" onclick="populateViewModal('INV002', 'Jane Smith', '2025-03-20', 'Teeth Cleaning', '$75.00', 'Unpaid', 'Pending payment.')">View</a>
                            <a href="#" class="btn btn-action delete" onclick="confirmDelete('INV002')">Delete</a>
                        </td>
                    </tr>
                    <!-- Thêm dữ liệu giả lập để minh họa phân trang -->
                    <tr>
                        <td>INV003</td>
                        <td>Michael Brown</td>
                        <td>2025-03-21</td>
                        <td>Quality Brackets</td>
                        <td>$150.00</td>
                        <td><span class="badge badge-success">Paid</span></td>
                        <td>Payment via cash.</td>
                        <td>2025-03-21</td>
                        <td>
                            <a href="#" class="btn btn-action edit" data-toggle="modal" data-target="#viewInvoiceModal" onclick="populateViewModal('INV003', 'Michael Brown', '2025-03-21', 'Quality Brackets', '$150.00', 'Paid', 'Payment via cash.')">View</a>
                            <a href="#" class="btn btn-action delete" onclick="confirmDelete('INV003')">Delete</a>
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

    <!-- Modal for Creating Invoice -->
    <div class="modal fade" id="createInvoiceModal" tabindex="-1" role="dialog" aria-labelledby="createInvoiceModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="createInvoiceModalLabel">Create New Invoice</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="#" id="createInvoiceForm">
                        <div class="form-group">
                            <label for="createCustomerName">Customer Name <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="createCustomerName" name="customerName" placeholder="Enter customer name" required>
                        </div>
                        <div class="form-group">
                            <label for="createInvoiceDate">Date <span class="text-danger">*</span></label>
                            <input type="text" class="form-control appointment_date" id="createInvoiceDate" name="invoiceDate" placeholder="Select date" required>
                        </div>
                        <div class="form-group">
                            <label for="createService">Service <span class="text-danger">*</span></label>
                            <select class="form-control" id="createService" name="service" required onchange="updateTotalAmount()">
                                <option value="">Select Service</option>
                                <option value="Teeth Whitening" data-price="24.50">Teeth Whitening - $24.50</option>
                                <option value="Teeth Cleaning" data-price="34.50">Teeth Cleaning - $34.50</option>
                                <option value="Quality Brackets" data-price="150.00">Quality Brackets - $150.00</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="createTotalAmount">Total Amount <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="createTotalAmount" name="totalAmount" placeholder="Total amount will be auto-filled" readonly required>
                        </div>
                        <div class="form-group">
                            <label for="createStatus">Status <span class="text-danger">*</span></label>
                            <select class="form-control" id="createStatus" name="status" required>
                                <option value="Paid">Paid</option>
                                <option value="Unpaid">Unpaid</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="createNotes">Notes</label>
                            <textarea class="form-control" id="createNotes" name="notes" rows="3" placeholder="Enter notes (e.g., payment method)"></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Create Invoice</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for Viewing Invoice -->
    <div class="modal fade" id="viewInvoiceModal" tabindex="-1" role="dialog" aria-labelledby="viewInvoiceModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="viewInvoiceModalLabel">Invoice Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p><strong>Invoice ID:</strong> <span id="viewInvoiceId"></span></p>
                    <p><strong>Customer Name:</strong> <span id="viewCustomerName"></span></p>
                    <p><strong>Date:</strong> <span id="viewDate"></span></p>
                    <p><strong>Service:</strong> <span id="viewService"></span></p>
                    <p><strong>Total Amount:</strong> <span id="viewTotalAmount"></span></p>
                    <p><strong>Status:</strong> <span id="viewStatus"></span></p>
                    <p><strong>Notes:</strong> <span id="viewNotes"></span></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
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

    <!-- Custom Script for Modals and Delete Confirmation -->
    <script>
        function populateViewModal(invoiceId, customerName, date, service, totalAmount, status, notes) {
            document.getElementById('viewInvoiceId').textContent = invoiceId;
            document.getElementById('viewCustomerName').textContent = customerName;
            document.getElementById('viewDate').textContent = date;
            document.getElementById('viewService').textContent = service;
            document.getElementById('viewTotalAmount').textContent = totalAmount;
            document.getElementById('viewStatus').textContent = status;
            document.getElementById('viewNotes').textContent = notes;
        }

        function confirmDelete(invoiceId) {
            if (confirm('Are you sure you want to delete this invoice (ID: ' + invoiceId + ')?')) {
                // Logic to delete the invoice (e.g., redirect to a servlet or send an AJAX request)
                alert('Invoice with ID ' + invoiceId + ' has been deleted.');
            }
        }

        function updateTotalAmount() {
            var serviceSelect = document.getElementById('createService');
            var totalAmountInput = document.getElementById('createTotalAmount');
            var selectedOption = serviceSelect.options[serviceSelect.selectedIndex];
            var price = selectedOption.getAttribute('data-price');
            if (price) {
                totalAmountInput.value = '$' + parseFloat(price).toFixed(2);
            } else {
                totalAmountInput.value = '';
            }
        }
    </script>
</body>
</html>