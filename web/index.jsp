<%-- 
    Document   : index
    Created on : Mar 23, 2025, 4:35:43 PM
    Author     : Maxim
--%>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.sql.*, java.util.*" %>
<%@ page import="dal.ServiceDAO" %>
<%@ page import="model.Service" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dental Clinic Homepage</title>
    <style>
        body { font-family: Arial, sans-serif; }
        .tab { display: none; }
        .tab.active { display: block; }
        .menu { margin-bottom: 20px; }
        .menu button { margin-right: 10px; }
        table { border-collapse: collapse; width: 80%; margin: auto; }
        th, td { border: 1px solid #ccc; padding: 8px; text-align: center; }
        th { background-color: #f4f4f4; }
    </style>
    <script>
        function showTab(tabId) {
            var tabs = document.getElementsByClassName("tab");
            for(var i=0; i<tabs.length; i++){
                tabs[i].classList.remove("active");
            }
            document.getElementById(tabId).classList.add("active");
        }
    </script>
</head>
<body>
    <div class="menu">
        <button onclick="showTab('homeTab')">Home</button>
        <button onclick="showTab('serviceTab')">Services</button>
    </div>

    <!-- Home Tab -->
    <div id="homeTab" class="tab active">
        <h1>Welcome to Dental Clinic</h1>
        <p>Your smile is our success!</p>
        <a href="signup.jsp"><button>Register</button></a>
        <a href="login.jsp"><button>Already have an account? Login</button></a>
    </div>

    <!-- Service Tab -->
    <div id="serviceTab" class="tab">
        <h2>Our Services</h2>
        <%
            // Retrieve services from the database
            ServiceDAO serviceDAO = new ServiceDAO();
            List<Service> services = serviceDAO.getAllServices();
        %>
        <table>
            <tr>
                <th>Service ID</th>
                <th>Service Name</th>
                <th>Price (VND)</th>
            </tr>
            <%
                if(services != null) {
                    for(Service s : services) {
            %>
            <tr>
                <td><%= s.getServiceId() %></td>
                <td><%= s.getServiceName() %></td>
                <td><%= s.getPrice() %></td>
            </tr>
            <%
                    }
                }
            %>
        </table>
    </div>
</body>
</html>
