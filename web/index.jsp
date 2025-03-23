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
        body {
            font-family: sans-serif;
            background-color: #f0f2f5;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }

        .container {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 80%;
            max-width: 600px;
        }

        .menu {
            display: flex;
            justify-content: center;
            margin-bottom: 30px;
        }

        .menu button {
            background-color: #1da1f2;
            color: white;
            border: none;
            padding: 10px 15px;
            margin: 0 10px;
            border-radius: 20px;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .menu button:hover {
            background-color: #0c85d0;
        }

        .tab {
            display: none;
        }

        .tab.active {
            display: block;
        }

        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #e9f5fe;
            font-weight: bold;
        }

        /* Style for the Home Tab */
        #homeTab h1 {
            color: #1da1f2;
            margin-bottom: 10px;
        }

        #homeTab p.tagline { /* Apply style to the tagline paragraph */
            color: #36454F; /* Use Twitter blue for emphasis */
            font-size: 1.5em; /* Slightly larger font size */
            font-style: italic; /* Add italics for a touch of elegance */
            margin-bottom: 25px;
            font-weight: bold; /* Make it a bit bolder */
        }

        #homeTab a {
            text-decoration: none;
            margin: 0 10px;
        }

        #homeTab a button {
            background-color: #17bf63;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 25px;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        #homeTab a button:hover {
            background-color: #129b4d;
        }

        #homeTab .login-link {
            color: #1da1f2;
            text-decoration: none;
            font-weight: bold;
        }

        #homeTab .login-link:hover {
            text-decoration: underline;
        }

        #homeTab p.login-prompt {
            margin-top: 15px;
            color: #657786;
        }
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
    <div class="container">
        <div class="menu">
            <button onclick="showTab('homeTab')">Home</button>
            <button onclick="showTab('serviceTab')">Services</button>
        </div>

        <div id="homeTab" class="tab active">
            <h1>Welcome to Dental Clinic</h1>
            <p class="tagline">Your smile is our success!</p>
            <a href="signup.jsp"><button>Register</button></a>
            <p class="login-prompt">Already have an account? <a href="login.jsp" class="login-link">Login</a></p>
        </div>

        <div id="serviceTab" class="tab">
            <h2>Our Services</h2>
            <%
                // Retrieve services from the database
                ServiceDAO serviceDAO = new ServiceDAO();
                List<Service> services = serviceDAO.getAllServices();
            %>
            <table>
                <thead>
                    <tr>
                        <th>Service ID</th>
                        <th>Service Name</th>
                        <th>Price (VND)</th>
                    </tr>
                </thead>
                <tbody>
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
                        } else {
                    %>
                        <tr><td colspan="3">No services available.</td></tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>