<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>DentaCare - Receptionist Dashboard</title>
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
                <li class="active"><a href="dashboard.jsp">Dashboard</a></li>
                <li><a href="appointment-management.jsp">Appointment Management</a></li>
                <li><a href="customer-management.jsp">Customer Management</a></li>
                <li><a href="invoice.jsp">Invoice</a></li>
                <li><a href="../logout.jsp">Logout</a></li>
            </ul>
        </div>

        <!-- Content -->
        <div class="admin-content receptionist-content">
            <div class="page-header">
                <h2>Receptionist Dashboard</h2>
            </div>

            <!-- Thống kê nhanh -->
            <div class="row">
                <div class="col-md-4">
                    <div class="card text-white bg-primary mb-3">
                        <div class="card-body">
                            <h5 class="card-title">Today's Appointments</h5>
                            <p class="card-text">5</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card text-white bg-success mb-3">
                        <div class="card-body">
                            <h5 class="card-title">New Customers</h5>
                            <p class="card-text">3</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card text-white bg-info mb-3">
                        <div class="card-body">
                            <h5 class="card-title">Pending Invoices</h5>
                            <p class="card-text">2</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Lịch hẹn hôm nay -->
            <div class="row mt-4">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <h5>Today's Appointments</h5>
                        </div>
                        <div class="card-body">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Customer</th>
                                        <th>Doctor</th>
                                        <th>Time</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Customer One</td>
                                        <td>Dr. Nguyen</td>
                                        <td>09:00 - 09:30</td>
                                        <td>Confirmed</td>
                                    </tr>
                                    <tr>
                                        <td>Customer Two</td>
                                        <td>Dr. Tran</td>
                                        <td>10:00 - 10:45</td>
                                        <td>Pending</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Liên kết nhanh -->
            <div class="row mt-4">
                <div class="col-md-12">
                    <h5>Quick Actions</h5>
                    <a href="${pageContext.request.contextPath}/receptionist/appointment-management.jsp" class="btn btn-action add mr-2">Manage Appointments</a>
                    <a href="${pageContext.request.contextPath}/receptionist/customer-management.jsp" class="btn btn-action edit mr-2">Manage Customers</a>
                    <a href="${pageContext.request.contextPath}/receptionist/invoice.jsp" class="btn btn-action delete">Create Invoice</a>
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
</body>
</html>