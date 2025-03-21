<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>DentaCare - Admin Dashboard</title>
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
                <li class="active"><a href="dashboard.jsp">Dashboard</a></li>
                <li><a href="user-management.jsp">User Management</a></li>
                <li><a href="service-management.jsp">Service Management</a></li>
                <li><a href="medication-management.jsp">Medication Management</a></li>
                <li><a href="../logout.jsp">Logout</a></li>
            </ul>
        </div>

        <!-- Content -->
        <div class="admin-content">
            <div class="page-header">
                <h2>Admin Dashboard</h2>
            </div>

            <!-- Thống kê nhanh -->
            <div class="row">
                <div class="col-md-3">
                    <div class="card text-white bg-primary mb-3">
                        <div class="card-body">
                            <h5 class="card-title">Total Users</h5>
                            <p class="card-text">150</p> <!-- Giả lập số liệu, thay bằng dữ liệu thực từ backend -->
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card text-white bg-success mb-3">
                        <div class="card-body">
                            <h5 class="card-title">Total Services</h5>
                            <p class="card-text">10</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card text-white bg-warning mb-3">
                        <div class="card-body">
                            <h5 class="card-title">Total Medications</h5>
                            <p class="card-text">20</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card text-white bg-info mb-3">
                        <div class="card-body">
                            <h5 class="card-title">Total Revenue</h5>
                            <p class="card-text">50,000,000 VND</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Thông báo -->
            <div class="row mt-4">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <h5>Notifications</h5>
                        </div>
                        <div class="card-body">
                            <ul class="list-group">
                                <li class="list-group-item">New user registered: Customer One</li>
                                <li class="list-group-item">Medication stock low: Amoxicillin (10 units left)</li>
                                <li class="list-group-item">Service updated: Tẩy trắng răng</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Liên kết nhanh -->
            <div class="row mt-4">
                <div class="col-md-12">
                    <h5>Quick Actions</h5>
                    <a href="${pageContext.request.contextPath}/admin/user-management.jsp" class="btn btn-action add mr-2">Manage Users</a>
                    <a href="${pageContext.request.contextPath}/admin/service-management.jsp" class="btn btn-action edit mr-2">Manage Services</a>
                    <a href="${pageContext.request.contextPath}/admin/medication-management.jsp" class="btn btn-action delete">Manage Medications</a>
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