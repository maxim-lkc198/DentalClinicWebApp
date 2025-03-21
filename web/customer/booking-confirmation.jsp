<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>DentaCare - Booking Confirmation</title>
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
        <div class="customer-sidebar">
            <div class="sidebar-brand">DentaCare Customer</div>
            <ul class="sidebar-nav">
                <li><a href="dashboard.jsp">Dashboard</a></li>
                <li class="active"><a href="booking.jsp">Book Appointment</a></li>
                <li><a href="../logout.jsp">Logout</a></li>
            </ul>
        </div>

        <!-- Content -->
        <div class="admin-content customer-content">
            <div class="page-header">
                <h2>Booking Confirmation</h2>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="confirmation-box">
                        <h3>Appointment Booked Successfully!</h3>
                        <p>Thank you for booking with DentaCare. Here are your appointment details:</p>
                        <ul class="list-unstyled">
                            <li><strong>Full Name:</strong> <%= request.getParameter("fullName") %></li>
                            <li><strong>Email:</strong> <%= request.getParameter("email") %></li>
                            <li><strong>Phone:</strong> <%= request.getParameter("phone") %></li>
                            <li><strong>Service:</strong> <%= request.getParameter("service") %></li>
                            <li><strong>Date:</strong> <%= request.getParameter("appointmentDate") %></li>
                            <li><strong>Time:</strong> <%= request.getParameter("appointmentTime") %></li>
                            <li><strong>Message:</strong> <%= request.getParameter("message") != null ? request.getParameter("message") : "N/A" %></li>
                        </ul>
                        <a href="dashboard.jsp" class="btn btn-primary mt-3">Back to Dashboard</a>
                    </div>
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